// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 4  - ap_continue (Read/Write/SC)
//           bit 7  - auto_restart (Read/Write)
//           bit 9  - interrupt (Read)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/COR)
//           bit 0 - ap_done (Read/COR)
//           bit 1 - ap_ready (Read/COR)
//           others - reserved
// 0x00010 : Data signal of contr
//           bit 31~0 - contr[31:0] (Read/Write)
// 0x00014 : Data signal of contr
//           bit 15~0 - contr[47:32] (Read/Write)
//           others   - reserved
// 0x00018 : reserved
// 0x0001c : Data signal of sharedMem
//           bit 31~0 - sharedMem[31:0] (Read/Write)
// 0x00020 : Data signal of sharedMem
//           bit 31~0 - sharedMem[63:32] (Read/Write)
// 0x00024 : reserved
// 0x00080 ~
// 0x000ff : Memory 'realcheckId' (128 * 8b)
//           Word n : bit [ 7: 0] - realcheckId[4n]
//                    bit [15: 8] - realcheckId[4n+1]
//                    bit [23:16] - realcheckId[4n+2]
//                    bit [31:24] - realcheckId[4n+3]
// 0x00100 ~
// 0x0017f : Memory 'n_regions_in' (128 * 8b)
//           Word n : bit [ 7: 0] - n_regions_in[4n]
//                    bit [15: 8] - n_regions_in[4n+1]
//                    bit [23:16] - n_regions_in[4n+2]
//                    bit [31:24] - n_regions_in[4n+3]
// 0x40000 ~
// 0x7ffff : Memory 'trainedRegions' (49152 * 32b)
//           Word n : bit [31:0] - trainedRegions[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL             0x00000
#define CONTROL_ADDR_GIE                 0x00004
#define CONTROL_ADDR_IER                 0x00008
#define CONTROL_ADDR_ISR                 0x0000c
#define CONTROL_ADDR_CONTR_DATA          0x00010
#define CONTROL_BITS_CONTR_DATA          48
#define CONTROL_ADDR_SHAREDMEM_DATA      0x0001c
#define CONTROL_BITS_SHAREDMEM_DATA      64
#define CONTROL_ADDR_REALCHECKID_BASE    0x00080
#define CONTROL_ADDR_REALCHECKID_HIGH    0x000ff
#define CONTROL_WIDTH_REALCHECKID        8
#define CONTROL_DEPTH_REALCHECKID        128
#define CONTROL_ADDR_N_REGIONS_IN_BASE   0x00100
#define CONTROL_ADDR_N_REGIONS_IN_HIGH   0x0017f
#define CONTROL_WIDTH_N_REGIONS_IN       8
#define CONTROL_DEPTH_N_REGIONS_IN       128
#define CONTROL_ADDR_TRAINEDREGIONS_BASE 0x40000
#define CONTROL_ADDR_TRAINEDREGIONS_HIGH 0x7ffff
#define CONTROL_WIDTH_TRAINEDREGIONS     32
#define CONTROL_DEPTH_TRAINEDREGIONS     49152
