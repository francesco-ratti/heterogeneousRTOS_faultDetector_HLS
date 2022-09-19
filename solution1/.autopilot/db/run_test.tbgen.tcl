set moduleName run_test
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
set C_modelName {run_test}
set C_modelType { int 1 }
set C_modelArgList {
	{ p_read1 int 16 regular  }
	{ data_0 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_1 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_2 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_3 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_4 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_5 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_6 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ data_7 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read1 sc_in sc_lv 16 signal 0 } 
	{ data_0_address0 sc_out sc_lv 7 signal 1 } 
	{ data_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_0_q0 sc_in sc_lv 32 signal 1 } 
	{ data_1_address0 sc_out sc_lv 7 signal 2 } 
	{ data_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_1_q0 sc_in sc_lv 32 signal 2 } 
	{ data_2_address0 sc_out sc_lv 7 signal 3 } 
	{ data_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_2_q0 sc_in sc_lv 32 signal 3 } 
	{ data_3_address0 sc_out sc_lv 7 signal 4 } 
	{ data_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_3_q0 sc_in sc_lv 32 signal 4 } 
	{ data_4_address0 sc_out sc_lv 7 signal 5 } 
	{ data_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_4_q0 sc_in sc_lv 32 signal 5 } 
	{ data_5_address0 sc_out sc_lv 7 signal 6 } 
	{ data_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_5_q0 sc_in sc_lv 32 signal 6 } 
	{ data_6_address0 sc_out sc_lv 7 signal 7 } 
	{ data_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_6_q0 sc_in sc_lv 32 signal 7 } 
	{ data_7_address0 sc_out sc_lv 7 signal 8 } 
	{ data_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ data_7_q0 sc_in sc_lv 32 signal 8 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "data_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_0", "role": "address0" }} , 
 	{ "name": "data_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "ce0" }} , 
 	{ "name": "data_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_0", "role": "q0" }} , 
 	{ "name": "data_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_1", "role": "address0" }} , 
 	{ "name": "data_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_1", "role": "ce0" }} , 
 	{ "name": "data_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_1", "role": "q0" }} , 
 	{ "name": "data_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_2", "role": "address0" }} , 
 	{ "name": "data_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_2", "role": "ce0" }} , 
 	{ "name": "data_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_2", "role": "q0" }} , 
 	{ "name": "data_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_3", "role": "address0" }} , 
 	{ "name": "data_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_3", "role": "ce0" }} , 
 	{ "name": "data_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_3", "role": "q0" }} , 
 	{ "name": "data_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_4", "role": "address0" }} , 
 	{ "name": "data_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_4", "role": "ce0" }} , 
 	{ "name": "data_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_4", "role": "q0" }} , 
 	{ "name": "data_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_5", "role": "address0" }} , 
 	{ "name": "data_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_5", "role": "ce0" }} , 
 	{ "name": "data_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_5", "role": "q0" }} , 
 	{ "name": "data_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_6", "role": "address0" }} , 
 	{ "name": "data_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_6", "role": "ce0" }} , 
 	{ "name": "data_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_6", "role": "q0" }} , 
 	{ "name": "data_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_7", "role": "address0" }} , 
 	{ "name": "data_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_7", "role": "ce0" }} , 
 	{ "name": "data_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_7", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "18", "19"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "find_region",
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
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_29", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U12", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U13", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U14", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U15", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U16", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U17", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U18", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U20", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U21", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U23", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U24", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U25", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U26", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_166.fcmp_32ns_32ns_1_2_no_dsp_1_U27", "Parent" : "1"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U37", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U38", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_test {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		data_0 {Type I LastRead 0 FirstWrite -1}
		data_1 {Type I LastRead 3 FirstWrite -1}
		data_2 {Type I LastRead 6 FirstWrite -1}
		data_3 {Type I LastRead 9 FirstWrite -1}
		data_4 {Type I LastRead 12 FirstWrite -1}
		data_5 {Type I LastRead 15 FirstWrite -1}
		data_6 {Type I LastRead 18 FirstWrite -1}
		data_7 {Type I LastRead 21 FirstWrite -1}}
	find_region {
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_23 {Type I LastRead 0 FirstWrite -1}
		d_read_24 {Type I LastRead 0 FirstWrite -1}
		d_read_25 {Type I LastRead 0 FirstWrite -1}
		d_read_26 {Type I LastRead 0 FirstWrite -1}
		d_read_27 {Type I LastRead 0 FirstWrite -1}
		d_read_28 {Type I LastRead 0 FirstWrite -1}
		d_read_29 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
	data_0 { ap_memory {  { data_0_address0 mem_address 1 7 }  { data_0_ce0 mem_ce 1 1 }  { data_0_q0 in_data 0 32 } } }
	data_1 { ap_memory {  { data_1_address0 mem_address 1 7 }  { data_1_ce0 mem_ce 1 1 }  { data_1_q0 in_data 0 32 } } }
	data_2 { ap_memory {  { data_2_address0 mem_address 1 7 }  { data_2_ce0 mem_ce 1 1 }  { data_2_q0 in_data 0 32 } } }
	data_3 { ap_memory {  { data_3_address0 mem_address 1 7 }  { data_3_ce0 mem_ce 1 1 }  { data_3_q0 in_data 0 32 } } }
	data_4 { ap_memory {  { data_4_address0 mem_address 1 7 }  { data_4_ce0 mem_ce 1 1 }  { data_4_q0 in_data 0 32 } } }
	data_5 { ap_memory {  { data_5_address0 mem_address 1 7 }  { data_5_ce0 mem_ce 1 1 }  { data_5_q0 in_data 0 32 } } }
	data_6 { ap_memory {  { data_6_address0 mem_address 1 7 }  { data_6_ce0 mem_ce 1 1 }  { data_6_q0 in_data 0 32 } } }
	data_7 { ap_memory {  { data_7_address0 mem_address 1 7 }  { data_7_ce0 mem_ce 1 1 }  { data_7_q0 in_data 0 32 } } }
}
