// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtop.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTop_CfgInitialize(XTop *InstancePtr, XTop_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTop_Start(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTop_IsDone(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTop_IsIdle(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTop_IsReady(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTop_EnableAutoRestart(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTop_DisableAutoRestart(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XTop_Set_accel_mode(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_ACCEL_MODE_DATA, Data);
}

u32 XTop_Get_accel_mode(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_ACCEL_MODE_DATA);
    return Data;
}

u32 XTop_Get_copying(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_COPYING_DATA);
    return Data;
}

void XTop_Set_inputData(XTop *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_INPUTDATA_DATA, (u32)(Data));
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_INPUTDATA_DATA + 4, (u32)(Data >> 32));
}

u64 XTop_Get_inputData(XTop *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_INPUTDATA_DATA);
    Data += (u64)XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_INPUTDATA_DATA + 4) << 32;
    return Data;
}

void XTop_Set_startCopy(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_STARTCOPY_DATA, Data);
}

u32 XTop_Get_startCopy(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_STARTCOPY_DATA);
    return Data;
}

void XTop_Set_startCopy_vld(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_STARTCOPY_CTRL, 1);
}

u32 XTop_Get_startCopy_vld(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_STARTCOPY_CTRL);
    return Data & 0x1;
}

u32 XTop_Get_startCopy_ack(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_STARTCOPY_CTRL);
    return (Data >> 1) & 0x1;
}

void XTop_Set_trainedRegion_i(XTop *InstancePtr, XTop_Trainedregion_i Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 0, Data.word_0);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 4, Data.word_1);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 8, Data.word_2);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 12, Data.word_3);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 16, Data.word_4);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 20, Data.word_5);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 24, Data.word_6);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 28, Data.word_7);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 32, Data.word_8);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 36, Data.word_9);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 40, Data.word_10);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 44, Data.word_11);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 48, Data.word_12);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 52, Data.word_13);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 56, Data.word_14);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 60, Data.word_15);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 64, Data.word_16);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 68, Data.word_17);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 72, Data.word_18);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 76, Data.word_19);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 80, Data.word_20);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 84, Data.word_21);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 88, Data.word_22);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 92, Data.word_23);
}

XTop_Trainedregion_i XTop_Get_trainedRegion_i(XTop *InstancePtr) {
    XTop_Trainedregion_i Data;

    Data.word_0 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 0);
    Data.word_1 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 4);
    Data.word_2 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 8);
    Data.word_3 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 12);
    Data.word_4 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 16);
    Data.word_5 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 20);
    Data.word_6 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 24);
    Data.word_7 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 28);
    Data.word_8 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 32);
    Data.word_9 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 36);
    Data.word_10 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 40);
    Data.word_11 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 44);
    Data.word_12 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 48);
    Data.word_13 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 52);
    Data.word_14 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 56);
    Data.word_15 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 60);
    Data.word_16 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 64);
    Data.word_17 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 68);
    Data.word_18 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 72);
    Data.word_19 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 76);
    Data.word_20 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 80);
    Data.word_21 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 84);
    Data.word_22 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 88);
    Data.word_23 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_I_DATA + 92);
    return Data;
}

XTop_Trainedregion_o XTop_Get_trainedRegion_o(XTop *InstancePtr) {
    XTop_Trainedregion_o Data;

    Data.word_0 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 0);
    Data.word_1 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 4);
    Data.word_2 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 8);
    Data.word_3 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 12);
    Data.word_4 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 16);
    Data.word_5 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 20);
    Data.word_6 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 24);
    Data.word_7 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 28);
    Data.word_8 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 32);
    Data.word_9 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 36);
    Data.word_10 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 40);
    Data.word_11 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 44);
    Data.word_12 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 48);
    Data.word_13 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 52);
    Data.word_14 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 56);
    Data.word_15 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 60);
    Data.word_16 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 64);
    Data.word_17 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 68);
    Data.word_18 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 72);
    Data.word_19 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 76);
    Data.word_20 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 80);
    Data.word_21 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 84);
    Data.word_22 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 88);
    Data.word_23 = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_TRAINEDREGION_O_DATA + 92);
    return Data;
}

void XTop_Set_IOCheckIdx(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IOCHECKIDX_DATA, Data);
}

u32 XTop_Get_IOCheckIdx(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IOCHECKIDX_DATA);
    return Data;
}

void XTop_Set_IORegionIdx(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IOREGIONIDX_DATA, Data);
}

u32 XTop_Get_IORegionIdx(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IOREGIONIDX_DATA);
    return Data;
}

void XTop_Set_n_regions_in_i(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_N_REGIONS_IN_I_DATA, Data);
}

u32 XTop_Get_n_regions_in_i(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_N_REGIONS_IN_I_DATA);
    return Data;
}

u32 XTop_Get_n_regions_in_o(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_N_REGIONS_IN_O_DATA);
    return Data;
}

u32 XTop_Get_failedTask(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_FAILEDTASK_DATA);
    return Data;
}

u32 XTop_Get_failedTask_vld(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_FAILEDTASK_CTRL);
    return Data & 0x1;
}

u32 XTop_Get_errorInTask_BaseAddress(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_ERRORINTASK_BASE);
}

u32 XTop_Get_errorInTask_HighAddress(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_ERRORINTASK_HIGH);
}

u32 XTop_Get_errorInTask_TotalBytes(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XTOP_CONTROL_ADDR_ERRORINTASK_HIGH - XTOP_CONTROL_ADDR_ERRORINTASK_BASE + 1);
}

u32 XTop_Get_errorInTask_BitWidth(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTOP_CONTROL_WIDTH_ERRORINTASK;
}

u32 XTop_Get_errorInTask_Depth(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTOP_CONTROL_DEPTH_ERRORINTASK;
}

u32 XTop_Write_errorInTask_Words(XTop *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XTOP_CONTROL_ADDR_ERRORINTASK_HIGH - XTOP_CONTROL_ADDR_ERRORINTASK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_ERRORINTASK_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XTop_Read_errorInTask_Words(XTop *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XTOP_CONTROL_ADDR_ERRORINTASK_HIGH - XTOP_CONTROL_ADDR_ERRORINTASK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_ERRORINTASK_BASE + (offset + i)*4);
    }
    return length;
}

u32 XTop_Write_errorInTask_Bytes(XTop *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XTOP_CONTROL_ADDR_ERRORINTASK_HIGH - XTOP_CONTROL_ADDR_ERRORINTASK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_ERRORINTASK_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XTop_Read_errorInTask_Bytes(XTop *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XTOP_CONTROL_ADDR_ERRORINTASK_HIGH - XTOP_CONTROL_ADDR_ERRORINTASK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_ERRORINTASK_BASE + offset + i);
    }
    return length;
}

u32 XTop_Get_outcomeInRam_BaseAddress(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE);
}

u32 XTop_Get_outcomeInRam_HighAddress(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_OUTCOMEINRAM_HIGH);
}

u32 XTop_Get_outcomeInRam_TotalBytes(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XTOP_CONTROL_ADDR_OUTCOMEINRAM_HIGH - XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + 1);
}

u32 XTop_Get_outcomeInRam_BitWidth(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTOP_CONTROL_WIDTH_OUTCOMEINRAM;
}

u32 XTop_Get_outcomeInRam_Depth(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTOP_CONTROL_DEPTH_OUTCOMEINRAM;
}

u32 XTop_Write_outcomeInRam_Words(XTop *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XTOP_CONTROL_ADDR_OUTCOMEINRAM_HIGH - XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XTop_Read_outcomeInRam_Words(XTop *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XTOP_CONTROL_ADDR_OUTCOMEINRAM_HIGH - XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XTop_Write_outcomeInRam_Bytes(XTop *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XTOP_CONTROL_ADDR_OUTCOMEINRAM_HIGH - XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XTop_Read_outcomeInRam_Bytes(XTop *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XTOP_CONTROL_ADDR_OUTCOMEINRAM_HIGH - XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XTOP_CONTROL_ADDR_OUTCOMEINRAM_BASE + offset + i);
    }
    return length;
}

void XTop_InterruptGlobalEnable(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_GIE, 1);
}

void XTop_InterruptGlobalDisable(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_GIE, 0);
}

void XTop_InterruptEnable(XTop *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER, Register | Mask);
}

void XTop_InterruptDisable(XTop *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTop_InterruptClear(XTop *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_ISR, Mask);
}

u32 XTop_InterruptGetEnabled(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER);
}

u32 XTop_InterruptGetStatus(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_ISR);
}

