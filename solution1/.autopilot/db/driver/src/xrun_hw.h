// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control_r
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
// 0x10 : Data signal of trainedRegions
//        bit 31~0 - trainedRegions[31:0] (Read/Write)
// 0x14 : Data signal of trainedRegions
//        bit 31~0 - trainedRegions[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of realTaskId
//        bit 31~0 - realTaskId[31:0] (Read/Write)
// 0x20 : Data signal of realTaskId
//        bit 31~0 - realTaskId[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of n_regions_in
//        bit 31~0 - n_regions_in[31:0] (Read/Write)
// 0x2c : Data signal of n_regions_in
//        bit 31~0 - n_regions_in[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of sharedMem
//        bit 31~0 - sharedMem[31:0] (Read/Write)
// 0x38 : Data signal of sharedMem
//        bit 31~0 - sharedMem[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRUN_CONTROL_R_ADDR_AP_CTRL             0x00
#define XRUN_CONTROL_R_ADDR_GIE                 0x04
#define XRUN_CONTROL_R_ADDR_IER                 0x08
#define XRUN_CONTROL_R_ADDR_ISR                 0x0c
#define XRUN_CONTROL_R_ADDR_TRAINEDREGIONS_DATA 0x10
#define XRUN_CONTROL_R_BITS_TRAINEDREGIONS_DATA 64
#define XRUN_CONTROL_R_ADDR_REALTASKID_DATA     0x1c
#define XRUN_CONTROL_R_BITS_REALTASKID_DATA     64
#define XRUN_CONTROL_R_ADDR_N_REGIONS_IN_DATA   0x28
#define XRUN_CONTROL_R_BITS_N_REGIONS_IN_DATA   64
#define XRUN_CONTROL_R_ADDR_SHAREDMEM_DATA      0x34
#define XRUN_CONTROL_R_BITS_SHAREDMEM_DATA      64

