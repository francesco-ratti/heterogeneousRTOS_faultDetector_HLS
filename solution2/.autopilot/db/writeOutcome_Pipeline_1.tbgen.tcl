set moduleName writeOutcome_Pipeline_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {writeOutcome_Pipeline_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ contr_AOV_load float 32 regular  }
	{ contr_AOV_1_load float 32 regular  }
	{ contr_AOV_2_load float 32 regular  }
	{ contr_AOV_3_load float 32 regular  }
	{ contr_AOV_4_load float 32 regular  }
	{ contr_AOV_5_load float 32 regular  }
	{ contr_AOV_6_load float 32 regular  }
	{ contr_AOV_7_load float 32 regular  }
	{ outcome_AOV float 32 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "contr_AOV_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_4_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_5_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_6_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "contr_AOV_7_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "outcome_AOV", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ contr_AOV_load sc_in sc_lv 32 signal 0 } 
	{ contr_AOV_1_load sc_in sc_lv 32 signal 1 } 
	{ contr_AOV_2_load sc_in sc_lv 32 signal 2 } 
	{ contr_AOV_3_load sc_in sc_lv 32 signal 3 } 
	{ contr_AOV_4_load sc_in sc_lv 32 signal 4 } 
	{ contr_AOV_5_load sc_in sc_lv 32 signal 5 } 
	{ contr_AOV_6_load sc_in sc_lv 32 signal 6 } 
	{ contr_AOV_7_load sc_in sc_lv 32 signal 7 } 
	{ outcome_AOV_address0 sc_out sc_lv 3 signal 8 } 
	{ outcome_AOV_ce0 sc_out sc_logic 1 signal 8 } 
	{ outcome_AOV_we0 sc_out sc_logic 1 signal 8 } 
	{ outcome_AOV_d0 sc_out sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "contr_AOV_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_load", "role": "default" }} , 
 	{ "name": "contr_AOV_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_1_load", "role": "default" }} , 
 	{ "name": "contr_AOV_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_2_load", "role": "default" }} , 
 	{ "name": "contr_AOV_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_3_load", "role": "default" }} , 
 	{ "name": "contr_AOV_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_4_load", "role": "default" }} , 
 	{ "name": "contr_AOV_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_5_load", "role": "default" }} , 
 	{ "name": "contr_AOV_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_6_load", "role": "default" }} , 
 	{ "name": "contr_AOV_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "contr_AOV_7_load", "role": "default" }} , 
 	{ "name": "outcome_AOV_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outcome_AOV", "role": "address0" }} , 
 	{ "name": "outcome_AOV_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcome_AOV", "role": "ce0" }} , 
 	{ "name": "outcome_AOV_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcome_AOV", "role": "we0" }} , 
 	{ "name": "outcome_AOV_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outcome_AOV", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "contr_AOV_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcome_AOV", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U77", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	writeOutcome_Pipeline_1 {
		contr_AOV_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_1_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_2_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_3_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_4_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_5_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_6_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_7_load {Type I LastRead 0 FirstWrite -1}
		outcome_AOV {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	contr_AOV_load { ap_none {  { contr_AOV_load in_data 0 32 } } }
	contr_AOV_1_load { ap_none {  { contr_AOV_1_load in_data 0 32 } } }
	contr_AOV_2_load { ap_none {  { contr_AOV_2_load in_data 0 32 } } }
	contr_AOV_3_load { ap_none {  { contr_AOV_3_load in_data 0 32 } } }
	contr_AOV_4_load { ap_none {  { contr_AOV_4_load in_data 0 32 } } }
	contr_AOV_5_load { ap_none {  { contr_AOV_5_load in_data 0 32 } } }
	contr_AOV_6_load { ap_none {  { contr_AOV_6_load in_data 0 32 } } }
	contr_AOV_7_load { ap_none {  { contr_AOV_7_load in_data 0 32 } } }
	outcome_AOV { ap_memory {  { outcome_AOV_address0 mem_address 1 3 }  { outcome_AOV_ce0 mem_ce 1 1 }  { outcome_AOV_we0 mem_we 1 1 }  { outcome_AOV_d0 mem_din 1 32 } } }
}
