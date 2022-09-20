// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XRUN_H
#define XRUN_H

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
#include "xrun_hw.h"

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
} XRun_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XRun;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRun_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRun_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRun_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRun_ReadReg(BaseAddress, RegOffset) \
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
int XRun_Initialize(XRun *InstancePtr, u16 DeviceId);
XRun_Config* XRun_LookupConfig(u16 DeviceId);
int XRun_CfgInitialize(XRun *InstancePtr, XRun_Config *ConfigPtr);
#else
int XRun_Initialize(XRun *InstancePtr, const char* InstanceName);
int XRun_Release(XRun *InstancePtr);
#endif

void XRun_Start(XRun *InstancePtr);
u32 XRun_IsDone(XRun *InstancePtr);
u32 XRun_IsIdle(XRun *InstancePtr);
u32 XRun_IsReady(XRun *InstancePtr);
void XRun_Continue(XRun *InstancePtr);
void XRun_EnableAutoRestart(XRun *InstancePtr);
void XRun_DisableAutoRestart(XRun *InstancePtr);

void XRun_Set_contr(XRun *InstancePtr, u32 Data);
u32 XRun_Get_contr(XRun *InstancePtr);
void XRun_Set_sharedMem(XRun *InstancePtr, u64 Data);
u64 XRun_Get_sharedMem(XRun *InstancePtr);
u32 XRun_Get_realTaskId_BaseAddress(XRun *InstancePtr);
u32 XRun_Get_realTaskId_HighAddress(XRun *InstancePtr);
u32 XRun_Get_realTaskId_TotalBytes(XRun *InstancePtr);
u32 XRun_Get_realTaskId_BitWidth(XRun *InstancePtr);
u32 XRun_Get_realTaskId_Depth(XRun *InstancePtr);
u32 XRun_Write_realTaskId_Words(XRun *InstancePtr, int offset, word_type *data, int length);
u32 XRun_Read_realTaskId_Words(XRun *InstancePtr, int offset, word_type *data, int length);
u32 XRun_Write_realTaskId_Bytes(XRun *InstancePtr, int offset, char *data, int length);
u32 XRun_Read_realTaskId_Bytes(XRun *InstancePtr, int offset, char *data, int length);
u32 XRun_Get_n_regions_in_BaseAddress(XRun *InstancePtr);
u32 XRun_Get_n_regions_in_HighAddress(XRun *InstancePtr);
u32 XRun_Get_n_regions_in_TotalBytes(XRun *InstancePtr);
u32 XRun_Get_n_regions_in_BitWidth(XRun *InstancePtr);
u32 XRun_Get_n_regions_in_Depth(XRun *InstancePtr);
u32 XRun_Write_n_regions_in_Words(XRun *InstancePtr, int offset, word_type *data, int length);
u32 XRun_Read_n_regions_in_Words(XRun *InstancePtr, int offset, word_type *data, int length);
u32 XRun_Write_n_regions_in_Bytes(XRun *InstancePtr, int offset, char *data, int length);
u32 XRun_Read_n_regions_in_Bytes(XRun *InstancePtr, int offset, char *data, int length);
u32 XRun_Get_trainedRegions_BaseAddress(XRun *InstancePtr);
u32 XRun_Get_trainedRegions_HighAddress(XRun *InstancePtr);
u32 XRun_Get_trainedRegions_TotalBytes(XRun *InstancePtr);
u32 XRun_Get_trainedRegions_BitWidth(XRun *InstancePtr);
u32 XRun_Get_trainedRegions_Depth(XRun *InstancePtr);
u32 XRun_Write_trainedRegions_Words(XRun *InstancePtr, int offset, word_type *data, int length);
u32 XRun_Read_trainedRegions_Words(XRun *InstancePtr, int offset, word_type *data, int length);
u32 XRun_Write_trainedRegions_Bytes(XRun *InstancePtr, int offset, char *data, int length);
u32 XRun_Read_trainedRegions_Bytes(XRun *InstancePtr, int offset, char *data, int length);

void XRun_InterruptGlobalEnable(XRun *InstancePtr);
void XRun_InterruptGlobalDisable(XRun *InstancePtr);
void XRun_InterruptEnable(XRun *InstancePtr, u32 Mask);
void XRun_InterruptDisable(XRun *InstancePtr, u32 Mask);
void XRun_InterruptClear(XRun *InstancePtr, u32 Mask);
u32 XRun_InterruptGetEnabled(XRun *InstancePtr);
u32 XRun_InterruptGetStatus(XRun *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
