/******************** (c) Marvell Semiconductor, Inc., 2002 *******************
 *
 * $Header: /mp/matar4_2/condor/mrvl/matar4/condor/condorh/sos_dir/condor.rep/TEMP/hrainnie_1344895167/top_cardiac0#boot_CPU2_A1#sim#test#src#setup_uart.h,v 1.1 2013-11-15 18:00:32-08 hrainnie Exp $
 *
 * Purpose:
 *    This file contains the function prototypes and definitions for the
 *    UART setup code.
 *
 * Public Procedures:
 *    getchar                 Read a char from the 16550 UART block.
 *                            When one is avail.
 *    putchar                 Write a u8 to the 16550.
 *    setup_uart              Prepare the 16550 for 38400 NP 1stop also
 *                            set the pin mux to UART from USB
 *
 * Notes:
 *    None.
 *
 *****************************************************************************/

#ifndef _SETUP_UART_H_
#define _SETUP_UART_H_

//=============================================================================
//                                DEFINITIONS
//=============================================================================
#define Rx_BUFFER_REG		(UART_BASE + (4*0))
#define Tx_HOLDING_REG		(UART_BASE + (4*0))
#define DIVISOR_LOW		(UART_BASE + (4*0)) /* When LINE_CONTROL[7] == 1 */
#define IRQ_ENABLE		(UART_BASE + (4*1))
#define DIVISOR_HIGH		(UART_BASE + (4*1)) /* When LINE_CONTROL[7] == 1 */
#define IRQ_STATUS		(UART_BASE + (4*2))
#define FCR			(UART_BASE + (4*2))
#define LINE_CONTROL		(UART_BASE + (4*3))
#define  DLAB 			bit(7)		    /* turns on access to baud rate divisor */
#define  ASSERT_BREAK	        bit(6)
#define  STICKY_PARITY		bit(5)
#define  EPS 			bit(4)
#define  PEN 			bit(3)
#define  TWO_STOP_BITS		bit(2)
#define  FIVE_BIT	        0
#define  SIX_BIT	        bit(0)
#define  SEVEN_BIT	        bit(1)
#define  EIGHT_BIT	        (bit(1) | bit(0))

#define MODEM_CONTROL		(UART_BASE + (4*4))
#define LINE_STATUS		(UART_BASE + (4*5))
#define  Rx_FIFO_ERROR		bit(7)
#define  Tx_EMPTY		bit(6)
#define  Tx_HOLD_EMPTY		bit(5)
#define  BREAK_DETECT		bit(4)
#define  FRAMING_ERROR		bit(3)
#define  PARITY_ERROR		bit(2)
#define  OVERRUN_ERROR		bit(1)
#define  DATA_READY		bit(0)
#define MODEM_STATUS		(UART_BASE + (4*6))
#define SCRATCH_REG		(UART_BASE + (4*7))

#define CPU_SPEED    		44E6         // Make SURE this is correct!!!
//#define SERIAL_SPEED  		29.33333E6   // Make SURE this is correct!!!
// This # was deduced from a waveform. Bluejay has a new baudrate clock generator.
#define SERIAL_SPEED  		64E6   // Make SURE this is correct!!!

/* retry loops before we resend the NAK. 5sec. */
/* 650e-9 is the delay time of the read loop */
//#define NAK_TIMEOUT_VAL    	(s32)((5.0 / (650.0e-9 * 65536.0)) + 0.5)

//#define NAK_TIMEOUT_VAL_MILLISEC   	(100)
#define NAK_TIMEOUT_VAL_MILLISEC   	(2000)
//#define NAK_TIMEOUT_VAL_MILLISEC   	(5000)

#define BAUDRATE     		115200
/* Check here. If 8Mhz && 38400 -> DIV :=: 13 */
#define BAUDRATE_DIV 		( (SERIAL_SPEED / (16 * BAUDRATE)) + 0.5)

//=============================================================================
//                    PUBLIC PROCEDURES (ANSI Prototypes)
//=============================================================================
/******************************************************************************
 *
 * Name: getchar
 *
 * Description:
 *   Return the next char available on UART receive. If no char is
 *   ready, it will wait. Should no char still come after a timeout
 *   passes, then return back to the   uart_boot() code and NAK the
 *   packet.
 *
 * Conditions For Use:
 *   GPIO Clock should be enabled before attempting to use. (In PAU).
 *
 * Arguments:
 *   Arg1( u16 ): 16 bits of data to appear at the pins.
 *
 * Return Value:
 *   None.
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
extern s32 getchar( u8 *pu8c );

/******************************************************************************
 *
 * Name: putchar
 *
 * Description:
 *   Put a char into the UART transmit buffer. Wait until that buffer
 *   is ready. No timeout here, assume we can always be ready to send
 *   after a wait.
 *
 * Conditions For Use:
 *   GPIO Clock should be enabled before attempting to use. (In PAU).
 *
 * Arguments:
 *   Arg1( u8 ): 8 bits of data to be placed in the 16550 xmit buffer.
 *
 * Return Value:
 *   None.
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
extern void putchar( u8 u8c );

/******************************************************************************
 *
 * Name: setup_uart
 *
 * Description:
 *   Place the 16550 into a useable state for us. This means the the
 *   baud rate needs to be 38400, no parity, one stop bit. Also the
 *   pad mux needs to get flipped from the default of USB to UART.
 *
 * Conditions For Use:
 *   None.
 *
 * Arguments:
 *   None.
 *
 * Return Value:
 *   None.
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
extern void setup_uart( void );

/******************************************************************************
 *
 * Name: early_out
 *
 * Description:
 *   Poll the UART receive bit.
 *
 * Conditions For Use:
 *   UART is initalized.
 *
 * Arguments:
 *   None.
 *
 * Return Value:
 *   1 - with a char waiting.
 *   0 - if no character present
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
extern int early_out(void);


/******************************************************************************
 *
 * Name: early_out
 *
 * Description:
 *   Poll the UART receive bit.
 *
 * Conditions For Use:
 *   UART is initalized.
 *
 * Arguments:
 *   None.
 *
 * Return Value:
 *   1 - with a char waiting.
 *   0 - if no character present
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
extern int uart_xmit_done_p(void);

/******************************************************************************
 *
 * Name: getchar_no_waiting
 *
 * Description:
 *   Return the next char available from UART if one is available. If
 *   a char is not availabe return FAIL.
 *
 * Conditions For Use:
 *   None.
 *
 * Arguments:
 *   Arg1( u8 *): 8 bits of data to appear at the pins.
 *
 * Return Value:
 *   OK or FAIL depending on the
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
extern s32 getchar_no_waiting( u8 *pu8c );

/******************************************************************************
 *
 * Name: uart_write2
 *
 * Description:
 *   Send two LSB bytes contained in VAL.
 *
 * Conditions For Use:
 *   None.
 *
 * Arguments:
 *   u32  val   - Value to signal to the host
 *
 * Return Value:
 *   None.
 *
 * Notes:
 *   None.
 *
 *****************************************************************************/
void uart_write2(u32 val);
void uart_clear_fifos(void);
void putchar_no_waiting(u8 u8c);

#endif /* _SETUP_UART_H_ */
