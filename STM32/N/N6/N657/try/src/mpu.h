#ifndef __MPU_H__
#define __MPU_H__

#define MPU_BASE (0xe000ed90)
#define MPU ((MPU_Type *)MPU_BASE)

#define __IOM
#define __IM

typedef union {
    struct {
	u8 Inner : 4;
	u8 Outer : 4;
    } Attr;
    u8 b;
} Attr_Type;
#if 0
#define MPU_TYPE        0x00
#define MPU_CTRL        0x04
#define MPU_RNR         0x08
#define MPU_RBAR        0x0C
#define MPU_RLAR        0x10
#define MPU_RBAR_ALIAS1 0x14
#define MPU_RLAR_ALIAS1 0x18
#define MPU_RBAR_ALIAS2 0x1C
#define MPU_RLAR_ALIAS2 0x20
#define MPU_RBAR_ALIAS3 0x24
#define MPU_RLAR_ALIAS3 0x28
#define MPU_MAIR0       0x30
#define MPU_MAIR1       0x34
#endif
void setup_mpu(void);

enum {MPU_RBAR_SH_NON_SHAREABLE=0,
      MPU_RBAR_SH_RESERVED,
      MPU_RBAR_SH_OUTER_SHAREABLE,
      MPU_RBAR_SH_INNER_SHAREABLE};

enum {MPU_RBAR_AP_RW_PRIV_ONLY=0,
      MPU_RBAR_AP_RW_PRIV_ANY,
      MPU_RBAR_AP_RO_PRIV_ONLY,
      MPU_RBAR_AP_R0_PRIV_ANY};

enum {MPU_RBAR_XN_EXECUTE=0,
      MPU_RBAR_XN_EXECUTE_NEVER};

enum {MPU_RLAR_EN_DISABLED = 0,
      MPU_RLAR_EN_ENABLED};

enum {MPU_RLAR_PXN_PRIV_EXECUTE=0,
      MPU_RLAR_PXN_PRIV_EXECUTE_NEVER};

typedef struct {

    union {
	__IOM uint8_t ATTR;

	struct {
	    __IOM uint8_t INNER : 4;
	    __IOM uint8_t OUTER : 4;
	} outer_nz;

	struct {
	    __IOM uint8_t RSVD   : 2;
	    __IOM uint8_t DEVICE : 2;
	    __IOM uint8_t OUTER  : 4;
	} outer_zero;
    } bit;

} MPU_ATTR;

// WT = Write Through
// WB = Write Back
#define MPU_ATTR_OUTER_DEVICE                    (0)
#define MPU_ATTR_OUTER_WT_TRANSIENT_WRITE        (1)
#define MPU_ATTR_OUTER_WT_TRANSIENT_READ         (2)
#define MPU_ATTR_OUTER_WT_TRANSIENT_RW           (3)
#define MPU_ATTR_OUTER_NON_CACHEABLE             (4)
#define MPU_ATTR_OUTER_WB_TRANSIENT_WRITE        (5)
#define MPU_ATTR_OUTER_WB_TRANSIENT_READ         (6)
#define MPU_ATTR_OUTER_WB_TRANSIENT_RW           (7)
// 8? RW=0?
#define MPU_ATTR_OUTER_WT_NON_TRANSIENT_WRITE    (9)
#define MPU_ATTR_OUTER_WT_NON_TRANSIENT_READ     (10)
#define MPU_ATTR_OUTER_WT_NON_TRANSIENT_RW       (11)
// 12? RW=0?
#define MPU_ATTR_OUTER_WB_NON_TRANSIENT_WRITE    (13)
#define MPU_ATTR_OUTER_WB_NON_TRANSIENT_READ     (14)
#define MPU_ATTR_OUTER_WB_NON_TRANSIENT_RW       (15)

#define MPU_ATTR_DEVICE_nGnRnE          (0) // Used to access memory mapped peripherals.
                                            // All accesses to DevicenGnRnE memory occur in program order.
                                            // All regions are assumed to be shared
#define MPU_ATTR_DEVICE_nGnRE           (1) // Used to access memory mapped peripherals.
                                            // Weaker ordering than Device-nGnRnE.
#define MPU_ATTR_DEVICE_nGRE            (2) // Used to access memory mapped peripherals.
                                            // Weaker ordering than Device-nGnRE
#define MPU_ATTR_DEVICE_GRE             (3) // Used to access memory mapped peripherals.
                                            // Weaker ordering than Device-nGRE

#define MPU_ATTR_INNER_UNDEF               (0)
#define MPU_ATTR_INNER_WT_TRANSIENT_WRITE  (1)
#define MPU_ATTR_INNER_WT_TRANSIENT_READ   (2)
#define MPU_ATTR_INNER_WT_TRANSIENT_RW     (3)
#define MPU_ATTR_INNER_NON_CACHEABLE       (4)
#define MPU_ATTR_INNER_WB_TRANSIENT_WRITE  (5)
#define MPU_ATTR_INNER_WB_TRANSIENT_READ   (6)
#define MPU_ATTR_INNER_WB_TRANSIENT_RW     (7)
// 8?
#define MPU_ATTR_INNER_WT_NON_TRANSIENT_WRITE  (9)
#define MPU_ATTR_INNER_WT_NON_TRANSIENT_READ   (10)
#define MPU_ATTR_INNER_WT_NON_TRANSIENT_RW     (11)
// 12?
#define MPU_ATTR_INNER_WB_NON_TRANSIENT_WRITE  (13)
#define MPU_ATTR_INNER_WB_NON_TRANSIENT_READ   (14)
#define MPU_ATTR_INNER_WB_NON_TRANSIENT_RW     (15)

/* =========================================================================================================================== */
/* ================                                            MPU                                            ================ */
/* =========================================================================================================================== */


/**
  * @brief Memory Protection Unit (MPU)
  */

typedef struct {                                /*!< (@ 0xE000ED90) MPU Structure                                              */

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000000) MPU Type Register                                          */

    struct {
      __IOM uint32_t SEP        : 1;            /*!< [0..0] Separate instr/data                                                */
            uint32_t            : 7;
      __IOM uint32_t DREGION    : 8;            /*!< [15..8] Data Regions                                                      */
            uint32_t            : 16;
    } bit;
  } MPU_TYPE;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000004) MPU_CTRL                                                   */

    struct {
      __IOM uint32_t ENABLE     : 1;            /*!< [0..0] ENABLE                                                             */
      __IOM uint32_t HFNMIENA   : 1;            /*!< [1..1] HFNMIENA                                                           */
      __IOM uint32_t PRIVDEFENA : 1;            /*!< [2..2] PRIVDEFENA                                                         */
            uint32_t            : 29;
    } bit;
  } MPU_CTRL;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000008) Region select                                              */

    struct {
      __IOM uint32_t REGION     : 8;            /*!< [7..0] REGION                                                             */
            uint32_t            : 24;
    } bit;
  } MPU_RNR;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x0000000C) MPU Region Base Address Register                           */

    struct {
      __IOM uint32_t XN         : 1;            /*!< [0..0] XN                                                                 */
      __IOM uint32_t AP         : 2;            /*!< [2..1] AP                                                                 */
      __IOM uint32_t SH         : 2;            /*!< [4..3] SH                                                                 */
      __IOM uint32_t BADDR      : 27;           /*!< [31..5] Holds bits [31:5] of the base address for the selected
                                                     MPU region                                                                */
    } bit;
  } MPU_RBAR;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000010) MPU_RLAR                                                   */

    struct {
      __IOM uint32_t EN         : 1;            /*!< [0..0] EN                                                                 */
      __IOM uint32_t AttrIndx   : 3;            /*!< [3..1] AttrIndx                                                           */
      __IOM uint32_t PXN        : 1;            /*!< [4..4] PXN                                                                */
      __IOM uint32_t LIMIT      : 27;           /*!< [31..5] Holds bits [31:5] of the limit for the selected MPU
                                                     region                                                                    */
    } bit;
  } MPU_RLAR;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000014) MPU_ALIAS1                                                 */

    struct {
      __IOM uint32_t XN         : 1;            /*!< [0..0] XN                                                                 */
      __IOM uint32_t AP         : 2;            /*!< [2..1] AP                                                                 */
      __IOM uint32_t SH         : 2;            /*!< [4..3] SH                                                                 */
      __IOM uint32_t BADDR      : 27;           /*!< [31..5] Holds bits [31:5] of the base address for the selected
                                                     MPU region                                                                */
    } bit;
  } MPU_RBAR_ALIAS1;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000018) MPU_RLAR_ALIAS1                                            */

    struct {
      __IOM uint32_t EN         : 1;            /*!< [0..0] EN                                                                 */
      __IOM uint32_t AttrIndx   : 3;            /*!< [3..1] AttrIndx                                                           */
      __IOM uint32_t PXN        : 1;            /*!< [4..4] PXN                                                                */
      __IOM uint32_t LIMIT      : 27;           /*!< [31..5] Holds bits [31:5] of the limit for the selected MPU
                                                     region                                                                    */
    } bit;
  } MPU_RLAR_ALIAS1;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x0000001C) MPU_ALIAS2                                                 */

    struct {
      __IOM uint32_t XN         : 1;            /*!< [0..0] XN                                                                 */
      __IOM uint32_t AP         : 2;            /*!< [2..1] AP                                                                 */
      __IOM uint32_t SH         : 2;            /*!< [4..3] SH                                                                 */
      __IOM uint32_t BADDR      : 27;           /*!< [31..5] Holds bits [31:5] of the base address for the selected
                                                     MPU region                                                                */
    } bit;
  } MPU_RBAR_ALIAS2;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000020) MPU_RLAR_ALIAS2                                            */

    struct {
      __IOM uint32_t EN         : 1;            /*!< [0..0] EN                                                                 */
      __IOM uint32_t AttrIndx   : 3;            /*!< [3..1] AttrIndx                                                           */
      __IOM uint32_t PXN        : 1;            /*!< [4..4] PXN                                                                */
      __IOM uint32_t LIMIT      : 27;           /*!< [31..5] Holds bits [31:5] of the limit for the selected MPU
                                                     region                                                                    */
    } bit;
  } MPU_RLAR_ALIAS2;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000024) MPU_ALIAS1                                                 */

    struct {
      __IOM uint32_t XN         : 1;            /*!< [0..0] XN                                                                 */
      __IOM uint32_t AP         : 2;            /*!< [2..1] AP                                                                 */
      __IOM uint32_t SH         : 2;            /*!< [4..3] SH                                                                 */
      __IOM uint32_t BADDR      : 27;           /*!< [31..5] Holds bits [31:5] of the base address for the selected
                                                     MPU region                                                                */
    } bit;
  } MPU_RBAR_ALIAS3;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000028) MPU_RLAR_ALIAS1                                            */

    struct {
      __IOM uint32_t EN         : 1;            /*!< [0..0] EN                                                                 */
      __IOM uint32_t AttrIndx   : 3;            /*!< [3..1] AttrIndx                                                           */
      __IOM uint32_t PXN        : 1;            /*!< [4..4] PXN                                                                */
      __IOM uint32_t LIMIT      : 27;           /*!< [31..5] Holds bits [31:5] of the limit for the selected MPU
                                                     region                                                                    */
    } bit;
  } MPU_RLAR_ALIAS3;
  __IM  uint32_t  RESERVED;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000030) MPU_MAIR0                                                  */

    struct {
      __IOM uint32_t Attr0      : 8;            /*!< [7..0] Attr0                                                              */
      __IOM uint32_t Attr1      : 8;            /*!< [15..8] Attr1                                                             */
      __IOM uint32_t Attr2      : 8;            /*!< [23..16] Attr2                                                            */
      __IOM uint32_t Attr3      : 8;            /*!< [31..24] Attr3                                                            */
    } bit;
  } MPU_MAIR0;

  union {
    __IOM uint32_t reg;                         /*!< (@ 0x00000034) MPU_MAIR1                                                  */

    struct {
      __IOM uint32_t Attr4      : 8;            /*!< [7..0] Attr4                                                              */
      __IOM uint32_t Attr5      : 8;            /*!< [15..8] Attr5                                                             */
      __IOM uint32_t Attr6      : 8;            /*!< [23..16] Attr6                                                            */
      __IOM uint32_t Attr7      : 8;            /*!< [31..24] Attr7                                                            */
    } bit;
  } MPU_MAIR1;
} MPU_Type;                                     /*!< Size = 56 (0x38)                                                          */

#endif // __MPU_H__
