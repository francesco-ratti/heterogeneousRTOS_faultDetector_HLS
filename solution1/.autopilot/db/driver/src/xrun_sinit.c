// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xrun.h"

extern XRun_Config XRun_ConfigTable[];

XRun_Config *XRun_LookupConfig(u16 DeviceId) {
	XRun_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRUN_NUM_INSTANCES; Index++) {
		if (XRun_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRun_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRun_Initialize(XRun *InstancePtr, u16 DeviceId) {
	XRun_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRun_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRun_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

