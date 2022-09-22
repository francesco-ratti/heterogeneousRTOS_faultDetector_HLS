set moduleName runTestAfterInit_Block_entry68_proc
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
set C_modelName {runTestAfterInit_Block_entry68_proc}
set C_modelType { int 8 }
set C_modelArgList {
	{ checkId int 16 regular  }
	{ checkId_c16 int 16 regular {fifo 1}  }
	{ n_regions_V int 8 regular {array 64 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "checkId", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "checkId_c16", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_regions_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ checkId sc_in sc_lv 16 signal 0 } 
	{ checkId_c16_din sc_out sc_lv 16 signal 1 } 
	{ checkId_c16_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ checkId_c16_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ checkId_c16_full_n sc_in sc_logic 1 signal 1 } 
	{ checkId_c16_write sc_out sc_logic 1 signal 1 } 
	{ n_regions_V_address0 sc_out sc_lv 6 signal 2 } 
	{ n_regions_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ n_regions_V_q0 sc_in sc_lv 8 signal 2 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "checkId", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checkId", "role": "default" }} , 
 	{ "name": "checkId_c16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checkId_c16", "role": "din" }} , 
 	{ "name": "checkId_c16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "checkId_c16", "role": "num_data_valid" }} , 
 	{ "name": "checkId_c16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "checkId_c16", "role": "fifo_cap" }} , 
 	{ "name": "checkId_c16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checkId_c16", "role": "full_n" }} , 
 	{ "name": "checkId_c16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checkId_c16", "role": "write" }} , 
 	{ "name": "n_regions_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_regions_V", "role": "address0" }} , 
 	{ "name": "n_regions_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "ce0" }} , 
 	{ "name": "n_regions_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "runTestAfterInit_Block_entry68_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_c16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	runTestAfterInit_Block_entry68_proc {
		checkId {Type I LastRead 0 FirstWrite -1}
		checkId_c16 {Type O LastRead -1 FirstWrite 0}
		n_regions_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	checkId { ap_none {  { checkId in_data 0 16 } } }
	checkId_c16 { ap_fifo {  { checkId_c16_din fifo_port_we 1 16 }  { checkId_c16_num_data_valid fifo_status_num_data_valid 0 5 }  { checkId_c16_fifo_cap fifo_update 0 5 }  { checkId_c16_full_n fifo_status 0 1 }  { checkId_c16_write fifo_data 1 1 } } }
	n_regions_V { ap_memory {  { n_regions_V_address0 mem_address 1 6 }  { n_regions_V_ce0 mem_ce 1 1 }  { n_regions_V_q0 in_data 0 8 } } }
}
