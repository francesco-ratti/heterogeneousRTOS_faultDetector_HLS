// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTOP_H
#define XTOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtop_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XTop_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTop;

typedef u32 word_type;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
    u32 word_16;
    u32 word_17;
    u32 word_18;
    u32 word_19;
    u32 word_20;
    u32 word_21;
    u32 word_22;
    u32 word_23;
} XTop_Trainedregion_i;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
    u32 word_16;
    u32 word_17;
    u32 word_18;
    u32 word_19;
    u32 word_20;
    u32 word_21;
    u32 word_22;
    u32 word_23;
} XTop_Trainedregion_o;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
} XTop_Outcomeinram;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
} XTop_Sw_reset;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTop_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTop_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTop_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTop_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XTop_Initialize(XTop *InstancePtr, u16 DeviceId);
XTop_Config* XTop_LookupConfig(u16 DeviceId);
int XTop_CfgInitialize(XTop *InstancePtr, XTop_Config *ConfigPtr);
#else
int XTop_Initialize(XTop *InstancePtr, const char* InstanceName);
int XTop_Release(XTop *InstancePtr);
#endif

void XTop_Start(XTop *InstancePtr);
u32 XTop_IsDone(XTop *InstancePtr);
u32 XTop_IsIdle(XTop *InstancePtr);
u32 XTop_IsReady(XTop *InstancePtr);
void XTop_EnableAutoRestart(XTop *InstancePtr);
void XTop_DisableAutoRestart(XTop *InstancePtr);

void XTop_Set_accel_mode(XTop *InstancePtr, u32 Data);
u32 XTop_Get_accel_mode(XTop *InstancePtr);
u32 XTop_Get_copying(XTop *InstancePtr);
void XTop_Set_inputData(XTop *InstancePtr, u64 Data);
u64 XTop_Get_inputData(XTop *InstancePtr);
void XTop_Set_startCopy(XTop *InstancePtr, u32 Data);
u32 XTop_Get_startCopy(XTop *InstancePtr);
void XTop_Set_startCopy_vld(XTop *InstancePtr);
u32 XTop_Get_startCopy_vld(XTop *InstancePtr);
u32 XTop_Get_startCopy_ack(XTop *InstancePtr);
void XTop_Set_trainedRegion_i(XTop *InstancePtr, XTop_Trainedregion_i Data);
XTop_Trainedregion_i XTop_Get_trainedRegion_i(XTop *InstancePtr);
XTop_Trainedregion_o XTop_Get_trainedRegion_o(XTop *InstancePtr);
void XTop_Set_IOCheckIdx(XTop *InstancePtr, u32 Data);
u32 XTop_Get_IOCheckIdx(XTop *InstancePtr);
void XTop_Set_IORegionIdx(XTop *InstancePtr, u32 Data);
u32 XTop_Get_IORegionIdx(XTop *InstancePtr);
void XTop_Set_n_regions_in_i(XTop *InstancePtr, u32 Data);
u32 XTop_Get_n_regions_in_i(XTop *InstancePtr);
u32 XTop_Get_n_regions_in_o(XTop *InstancePtr);
u32 XTop_Get_failedTask(XTop *InstancePtr);
u32 XTop_Get_failedTask_vld(XTop *InstancePtr);
u32 XTop_Get_errorInTask_BaseAddress(XTop *InstancePtr);
u32 XTop_Get_errorInTask_HighAddress(XTop *InstancePtr);
u32 XTop_Get_errorInTask_TotalBytes(XTop *InstancePtr);
u32 XTop_Get_errorInTask_BitWidth(XTop *InstancePtr);
u32 XTop_Get_errorInTask_Depth(XTop *InstancePtr);
u32 XTop_Write_errorInTask_Words(XTop *InstancePtr, int offset, word_type *data, int length);
u32 XTop_Read_errorInTask_Words(XTop *InstancePtr, int offset, word_type *data, int length);
u32 XTop_Write_errorInTask_Bytes(XTop *InstancePtr, int offset, char *data, int length);
u32 XTop_Read_errorInTask_Bytes(XTop *InstancePtr, int offset, char *data, int length);
u32 XTop_Get_outcomeInRam_BaseAddress(XTop *InstancePtr);
u32 XTop_Get_outcomeInRam_HighAddress(XTop *InstancePtr);
u32 XTop_Get_outcomeInRam_TotalBytes(XTop *InstancePtr);
u32 XTop_Get_outcomeInRam_BitWidth(XTop *InstancePtr);
u32 XTop_Get_outcomeInRam_Depth(XTop *InstancePtr);
u32 XTop_Write_outcomeInRam_Words(XTop *InstancePtr, int offset, word_type *data, int length);
u32 XTop_Read_outcomeInRam_Words(XTop *InstancePtr, int offset, word_type *data, int length);
u32 XTop_Write_outcomeInRam_Bytes(XTop *InstancePtr, int offset, char *data, int length);
u32 XTop_Read_outcomeInRam_Bytes(XTop *InstancePtr, int offset, char *data, int length);

void XTop_InterruptGlobalEnable(XTop *InstancePtr);
void XTop_InterruptGlobalDisable(XTop *InstancePtr);
void XTop_InterruptEnable(XTop *InstancePtr, u32 Mask);
void XTop_InterruptDisable(XTop *InstancePtr, u32 Mask);
void XTop_InterruptClear(XTop *InstancePtr, u32 Mask);
u32 XTop_InterruptGetEnabled(XTop *InstancePtr);
u32 XTop_InterruptGetStatus(XTop *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
