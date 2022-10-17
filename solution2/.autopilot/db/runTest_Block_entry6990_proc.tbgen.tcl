set moduleName runTest_Block_entry6990_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {runTest_Block_entry6990_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 1 regular  }
	{ p_read1 int 4 regular  }
	{ errorInTask int 8 regular {array 16 { 2 } 1 1 }  }
	{ p_read2 int 8 regular  }
	{ p_read3 int 8 regular  }
	{ p_read4 int 8 regular  }
	{ p_read5 int 16 regular  }
	{ outcomeInRam int 288 regular {array 16 { 0 } 1 1 }  }
	{ AOV float 32 regular {fifo 0}  }
	{ AOV_1 float 32 regular {fifo 0}  }
	{ AOV_2 float 32 regular {fifo 0}  }
	{ AOV_3 float 32 regular {fifo 0}  }
	{ AOV_4 float 32 regular {fifo 0}  }
	{ AOV_5 float 32 regular {fifo 0}  }
	{ AOV_6 float 32 regular {fifo 0}  }
	{ AOV_7 float 32 regular {fifo 0}  }
	{ failedTask int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "errorInTask", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outcomeInRam", "interface" : "memory", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "failedTask", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 1 signal 0 } 
	{ p_read1 sc_in sc_lv 4 signal 1 } 
	{ errorInTask_address0 sc_out sc_lv 4 signal 2 } 
	{ errorInTask_ce0 sc_out sc_logic 1 signal 2 } 
	{ errorInTask_we0 sc_out sc_logic 1 signal 2 } 
	{ errorInTask_d0 sc_out sc_lv 8 signal 2 } 
	{ errorInTask_q0 sc_in sc_lv 8 signal 2 } 
	{ p_read2 sc_in sc_lv 8 signal 3 } 
	{ p_read3 sc_in sc_lv 8 signal 4 } 
	{ p_read4 sc_in sc_lv 8 signal 5 } 
	{ p_read5 sc_in sc_lv 16 signal 6 } 
	{ outcomeInRam_address0 sc_out sc_lv 4 signal 7 } 
	{ outcomeInRam_ce0 sc_out sc_logic 1 signal 7 } 
	{ outcomeInRam_we0 sc_out sc_lv 36 signal 7 } 
	{ outcomeInRam_d0 sc_out sc_lv 288 signal 7 } 
	{ AOV_dout sc_in sc_lv 32 signal 8 } 
	{ AOV_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ AOV_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ AOV_empty_n sc_in sc_logic 1 signal 8 } 
	{ AOV_read sc_out sc_logic 1 signal 8 } 
	{ AOV_1_dout sc_in sc_lv 32 signal 9 } 
	{ AOV_1_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ AOV_1_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ AOV_1_empty_n sc_in sc_logic 1 signal 9 } 
	{ AOV_1_read sc_out sc_logic 1 signal 9 } 
	{ AOV_2_dout sc_in sc_lv 32 signal 10 } 
	{ AOV_2_num_data_valid sc_in sc_lv 2 signal 10 } 
	{ AOV_2_fifo_cap sc_in sc_lv 2 signal 10 } 
	{ AOV_2_empty_n sc_in sc_logic 1 signal 10 } 
	{ AOV_2_read sc_out sc_logic 1 signal 10 } 
	{ AOV_3_dout sc_in sc_lv 32 signal 11 } 
	{ AOV_3_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ AOV_3_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ AOV_3_empty_n sc_in sc_logic 1 signal 11 } 
	{ AOV_3_read sc_out sc_logic 1 signal 11 } 
	{ AOV_4_dout sc_in sc_lv 32 signal 12 } 
	{ AOV_4_num_data_valid sc_in sc_lv 2 signal 12 } 
	{ AOV_4_fifo_cap sc_in sc_lv 2 signal 12 } 
	{ AOV_4_empty_n sc_in sc_logic 1 signal 12 } 
	{ AOV_4_read sc_out sc_logic 1 signal 12 } 
	{ AOV_5_dout sc_in sc_lv 32 signal 13 } 
	{ AOV_5_num_data_valid sc_in sc_lv 2 signal 13 } 
	{ AOV_5_fifo_cap sc_in sc_lv 2 signal 13 } 
	{ AOV_5_empty_n sc_in sc_logic 1 signal 13 } 
	{ AOV_5_read sc_out sc_logic 1 signal 13 } 
	{ AOV_6_dout sc_in sc_lv 32 signal 14 } 
	{ AOV_6_num_data_valid sc_in sc_lv 2 signal 14 } 
	{ AOV_6_fifo_cap sc_in sc_lv 2 signal 14 } 
	{ AOV_6_empty_n sc_in sc_logic 1 signal 14 } 
	{ AOV_6_read sc_out sc_logic 1 signal 14 } 
	{ AOV_7_dout sc_in sc_lv 32 signal 15 } 
	{ AOV_7_num_data_valid sc_in sc_lv 2 signal 15 } 
	{ AOV_7_fifo_cap sc_in sc_lv 2 signal 15 } 
	{ AOV_7_empty_n sc_in sc_logic 1 signal 15 } 
	{ AOV_7_read sc_out sc_logic 1 signal 15 } 
	{ failedTask sc_out sc_lv 16 signal 16 } 
	{ failedTask_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ failedTask_ap_ack sc_in sc_logic 1 outacc 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "errorInTask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask", "role": "address0" }} , 
 	{ "name": "errorInTask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "ce0" }} , 
 	{ "name": "errorInTask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "we0" }} , 
 	{ "name": "errorInTask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "d0" }} , 
 	{ "name": "errorInTask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "q0" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "outcomeInRam_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "address0" }} , 
 	{ "name": "outcomeInRam_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "ce0" }} , 
 	{ "name": "outcomeInRam_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "we0" }} , 
 	{ "name": "outcomeInRam_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "d0" }} , 
 	{ "name": "AOV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV", "role": "dout" }} , 
 	{ "name": "AOV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV", "role": "num_data_valid" }} , 
 	{ "name": "AOV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV", "role": "fifo_cap" }} , 
 	{ "name": "AOV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV", "role": "empty_n" }} , 
 	{ "name": "AOV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV", "role": "read" }} , 
 	{ "name": "AOV_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_1", "role": "dout" }} , 
 	{ "name": "AOV_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_1", "role": "num_data_valid" }} , 
 	{ "name": "AOV_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_1", "role": "fifo_cap" }} , 
 	{ "name": "AOV_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_1", "role": "empty_n" }} , 
 	{ "name": "AOV_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_1", "role": "read" }} , 
 	{ "name": "AOV_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_2", "role": "dout" }} , 
 	{ "name": "AOV_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_2", "role": "num_data_valid" }} , 
 	{ "name": "AOV_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_2", "role": "fifo_cap" }} , 
 	{ "name": "AOV_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_2", "role": "empty_n" }} , 
 	{ "name": "AOV_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_2", "role": "read" }} , 
 	{ "name": "AOV_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_3", "role": "dout" }} , 
 	{ "name": "AOV_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_3", "role": "num_data_valid" }} , 
 	{ "name": "AOV_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_3", "role": "fifo_cap" }} , 
 	{ "name": "AOV_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_3", "role": "empty_n" }} , 
 	{ "name": "AOV_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_3", "role": "read" }} , 
 	{ "name": "AOV_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_4", "role": "dout" }} , 
 	{ "name": "AOV_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_4", "role": "num_data_valid" }} , 
 	{ "name": "AOV_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_4", "role": "fifo_cap" }} , 
 	{ "name": "AOV_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_4", "role": "empty_n" }} , 
 	{ "name": "AOV_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_4", "role": "read" }} , 
 	{ "name": "AOV_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_5", "role": "dout" }} , 
 	{ "name": "AOV_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_5", "role": "num_data_valid" }} , 
 	{ "name": "AOV_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_5", "role": "fifo_cap" }} , 
 	{ "name": "AOV_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_5", "role": "empty_n" }} , 
 	{ "name": "AOV_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_5", "role": "read" }} , 
 	{ "name": "AOV_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_6", "role": "dout" }} , 
 	{ "name": "AOV_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_6", "role": "num_data_valid" }} , 
 	{ "name": "AOV_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_6", "role": "fifo_cap" }} , 
 	{ "name": "AOV_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_6", "role": "empty_n" }} , 
 	{ "name": "AOV_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_6", "role": "read" }} , 
 	{ "name": "AOV_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_7", "role": "dout" }} , 
 	{ "name": "AOV_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_7", "role": "num_data_valid" }} , 
 	{ "name": "AOV_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_7", "role": "fifo_cap" }} , 
 	{ "name": "AOV_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_7", "role": "empty_n" }} , 
 	{ "name": "AOV_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_7", "role": "read" }} , 
 	{ "name": "failedTask", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "failedTask", "role": "default" }} , 
 	{ "name": "failedTask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "failedTask", "role": "ap_vld" }} , 
 	{ "name": "failedTask_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "failedTask", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6"],
		"CDFG" : "runTest_Block_entry6990_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_writeOutcome_fu_226", "Port" : "errorInTask", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_writeOutcome_fu_226", "Port" : "outcomeInRam", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "AOV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_writeOutcome_fu_226", "Port" : "failedTask", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL22failedTaskExecutionIds_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_14", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "errorInTask1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "failedTaskExecutionId_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "executionId", "Type" : "None", "Direction" : "I"},
			{"Name" : "uniId", "Type" : "None", "Direction" : "I"},
			{"Name" : "error", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "failedTask_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.outcome_AOV_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.grp_writeOutcome_Pipeline_1_fu_315", "Parent" : "1", "Child" : ["4", "5"],
		"CDFG" : "writeOutcome_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcome_AOV", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.grp_writeOutcome_Pipeline_1_fu_315.mux_84_32_1_1_U889", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.grp_writeOutcome_Pipeline_1_fu_315.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_failedTask_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runTest_Block_entry6990_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		errorInTask {Type IO LastRead 0 FirstWrite 1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		AOV {Type I LastRead 0 FirstWrite -1}
		AOV_1 {Type I LastRead 0 FirstWrite -1}
		AOV_2 {Type I LastRead 0 FirstWrite -1}
		AOV_3 {Type I LastRead 0 FirstWrite -1}
		AOV_4 {Type I LastRead 0 FirstWrite -1}
		AOV_5 {Type I LastRead 0 FirstWrite -1}
		AOV_6 {Type I LastRead 0 FirstWrite -1}
		AOV_7 {Type I LastRead 0 FirstWrite -1}
		failedTask {Type O LastRead -1 FirstWrite 7}
		p_ZL22failedTaskExecutionIds_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_14 {Type IO LastRead -1 FirstWrite -1}}
	writeOutcome {
		errorInTask {Type IO LastRead 0 FirstWrite 1}
		errorInTask1 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		failedTaskExecutionId_read {Type I LastRead 1 FirstWrite -1}
		checkId {Type I LastRead 1 FirstWrite -1}
		taskId {Type I LastRead 1 FirstWrite -1}
		executionId {Type I LastRead 1 FirstWrite -1}
		uniId {Type I LastRead 1 FirstWrite -1}
		error {Type I LastRead 1 FirstWrite -1}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		failedTask {Type O LastRead -1 FirstWrite 7}}
	writeOutcome_Pipeline_1 {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		outcome_AOV {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 4 } } }
	errorInTask { ap_memory {  { errorInTask_address0 mem_address 1 4 }  { errorInTask_ce0 mem_ce 1 1 }  { errorInTask_we0 mem_we 1 1 }  { errorInTask_d0 mem_din 1 8 }  { errorInTask_q0 mem_dout 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	outcomeInRam { ap_memory {  { outcomeInRam_address0 mem_address 1 4 }  { outcomeInRam_ce0 mem_ce 1 1 }  { outcomeInRam_we0 mem_we 1 36 }  { outcomeInRam_d0 mem_din 1 288 } } }
	AOV { ap_fifo {  { AOV_dout fifo_port_we 0 32 }  { AOV_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_fifo_cap fifo_update 0 2 }  { AOV_empty_n fifo_status 0 1 }  { AOV_read fifo_data 1 1 } } }
	AOV_1 { ap_fifo {  { AOV_1_dout fifo_port_we 0 32 }  { AOV_1_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_1_fifo_cap fifo_update 0 2 }  { AOV_1_empty_n fifo_status 0 1 }  { AOV_1_read fifo_data 1 1 } } }
	AOV_2 { ap_fifo {  { AOV_2_dout fifo_port_we 0 32 }  { AOV_2_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_2_fifo_cap fifo_update 0 2 }  { AOV_2_empty_n fifo_status 0 1 }  { AOV_2_read fifo_data 1 1 } } }
	AOV_3 { ap_fifo {  { AOV_3_dout fifo_port_we 0 32 }  { AOV_3_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_3_fifo_cap fifo_update 0 2 }  { AOV_3_empty_n fifo_status 0 1 }  { AOV_3_read fifo_data 1 1 } } }
	AOV_4 { ap_fifo {  { AOV_4_dout fifo_port_we 0 32 }  { AOV_4_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_4_fifo_cap fifo_update 0 2 }  { AOV_4_empty_n fifo_status 0 1 }  { AOV_4_read fifo_data 1 1 } } }
	AOV_5 { ap_fifo {  { AOV_5_dout fifo_port_we 0 32 }  { AOV_5_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_5_fifo_cap fifo_update 0 2 }  { AOV_5_empty_n fifo_status 0 1 }  { AOV_5_read fifo_data 1 1 } } }
	AOV_6 { ap_fifo {  { AOV_6_dout fifo_port_we 0 32 }  { AOV_6_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_6_fifo_cap fifo_update 0 2 }  { AOV_6_empty_n fifo_status 0 1 }  { AOV_6_read fifo_data 1 1 } } }
	AOV_7 { ap_fifo {  { AOV_7_dout fifo_port_we 0 32 }  { AOV_7_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_7_fifo_cap fifo_update 0 2 }  { AOV_7_empty_n fifo_status 0 1 }  { AOV_7_read fifo_data 1 1 } } }
	failedTask { ap_hs {  { failedTask out_data 1 16 }  { failedTask_ap_vld out_vld 1 1 }  { failedTask_ap_ack out_acc 0 1 } } }
}
