set moduleName handle_outcome
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {handle_outcome}
set C_modelType { void 0 }
set C_modelArgList {
	{ errorInTask int 8 regular {array 16 { 2 } 1 1 }  }
	{ outcomeInRam int 288 regular {array 16 { 0 } 0 1 }  }
	{ failedTask int 16 regular {pointer 1}  }
	{ destStream int 297 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "errorInTask", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outcomeInRam", "interface" : "memory", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "failedTask", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "destStream", "interface" : "fifo", "bitwidth" : 297, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ errorInTask_address0 sc_out sc_lv 4 signal 0 } 
	{ errorInTask_ce0 sc_out sc_logic 1 signal 0 } 
	{ errorInTask_we0 sc_out sc_logic 1 signal 0 } 
	{ errorInTask_d0 sc_out sc_lv 8 signal 0 } 
	{ errorInTask_q0 sc_in sc_lv 8 signal 0 } 
	{ outcomeInRam_address0 sc_out sc_lv 4 signal 1 } 
	{ outcomeInRam_ce0 sc_out sc_logic 1 signal 1 } 
	{ outcomeInRam_we0 sc_out sc_lv 36 signal 1 } 
	{ outcomeInRam_d0 sc_out sc_lv 288 signal 1 } 
	{ failedTask sc_out sc_lv 16 signal 2 } 
	{ failedTask_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ destStream_dout sc_in sc_lv 297 signal 3 } 
	{ destStream_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ destStream_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ destStream_empty_n sc_in sc_logic 1 signal 3 } 
	{ destStream_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "errorInTask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask", "role": "address0" }} , 
 	{ "name": "errorInTask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "ce0" }} , 
 	{ "name": "errorInTask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "we0" }} , 
 	{ "name": "errorInTask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "d0" }} , 
 	{ "name": "errorInTask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "q0" }} , 
 	{ "name": "outcomeInRam_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "address0" }} , 
 	{ "name": "outcomeInRam_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "ce0" }} , 
 	{ "name": "outcomeInRam_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "we0" }} , 
 	{ "name": "outcomeInRam_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "d0" }} , 
 	{ "name": "failedTask", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "failedTask", "role": "default" }} , 
 	{ "name": "failedTask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "failedTask", "role": "ap_vld" }} , 
 	{ "name": "destStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":297, "type": "signal", "bundle":{"name": "destStream", "role": "dout" }} , 
 	{ "name": "destStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "destStream", "role": "num_data_valid" }} , 
 	{ "name": "destStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "destStream", "role": "fifo_cap" }} , 
 	{ "name": "destStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "destStream", "role": "empty_n" }} , 
 	{ "name": "destStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "destStream", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "handle_outcome",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "errorInTask", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "failedTask", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "destStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "destStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL22failedTaskExecutionIds_0", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_1", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_2", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_3", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_4", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_5", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_6", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_7", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_8", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_9", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_10", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_11", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_12", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_13", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_14", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "p_ZL22failedTaskExecutionIds_15", "Type" : "Stable", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_AOV_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outcome_AOV_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_168_8_1_1_U166", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	handle_outcome {
		errorInTask {Type IO LastRead 4 FirstWrite 5}
		outcomeInRam {Type O LastRead -1 FirstWrite 9}
		failedTask {Type O LastRead -1 FirstWrite 9}
		destStream {Type I LastRead 0 FirstWrite -1}
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
		p_ZL22failedTaskExecutionIds_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL22failedTaskExecutionIds_15 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	errorInTask { ap_stable {  { errorInTask_address0 mem_address 1 4 }  { errorInTask_ce0 mem_ce 1 1 }  { errorInTask_we0 mem_we 1 1 }  { errorInTask_d0 mem_din 1 8 }  { errorInTask_q0 in_data 0 8 } } }
	outcomeInRam { ap_memory {  { outcomeInRam_address0 mem_address 1 4 }  { outcomeInRam_ce0 mem_ce 1 1 }  { outcomeInRam_we0 mem_we 1 36 }  { outcomeInRam_d0 mem_din 1 288 } } }
	failedTask { ap_vld {  { failedTask out_data 1 16 }  { failedTask_ap_vld out_vld 1 1 } } }
	destStream { ap_fifo {  { destStream_dout fifo_port_we 0 297 }  { destStream_num_data_valid fifo_status_num_data_valid 0 2 }  { destStream_fifo_cap fifo_update 0 2 }  { destStream_empty_n fifo_status 0 1 }  { destStream_read fifo_data 1 1 } } }
}
