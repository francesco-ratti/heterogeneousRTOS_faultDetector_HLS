// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (COR/TOW)
//        bit 1 - ap_ready (COR/TOW)
//        bit 5 - ap_local_deadlock (COR/TOW)
//        others - reserved
// 0x10 : Data signal of contr
//        bit 31~0 - contr[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of trainedRegions
//        bit 31~0 - trainedRegions[31:0] (Read/Write)
// 0x1c : Data signal of trainedRegions
//        bit 31~0 - trainedRegions[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of realTaskId
//        bit 31~0 - realTaskId[31:0] (Read/Write)
// 0x28 : Data signal of realTaskId
//        bit 31~0 - realTaskId[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of n_regions_in
//        bit 31~0 - n_regions_in[31:0] (Read/Write)
// 0x34 : Data signal of n_regions_in
//        bit 31~0 - n_regions_in[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of sharedMem
//        bit 31~0 - sharedMem[31:0] (Read/Write)
// 0x40 : Data signal of sharedMem
//        bit 31~0 - sharedMem[63:32] (Read/Write)
// 0x44 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL             0x00
#define CONTROL_ADDR_GIE                 0x04
#define CONTROL_ADDR_IER                 0x08
#define CONTROL_ADDR_ISR                 0x0c
#define CONTROL_ADDR_CONTR_DATA          0x10
#define CONTROL_BITS_CONTR_DATA          32
#define CONTROL_ADDR_TRAINEDREGIONS_DATA 0x18
#define CONTROL_BITS_TRAINEDREGIONS_DATA 64
#define CONTROL_ADDR_REALTASKID_DATA     0x24
#define CONTROL_BITS_REALTASKID_DATA     64
#define CONTROL_ADDR_N_REGIONS_IN_DATA   0x30
#define CONTROL_BITS_N_REGIONS_IN_DATA   64
#define CONTROL_ADDR_SHAREDMEM_DATA      0x3c
#define CONTROL_BITS_SHAREDMEM_DATA      64
