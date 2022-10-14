set moduleName resetError
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
set C_modelName {resetError}
set C_modelType { void 0 }
set C_modelArgList {
	{ errorInTask int 8 regular {array 16 { 2 } 1 1 }  }
	{ errorInTask1 int 4 regular  }
	{ failedTaskExecutionId_V_read int 8 regular  }
	{ executionId int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "errorInTask", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "errorInTask1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "failedTaskExecutionId_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "executionId", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ errorInTask_address0 sc_out sc_lv 4 signal 0 } 
	{ errorInTask_ce0 sc_out sc_logic 1 signal 0 } 
	{ errorInTask_we0 sc_out sc_logic 1 signal 0 } 
	{ errorInTask_d0 sc_out sc_lv 8 signal 0 } 
	{ errorInTask_q0 sc_in sc_lv 8 signal 0 } 
	{ errorInTask1 sc_in sc_lv 4 signal 1 } 
	{ failedTaskExecutionId_V_read sc_in sc_lv 8 signal 2 } 
	{ executionId sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "errorInTask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask", "role": "address0" }} , 
 	{ "name": "errorInTask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "ce0" }} , 
 	{ "name": "errorInTask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "we0" }} , 
 	{ "name": "errorInTask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "d0" }} , 
 	{ "name": "errorInTask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "q0" }} , 
 	{ "name": "errorInTask1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask1", "role": "default" }} , 
 	{ "name": "failedTaskExecutionId_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "failedTaskExecutionId_V_read", "role": "default" }} , 
 	{ "name": "executionId", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "executionId", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "resetError",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
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
			{"Name" : "failedTaskExecutionId_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "executionId", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	resetError {
		errorInTask {Type IO LastRead 0 FirstWrite 1}
		errorInTask1 {Type I LastRead 0 FirstWrite -1}
		failedTaskExecutionId_V_read {Type I LastRead 1 FirstWrite -1}
		executionId {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	errorInTask { ap_memory {  { errorInTask_address0 mem_address 1 4 }  { errorInTask_ce0 mem_ce 1 1 }  { errorInTask_we0 mem_we 1 1 }  { errorInTask_d0 mem_din 1 8 }  { errorInTask_q0 in_data 0 8 } } }
	errorInTask1 { ap_none {  { errorInTask1 in_data 0 4 } } }
	failedTaskExecutionId_V_read { ap_none {  { failedTaskExecutionId_V_read in_data 0 8 } } }
	executionId { ap_none {  { executionId in_data 0 8 } } }
}
