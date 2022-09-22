set moduleName run
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {run}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 256 regular {axi_master 2}  }
	{ contr int 48 regular {axi_slave 0}  }
	{ trainedRegions int 32 unused {axi_slave 3}  }
	{ realcheckId int 8 unused {axi_slave 3}  }
	{ n_regions_in int 8 regular {axi_slave 0}  }
	{ sharedMem int 64 regular {axi_slave 0}  }
	{ toScheduler int 8 regular {axi_s 1 volatile  { toScheduler Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "sharedMem","offset": { "type": "dynamic","port_name": "sharedMem","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "contr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 48, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "trainedRegions", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "NONE", "offset" : {"in":262144}, "offset_end" : {"in":524287}} , 
 	{ "Name" : "realcheckId", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "NONE", "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "n_regions_in", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":191}} , 
 	{ "Name" : "sharedMem", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "toScheduler", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ toScheduler_TDATA sc_out sc_lv 8 signal 6 } 
	{ toScheduler_TVALID sc_out sc_logic 1 outvld 6 } 
	{ toScheduler_TREADY sc_in sc_logic 1 outacc 6 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 19 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 19 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"continue","value":"0","valid_bit":"4"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"contr","role":"data","value":"16"},{"name":"sharedMem","role":"data","value":"28"},{"name":"realcheckId","role":"data","value":"64"},{"name":"n_regions_in","role":"data","value":"128"},{"name":"trainedRegions","role":"data","value":"262144"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"done","value":"0","valid_bit":"1"},{"name":"run","role":"idle","value":"0","valid_bit":"2"},{"name":"run","role":"ready","value":"0","valid_bit":"3"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"realcheckId","role":"data","value":"64"},{"name":"trainedRegions","role":"data","value":"262144"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "toScheduler_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "toScheduler", "role": "TDATA" }} , 
 	{ "name": "toScheduler_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "toScheduler", "role": "TVALID" }} , 
 	{ "name": "toScheduler_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "toScheduler", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "30", "31", "32"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "contr", "Type" : "None", "Direction" : "I"},
			{"Name" : "trainedRegions", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "realcheckId", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "n_regions_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sharedMem", "Type" : "None", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "toScheduler", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fsmstate", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "n_regions_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTestAfterInit_fu_369", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_417_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_regions_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369", "Parent" : "0", "Child" : ["3", "4", "5", "6", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "runTestAfterInit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc_U0"},
			{"ID" : "4", "Name" : "read_test_U0"},
			{"ID" : "5", "Name" : "runTestAfterInit_Block_entry68_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "writeOutcome_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "writeOutcome_U0", "Port" : "gmem"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "gmem"}]},
			{"Name" : "inputDataInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "writeOutcome_U0", "Port" : "toScheduler"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data"},
					{"ID" : "4", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "runTestAfterInit_Block_entry68_proc_U0", "Port" : "n_regions_V"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.entry_proc_U0", "Parent" : "2",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "24", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "taskId_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "25", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outcomeInRam_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.read_test_U0", "Parent" : "2",
		"CDFG" : "read_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "71", "EstimateLatencyMin" : "71", "EstimateLatencyMax" : "71",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputDataInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "16"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "17"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "18"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "19"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "20"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "21"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "22"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "23"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.runTestAfterInit_Block_entry68_proc_U0", "Parent" : "2",
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
			{"Name" : "checkId_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "26", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_c16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0", "Parent" : "2", "Child" : ["7", "12", "13", "14"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "72", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "checkId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "26", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "27", "DependentChanDepth" : "10", "DependentChanType" : "1"},
			{"Name" : "checkId_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "28", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "16"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "17"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "18"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "19"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "20"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "21"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "22"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "23"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.grp_find_region_fu_208", "Parent" : "6", "Child" : ["8", "9", "10", "11"],
		"CDFG" : "find_region",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "54", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_21", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U20", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U21", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "7"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_x_U33", "Parent" : "6"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_x_U34", "Parent" : "6"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_x_U35", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.writeOutcome_U0", "Parent" : "2",
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "72", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeInRam", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "25", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outcomeInRam_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checkId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "28", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "24", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "taskId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "toScheduler_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4_U", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3_U", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2_U", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1_U", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_U", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.taskId_c_U", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.outcomeInRam_c_U", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.checkId_c16_U", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.n_regions_V_load_loc_channel_U", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.checkId_c_U", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_369.error_U", "Parent" : "2"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_toScheduler_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		gmem {Type IO LastRead 70 FirstWrite -1}
		contr {Type I LastRead 0 FirstWrite -1}
		trainedRegions {Type X LastRead -1 FirstWrite -1}
		realcheckId {Type X LastRead -1 FirstWrite -1}
		n_regions_in {Type I LastRead 1 FirstWrite -1}
		sharedMem {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 65}
		fsmstate {Type IO LastRead -1 FirstWrite -1}
		n_regions_V {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data {Type IO LastRead -1 FirstWrite -1}}
	runTestAfterInit {
		gmem {Type IO LastRead 70 FirstWrite -1}
		inputDataInRam {Type I LastRead 0 FirstWrite -1}
		taskId {Type I LastRead 0 FirstWrite -1}
		checkId {Type I LastRead 0 FirstWrite -1}
		outcomeInRam {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 65}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data {Type IO LastRead -1 FirstWrite -1}
		n_regions_V {Type I LastRead 0 FirstWrite -1}}
	entry_proc {
		taskId {Type I LastRead 0 FirstWrite -1}
		taskId_c {Type O LastRead -1 FirstWrite 0}
		outcomeInRam {Type I LastRead 0 FirstWrite -1}
		outcomeInRam_c {Type O LastRead -1 FirstWrite 0}}
	read_test {
		gmem {Type I LastRead 70 FirstWrite -1}
		inputDataInRam {Type I LastRead 0 FirstWrite -1}
		checkId {Type I LastRead 7 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1 {Type O LastRead -1 FirstWrite 71}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data {Type O LastRead -1 FirstWrite 71}}
	runTestAfterInit_Block_entry68_proc {
		checkId {Type I LastRead 0 FirstWrite -1}
		checkId_c16 {Type O LastRead -1 FirstWrite 0}
		n_regions_V {Type I LastRead 0 FirstWrite -1}}
	run_test {
		checkId {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 7 FirstWrite -1}
		checkId_c {Type O LastRead -1 FirstWrite 0}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6 {Type I LastRead 2 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5 {Type I LastRead 4 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4 {Type I LastRead 6 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3 {Type I LastRead 8 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2 {Type I LastRead 11 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1 {Type I LastRead 13 FirstWrite -1}
		run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data {Type I LastRead 15 FirstWrite -1}}
	find_region {
		n_regions {Type I LastRead 0 FirstWrite -1}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_15 {Type I LastRead 0 FirstWrite -1}
		d_read_16 {Type I LastRead 1 FirstWrite -1}
		d_read_17 {Type I LastRead 2 FirstWrite -1}
		d_read_18 {Type I LastRead 2 FirstWrite -1}
		d_read_19 {Type I LastRead 3 FirstWrite -1}
		d_read_20 {Type I LastRead 0 FirstWrite -1}
		d_read_21 {Type I LastRead 3 FirstWrite -1}}
	writeOutcome {
		gmem {Type O LastRead 5 FirstWrite 2}
		outcomeInRam {Type I LastRead 0 FirstWrite -1}
		checkId {Type I LastRead 0 FirstWrite -1}
		taskId {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 65}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "148"}
	, {"Name" : "Interval", "Min" : "131", "Max" : "149"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 256 }  { m_axi_gmem_WSTRB STRB 1 32 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 256 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	toScheduler { axis {  { toScheduler_TDATA out_data 1 8 }  { toScheduler_TVALID out_vld 1 1 }  { toScheduler_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
