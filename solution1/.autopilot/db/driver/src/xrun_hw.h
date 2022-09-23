// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
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
// 0x00040 ~
// 0x0007f : Memory 'realcheckId' (64 * 8b)
//           Word n : bit [ 7: 0] - realcheckId[4n]
//                    bit [15: 8] - realcheckId[4n+1]
//                    bit [23:16] - realcheckId[4n+2]
//                    bit [31:24] - realcheckId[4n+3]
// 0x00080 ~
// 0x000bf : Memory 'n_regions_in' (64 * 8b)
//           Word n : bit [ 7: 0] - n_regions_in[4n]
//                    bit [15: 8] - n_regions_in[4n+1]
//                    bit [23:16] - n_regions_in[4n+2]
//                    bit [31:24] - n_regions_in[4n+3]
// 0x20000 ~
// 0x3ffff : Memory 'trainedRegions' (24576 * 32b)
//           Word n : bit [31:0] - trainedRegions[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRUN_CONTROL_ADDR_AP_CTRL             0x00000
#define XRUN_CONTROL_ADDR_GIE                 0x00004
#define XRUN_CONTROL_ADDR_IER                 0x00008
#define XRUN_CONTROL_ADDR_ISR                 0x0000c
#define XRUN_CONTROL_ADDR_CONTR_DATA          0x00010
#define XRUN_CONTROL_BITS_CONTR_DATA          48
#define XRUN_CONTROL_ADDR_SHAREDMEM_DATA      0x0001c
#define XRUN_CONTROL_BITS_SHAREDMEM_DATA      64
#define XRUN_CONTROL_ADDR_REALCHECKID_BASE    0x00040
#define XRUN_CONTROL_ADDR_REALCHECKID_HIGH    0x0007f
#define XRUN_CONTROL_WIDTH_REALCHECKID        8
#define XRUN_CONTROL_DEPTH_REALCHECKID        64
#define XRUN_CONTROL_ADDR_N_REGIONS_IN_BASE   0x00080
#define XRUN_CONTROL_ADDR_N_REGIONS_IN_HIGH   0x000bf
#define XRUN_CONTROL_WIDTH_N_REGIONS_IN       8
#define XRUN_CONTROL_DEPTH_N_REGIONS_IN       64
#define XRUN_CONTROL_ADDR_TRAINEDREGIONS_BASE 0x20000
#define XRUN_CONTROL_ADDR_TRAINEDREGIONS_HIGH 0x3ffff
#define XRUN_CONTROL_WIDTH_TRAINEDREGIONS     32
#define XRUN_CONTROL_DEPTH_TRAINEDREGIONS     24576

