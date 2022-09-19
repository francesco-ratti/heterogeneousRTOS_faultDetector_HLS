// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xrun.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRun_CfgInitialize(XRun *InstancePtr, XRun_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRun_Start(XRun *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRun_IsDone(XRun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRun_IsIdle(XRun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRun_IsReady(XRun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRun_Continue(XRun *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XRun_EnableAutoRestart(XRun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRun_DisableAutoRestart(XRun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_AP_CTRL, 0);
}

void XRun_Set_contr(XRun *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_CONTR_DATA, Data);
}

u32 XRun_Get_contr(XRun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_CONTR_DATA);
    return Data;
}

void XRun_Set_trainedRegions(XRun *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_TRAINEDREGIONS_DATA, (u32)(Data));
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_TRAINEDREGIONS_DATA + 4, (u32)(Data >> 32));
}

u64 XRun_Get_trainedRegions(XRun *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_TRAINEDREGIONS_DATA);
    Data += (u64)XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_TRAINEDREGIONS_DATA + 4) << 32;
    return Data;
}

void XRun_Set_realTaskId(XRun *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_REALTASKID_DATA, (u32)(Data));
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_REALTASKID_DATA + 4, (u32)(Data >> 32));
}

u64 XRun_Get_realTaskId(XRun *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_REALTASKID_DATA);
    Data += (u64)XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_REALTASKID_DATA + 4) << 32;
    return Data;
}

void XRun_Set_n_regions_in(XRun *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_N_REGIONS_IN_DATA, (u32)(Data));
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_N_REGIONS_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XRun_Get_n_regions_in(XRun *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_N_REGIONS_IN_DATA);
    Data += (u64)XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_N_REGIONS_IN_DATA + 4) << 32;
    return Data;
}

void XRun_Set_sharedMem(XRun *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_SHAREDMEM_DATA, (u32)(Data));
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_SHAREDMEM_DATA + 4, (u32)(Data >> 32));
}

u64 XRun_Get_sharedMem(XRun *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_SHAREDMEM_DATA);
    Data += (u64)XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_SHAREDMEM_DATA + 4) << 32;
    return Data;
}

void XRun_InterruptGlobalEnable(XRun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_GIE, 1);
}

void XRun_InterruptGlobalDisable(XRun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_GIE, 0);
}

void XRun_InterruptEnable(XRun *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_IER);
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_IER, Register | Mask);
}

void XRun_InterruptDisable(XRun *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_IER);
    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRun_InterruptClear(XRun *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRun_WriteReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_ISR, Mask);
}

u32 XRun_InterruptGetEnabled(XRun *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_IER);
}

u32 XRun_InterruptGetStatus(XRun *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRun_ReadReg(InstancePtr->Control_BaseAddress, XRUN_CONTROL_ADDR_ISR);
}

