#define MAIN
#include "cardinal_CPU2_A1.h"
#include "defs.h"
#include "data.h"
#include "access.h"
#include "eeprom.h"
#include "hinit.h"
#include "host.h"
#include "strap.h"
#include "boot.h"
#include "crc32.h"
#include "helper.h"
#include "usb.h"
#include "timing.h"
#include "setup_uart.h"
#include "xmodem.h"
#include "utils.h"

#define bit(x)                  ((u32)(1UL << x))

extern u32 ada_counter;
u8 UART_BUFFER[256]; // buffers.c & scatter.scf
u8 UART_TX_BUFFER[32];
u32 rptr;
u32 wptr;

u32 g_uart_timeout = NAK_TIMEOUT_VAL_MILLISEC;

#define POLYNOMIAL 0x04c11db7L

unsigned long crc_table[256];

/* generate the table of CRC remainders for all possible bytes */
void
gen_crc_table()
{
    int i, j;
    unsigned long crc_accum;
    for(i=0; i < 256; i++) {
	crc_accum = ((unsigned long) i << 24);
	for(j=0;  j < 8;  j++) {
	    if (crc_accum & 0x80000000L) {
		crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
	    } else {
		crc_accum = (crc_accum << 1);
	    }
	}
	crc_table[i] = crc_accum;
    }
    return;
}
/* update the CRC on the data block one byte at a time */
unsigned long
update_crc(unsigned long crc_accum, char *data_blk_ptr, int data_blk_size)
{
    int i, j;
    if(g_CRC32) {
	for(j = 0; j < data_blk_size; j++) {
	    i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xff;
	    crc_accum = (crc_accum << 8) ^ crc_table[i];
	}
    }
    return crc_accum;
}

int
wait_n_milliseconds(u32 milliseconds, int (*funcp)(void))
{
    s16 was;
    s16 curr;
    s16 gap;
    was = ada_counter;
    do {
	curr = ada_counter;
	gap = (was - curr);
	if(gap < 0) {
	    gap = -gap;
	}
	if(funcp) {
	    if(funcp()) {
		return 1;
	    }
	}
    } while(gap < milliseconds);
    return 0;
}
/*
 *
 */
s16
curr_millisecond_time()
{
    return ada_counter;
}
/*
 *
 */
s16
millisecond_gap(s16 gap)
{
    s16 curr;
    curr = ada_counter;
    gap = (gap - curr);
    if(gap < 0) {
	gap = -gap;
    }
    return gap;
}

u32
is_tx_ready()
{
    return REG32(0x4001381c) & (1<<6);
}
u32
is_rx_ready()
{
    return REG32(0x4001381c) & (1<<5);
}
void
put(u8 c)
{
    while(!is_tx_ready());
    REG32(0x40013828) = c;
}
u8
get(void)
{
    return REG32(0x40013824);
}

int
early_out()
{
    if(REG32(0x4001381c) & (1<<5)) {
	return 1;
    } else {
	return 0;
    }
}

extern s32
getchar_no_waiting( u8 *pu8c )
{
    if(early_out()) {
	*pu8c = REG32(0x40013824);
	return OK;
    } else {
	return FAIL;
    }
}

extern void
putchar_no_waiting( u8 u8c )
{
    UART_TX_BUFFER[wptr++] = u8c;
}
void
uart_write2(u32 val)
{
    int i;
    union {
	u8  c[4];
	u32    x;
    } u;
    u.x = val;
    for(i=0;i < 2;i++) {
	putchar_no_waiting(u.c[i]);
    }
}

// This code is to execute firmware download command.
// The firmware image is read from host memory and write to SQ RAM,
// then load into I-SRAM



enum {HDR_START=1, HDR_START_ACK, NEED_HDR, BLOCK_COPY,
      BLOCK_COPY_END, BLOCK_COPY_END_ACK, CRC_FAIL1, CRC_FAIL1_ACK,
      HDR_PARSE, HDR_PARSE_ACK, NEED_BLOCK, CRC_FAIL2,
      CRC_FAIL2_ACK, GOT_ENTRY, GOT_ENTRY_ACK, GOT_ENTRY2,
      HELPER_IDLE, NEED_CMD5, HDR_PARSE_CMD5_ACK, CMD5_COPY,
      CMD5_COPY_END, CMD5_COPY_END_ACK
};

HEADER packetheader;

u8 poll_order[HOST_BITS]={
HOST_SD0,
HOST_SD1,
HOST_SD2,
HOST_SD3,
HOST_UART,
};

u8 *
uart_poll(u32 mode, u32 *timeout)
{
    // See how many are needed
    static u32 first = 1;
    static u32 want_len;
    static u8  *buffer;
    static u32 pos;
    static s16 prev_gap;

    s16 gap;
    u8 c;

    *timeout = 0;

    if(first) { // initial time here (will happen every new len)
        want_len = g_len[mode];
        buffer = (u8 *)UART_BUFFER;
        pos = 0;
        prev_gap = curr_millisecond_time();
        first = 0;
    }
#if 1
    gap = millisecond_gap(prev_gap);
    if(gap >= g_uart_timeout) {
        *timeout = 1;
        first = 1;
        return 0;
    }
#endif
    while(OK == getchar_no_waiting(&c)) {
        prev_gap = curr_millisecond_time(); // Reset the time
        buffer[pos] = c;
        pos++;
        if(pos == want_len) {
            first = 1;
            return buffer;
        }
    }
    return 0;
}
void
next_state_uart(u32 mode, u32 next_state, u32 *act_next_state)
{
    u32 curr_state;
    curr_state = g_helper_state[mode];
    switch(curr_state) {
    case HDR_START:
        *act_next_state = HDR_START_ACK;
        break;
    case HDR_PARSE:
        // Ugly peeking into the hdr for these two
        if(g_cmd[mode] == ROM_BLOCK_COPY) {
            *act_next_state = HDR_PARSE_ACK;
        } else if(g_cmd[mode] == ROM_CMD5) {
            *act_next_state = HDR_PARSE_CMD5_ACK;
        } else {
            *act_next_state = HDR_START;
        }
        break;
    case CRC_FAIL1:
        *act_next_state = CRC_FAIL1_ACK;
        break;
    case NEED_BLOCK:
        *act_next_state = CRC_FAIL2;
        break;
    case GOT_ENTRY:
        *act_next_state = GOT_ENTRY_ACK;
        break;
    case CRC_FAIL2:
        *act_next_state = CRC_FAIL2_ACK;
        break;
    case BLOCK_COPY_END:
        *act_next_state = BLOCK_COPY_END_ACK;
        break;
    case CMD5_COPY_END:
        *act_next_state = CMD5_COPY_END_ACK;
        break;
    }
}
void
uart_scratch_wr(u32 mode, u32 scratch_val, u32 next_state, u32 *act_next_state)
{
    u8  c;
    u32 curr_state;
//    uart_clear_fifos();
    wptr = 0;
    rptr = 0;
    putchar_no_waiting(0xa5 ^ g_uartModifier);       // Signal we are sending len
    scratch_val |= g_uart_err;
    uart_write2(scratch_val);   // Send 2 LSB's
    uart_write2(~scratch_val);  // And the complement for error checking
    // Check for incoming char
    curr_state = g_helper_state[mode];
    if(getchar_no_waiting(&c) != FAIL) {
        if(c == 0x5a) { // Acceptable length ack from host.
            g_uart_err = 0;
            *act_next_state = next_state;
            return;
        } else {
            *act_next_state = curr_state;
        }
    } else { // Nothing there yet
        next_state_uart(mode, next_state, act_next_state);
    }
}
void
uart_ack(u32 mode)
{
}
u8 *
req_bytes_polled(u32 mode, u32 want, u32 next_state, u32 *act_next_state)
{
    u32       timeout;
    u32         crc=0;
    u8         *ptr;
    int curr_state;
    curr_state = g_helper_state[mode];
    want &= ~1; // Knock of oddness
    ptr = uart_poll(mode, &timeout);
    if(ptr) {
        crc = update_crc(0, (char *)ptr, want);
        g_last_pkt_crc[mode] = crc;
        if(crc) { // Good CRC is == 0...
            if(curr_state == NEED_HDR) {
                *act_next_state = CRC_FAIL1;
                return 0;
            } else { // NEED_BLOCK state
                *act_next_state = CRC_FAIL2;
                return 0;
            }
        } else {
            *act_next_state = next_state;
            return ptr;
        }
    } else {
        if(timeout) { // Only UART
            g_uart_err = 1;
            if(curr_state == NEED_HDR) {
                *act_next_state = HDR_START;
            } else {
                *act_next_state = HDR_PARSE;
            }
        }
        return 0;
    }
}
// Wait for UART ack on len just sent.
void
check_uart_char(u32 mode, u32 pass, u32 fail, u32 restart)
{
    static s16 prev_gap;
    static u32 first = 1;
    s16        gap;
    u8         c;

    if(first) {
        prev_gap = curr_millisecond_time();
        first = 0;
    }
#if 1
    gap = millisecond_gap(prev_gap);
    if(gap >= g_uart_timeout) {
        g_helper_state[mode] = restart;
        first = 1;
        return;
    }
#endif
    if(getchar_no_waiting(&c) != FAIL) {
        if(c == 0x5a) { // Acceptable length ack from host.
            first = 1;
            g_uart_err = 0;
            g_helper_state[mode] = pass;
        } else {
            g_helper_state[mode] = fail;
        }
    }
}

void
uart_helper()
{
    static u32                  mode = 0;
    static u32                      done;
    static u32               entry_point;
    static u32          first = 1;
    static HEADER    *hdr[HOST_BITS];
    static u8        *ptr[HOST_BITS];
    int                         i;
    if(first) {
	g_winner = 0;
	g_uart_err = 0;
	entry_point = 0; // Compiler warning (poss use before set)

	g_CRC32 = 1;
	gen_crc_table();
	done = 0;
	{
	    int i;
	    for(i=1;(i < HOST_BITS);i++) {
		g_helper_state[i] = HDR_START;
		g_last_pkt_crc[i] = 0; // 0 unless it failed
	    }
	}
	first = 0;
    }
    if(is_tx_ready()) {
	if(rptr != wptr) {
	    put(UART_TX_BUFFER[rptr]);
	    rptr++;
	    rptr &= 0x1f;
	}
    }
    mode = HOST_UART;
    switch(g_helper_state[mode]) {
    case HDR_START:
	g_len[mode] = sizeof(HEADER);
	uart_scratch_wr(mode, g_len[mode], NEED_HDR, &g_helper_state[mode]);
	break;
    case HDR_START_ACK: // Solely for uart helper...
	check_uart_char(mode, NEED_HDR, HDR_START, HDR_START);
	break;
    case NEED_HDR:
	hdr[mode] = (HEADER *)req_bytes_polled(mode, g_len[mode], HDR_PARSE, &g_helper_state[mode]);
	if(hdr[mode]) {
	    g_len[mode] = hdr[mode]->length;
	    g_pos[mode] = hdr[mode]->base_addr;
	    g_cmd[mode] = hdr[mode]->cmd;
	}
	break;
    case CRC_FAIL1:
	// Notify host to resend
	uart_scratch_wr(mode, g_len[mode] | 1, NEED_HDR, &g_helper_state[mode]);
	uart_ack(mode);
	break;
    case CRC_FAIL1_ACK:
	check_uart_char(mode, NEED_HDR, CRC_FAIL1, HDR_START);
	break;
    case HDR_PARSE:
	if(g_cmd[mode] == ROM_BLOCK_COPY) {
	    uart_scratch_wr(mode, g_len[mode], NEED_BLOCK, &g_helper_state[mode]);
	    uart_ack(mode);
	} else if(g_cmd[mode] == ROM_CMD5) {
	    uart_scratch_wr(mode, g_len[mode], NEED_CMD5, &g_helper_state[mode]);
	    uart_ack(mode);
	} else if(g_cmd[mode] == ROM_ENTRY) {
	    g_helper_state[mode] = GOT_ENTRY;
	} else if(g_cmd[mode] == ROM_ENTRY_CPU2) {
	    g_helper_state[mode] = GOT_ENTRY;
	} else {
	    g_len[mode] = sizeof(HEADER);
	    uart_scratch_wr(mode, g_len[mode], NEED_HDR, &g_helper_state[mode]);
	    uart_ack(mode);
	}
	break;
    case HDR_PARSE_ACK:
	check_uart_char(mode, NEED_BLOCK, HDR_PARSE, HDR_START);
	break;
    case HDR_PARSE_CMD5_ACK:
	check_uart_char(mode, NEED_CMD5, HDR_PARSE, HDR_START);
	break;
    case NEED_BLOCK:
	ptr[mode] = req_bytes_polled(mode, g_len[mode], BLOCK_COPY, &g_helper_state[mode]);
	break;
    case NEED_CMD5:
	ptr[mode] = req_bytes_polled(mode, g_len[mode], CMD5_COPY, &g_helper_state[mode]);
	break;
    case CRC_FAIL2:
	// Notify host to resend
	uart_scratch_wr(mode, g_len[mode] | 1, NEED_BLOCK, &g_helper_state[mode]);
	uart_ack(mode);
	break;
    case CRC_FAIL2_ACK:
	check_uart_char(mode, NEED_BLOCK, CRC_FAIL2, HDR_PARSE);
	break;
    case BLOCK_COPY:
	// Copy to final spot
	if(g_winner == mode) {
	    memcpy((void *)g_pos[mode], (void *)ptr[mode], g_len[mode] - 4);
	}
	g_helper_state[mode] = BLOCK_COPY_END;
	break;
    case BLOCK_COPY_END:
	g_len[mode] = sizeof(HEADER);
	uart_scratch_wr(mode, g_len[mode], NEED_HDR, &g_helper_state[mode]);
	uart_ack(mode);
	break;
    case BLOCK_COPY_END_ACK:
	check_uart_char(mode, NEED_HDR, BLOCK_COPY_END, HDR_PARSE);
	break;
    case CMD5_COPY:
	// Perform CMD5 pokes
	if(g_winner == mode) {
	    u32 *lwp;
	    u32 paircount;
	    // ptr[mode] now has the poke block
	    lwp = (u32 *)ptr[mode];
	    paircount = (g_len[mode] - 4) / 8; // Less 4 for the CRC
	    for(i=0;i < paircount;i++) {
		u32 address;
		u32 value;
		address = *lwp++;
		value   = *lwp++;
//		poke(address, value);
	    }
	}
	g_helper_state[mode] = CMD5_COPY_END;
	break;
    case CMD5_COPY_END:
	g_len[mode] = sizeof(HEADER);
	uart_scratch_wr(mode, g_len[mode], NEED_HDR, &g_helper_state[mode]);
	uart_ack(mode);
	break;
    case CMD5_COPY_END_ACK:
	check_uart_char(mode, NEED_HDR, CMD5_COPY_END, HDR_PARSE);
	break;
    case GOT_ENTRY:
	uart_scratch_wr(mode, 0, GOT_ENTRY2, &g_helper_state[mode]); // No more needed
	/* Ack host header packet received */
	uart_ack(mode);
	break;
    case GOT_ENTRY_ACK:
	check_uart_char(mode, GOT_ENTRY2, GOT_ENTRY, HDR_PARSE);
	break;
    case GOT_ENTRY2:
	g_ifDone |= bit(i);
	if(g_winner == mode) { // Don't break out unless its the winner
	    entry_point = g_pos[mode];
	    g_ifStart = 1;
	}
	g_len[mode] = sizeof(HEADER);
	uart_scratch_wr(mode, g_len[mode], NEED_HDR, &g_helper_state[mode]);
	uart_ack(mode);
	break;
    case HELPER_IDLE: //  spin. we were not the winner
	break;
    default: // We are here with an invalid cmd (crc might be good tho).
	for(;;); // Can't be here really with valid input. unless its an unhandled cmd
    }
}
