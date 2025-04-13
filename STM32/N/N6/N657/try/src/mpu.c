#include <stdint.h>

typedef unsigned long long  u64;
typedef unsigned int    u32;
typedef unsigned short  u16;
typedef unsigned char    u8;
typedef int             s32;
typedef short           s16;
typedef signed char      s8;

#include "mpu.h"

u32 gx;
u64 gl;
void
Add_Attrib (u32 idx, u8 at)
{
    //    dvprintf(">aa %d %x", idx, at);
    switch(idx) {
      case 0:
	MPU->MPU_MAIR0.bit.Attr0 = at;
	break;
      case 1:
	MPU->MPU_MAIR0.bit.Attr1 = at;
	break;
      case 2:
	MPU->MPU_MAIR0.bit.Attr2 = at;
	break;
      case 3:
	MPU->MPU_MAIR0.bit.Attr3 = at;
	break;
      case 4:
	MPU->MPU_MAIR1.bit.Attr4 = at;
	break;
      case 5:
	MPU->MPU_MAIR1.bit.Attr5 = at;
	break;
      case 6:
	MPU->MPU_MAIR1.bit.Attr6 = at;
	break;
      case 7:
	MPU->MPU_MAIR1.bit.Attr7 = at;
	break;
    }
    // dvprintf("<aa");
}
u8
Get_Attrib (u32 idx)
{
    u8 at;
    switch(idx) {
    case 0:
	at = MPU->MPU_MAIR0.bit.Attr0;
	break;
    case 1:
	at = MPU->MPU_MAIR0.bit.Attr1;
	break;
    case 2:
	at = MPU->MPU_MAIR0.bit.Attr2;
	break;
    case 3:
	at = MPU->MPU_MAIR0.bit.Attr3;
	break;
    case 4:
	at = MPU->MPU_MAIR1.bit.Attr4;
	break;
    case 5:
	at = MPU->MPU_MAIR1.bit.Attr5;
	break;
    case 6:
	at = MPU->MPU_MAIR1.bit.Attr6;
	break;
    case 7:
	at = MPU->MPU_MAIR1.bit.Attr7;
	break;
    }
    return at;
}
void
Add_Region (u32 Region_Num, u32 Addr, u32 Limit, u32 AttIdx, u32 ExecuteNever)
{
    // dvprintf(">ar %d %08x %08x %d", Region_Num, Addr, Limit, AttIdx);
    MPU->MPU_RNR.bit.REGION = Region_Num;
    MPU->MPU_RBAR.bit.BADDR = Addr >> 5;
    MPU->MPU_RBAR.bit.SH = MPU_RBAR_SH_NON_SHAREABLE;
    MPU->MPU_RBAR.bit.AP = MPU_RBAR_AP_RW_PRIV_ONLY;
    MPU->MPU_RBAR.bit.XN = ExecuteNever;

    MPU->MPU_RLAR.bit.LIMIT = Limit >> 5;
    MPU->MPU_RLAR.bit.AttrIndx = AttIdx;
    MPU->MPU_RLAR.bit.PXN = MPU_RLAR_PXN_PRIV_EXECUTE;
    MPU->MPU_RLAR.bit.EN = MPU_RLAR_EN_ENABLED;
    // dvprintf("<ar");
}
u64
Get_Region (u32 Region_Num)
{
    union {
	u32 w[2];
	u64 l;
    } u;
    // dvprintf(">ar %d %08x %08x %d", Region_Num, Addr, Limit, AttIdx);
    MPU->MPU_RNR.bit.REGION = Region_Num;
    u.w[0] = MPU->MPU_RBAR.reg;
    u.w[1] = MPU->MPU_RLAR.reg;
    // dvprintf("<ar");
    return u.l;
}

void
Clr_Region (u32 Region_Num)
{
    MPU->MPU_RNR.bit.REGION = Region_Num;
    MPU->MPU_RLAR.reg = 0;
    MPU->MPU_RBAR.reg = 0;
}
void
Enable_MPU()
{
    int i;
    MPU->MPU_CTRL.bit.ENABLE = 1;
//    rmw(MPU_BASE + MPU_CTRL, 0, 0, 1);
    for(i=0;i < 100;i++);
}
void
Disable_MPU()
{
    MPU->MPU_CTRL.bit.ENABLE = 0;
//    rmw(MPU_BASE + MPU_CTRL, 0, 0, 0);
    Clr_Region (0);
    Clr_Region (1);
    Clr_Region (2);
    Clr_Region (3);
    Clr_Region (4);
    Clr_Region (5);
    Clr_Region (6);
    Clr_Region (7);
}
void
mpu_init()
{
    return;
#if 0
    void dsb(void);
    void isb(void);
    MPU_ATTR Ram_Rom;
    MPU_ATTR Dev;
    Ram_Rom.bit.outer_nz.OUTER = MPU_ATTR_OUTER_NON_CACHEABLE;
    Ram_Rom.bit.outer_nz.INNER = MPU_ATTR_INNER_NON_CACHEABLE;
    Dev.bit.outer_zero.OUTER   = MPU_ATTR_OUTER_DEVICE;
    Dev.bit.outer_zero.DEVICE  = MPU_ATTR_DEVICE_nGnRnE;
    Disable_MPU();
    Add_Attrib (0, Ram_Rom.bit.ATTR);
    Add_Attrib (1, Dev.bit.ATTR);
    Add_Region (0, 0, (64*1024)-1, 0, MPU_RBAR_XN_EXECUTE);
    Add_Region (1, 0x340000000, 0x3409bfff, 0, MPU_RBAR_XN_EXECUTE);
    Add_Region (2, 0x400000000, 0x4fffffff, 1, MPU_RBAR_XN_EXECUTE_NEVER);
    Add_Region (2, 0x500000000, 0x5fffffff, 1, MPU_RBAR_XN_EXECUTE_NEVER);
    Add_Region (4, 0xe0000000, 0xe00fffff, 1, MPU_RBAR_XN_EXECUTE_NEVER);
    dsb();
    isb();
    Enable_MPU();
#else
#if 0
    // Dump MPU stat
    gx = MPU->MPU_CTRL.bit.ENABLE;
    for(int i=0;i < 8;i++) {
	gx = Get_Attrib(i);
	gl = Get_Region(i);
    }
#endif
#endif
}
