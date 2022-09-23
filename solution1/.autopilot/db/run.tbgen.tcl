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
	{ gmem int 256 regular {axi_master 0}  }
	{ contr int 48 regular {axi_slave 0}  }
	{ trainedRegions int 32 unused {axi_slave 3}  }
	{ realcheckId int 8 unused {axi_slave 3}  }
	{ n_regions_in int 8 regular {axi_slave 0}  }
	{ sharedMem int 64 regular {axi_slave 0}  }
	{ toScheduler int 8 unused {axi_s 0 ""  { toScheduler Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "sharedMem","offset": { "type": "dynamic","port_name": "sharedMem","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "contr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 48, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "trainedRegions", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "NONE", "offset" : {"in":131072}, "offset_end" : {"in":262143}} , 
 	{ "Name" : "realcheckId", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "NONE", "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "n_regions_in", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":191}} , 
 	{ "Name" : "sharedMem", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "toScheduler", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} ]}
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
	{ toScheduler_TDATA sc_in sc_lv 8 signal 6 } 
	{ toScheduler_TVALID sc_in sc_logic 1 invld 6 } 
	{ toScheduler_TREADY sc_out sc_logic 1 inacc 6 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 18 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 18 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"continue","value":"0","valid_bit":"4"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"contr","role":"data","value":"16"},{"name":"sharedMem","role":"data","value":"28"},{"name":"realcheckId","role":"data","value":"64"},{"name":"n_regions_in","role":"data","value":"128"},{"name":"trainedRegions","role":"data","value":"131072"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"done","value":"0","valid_bit":"1"},{"name":"run","role":"idle","value":"0","valid_bit":"2"},{"name":"run","role":"ready","value":"0","valid_bit":"3"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"realcheckId","role":"data","value":"64"},{"name":"trainedRegions","role":"data","value":"131072"}] },
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
 	{ "name": "toScheduler_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "toScheduler", "role": "TDATA" }} , 
 	{ "name": "toScheduler_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "toScheduler", "role": "TVALID" }} , 
 	{ "name": "toScheduler_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "toScheduler", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "136", "137", "138"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "3207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "empty_20", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "contr", "Type" : "None", "Direction" : "I"},
			{"Name" : "trainedRegions", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "realcheckId", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "n_regions_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sharedMem", "Type" : "None", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "fsmstate", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "n_regions_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_runTrainAfterInit_fu_297", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_451_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_regions_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297", "Parent" : "0", "Child" : ["3", "4", "5", "127", "128", "129", "130", "131", "132", "133", "134", "135"],
		"CDFG" : "runTrainAfterInit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "86", "EstimateLatencyMax" : "3204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc_U0"},
			{"ID" : "4", "Name" : "read_train_U0"},
			{"ID" : "5", "Name" : "insert_point_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "read_train_U0"},
			{"ID" : "5", "Name" : "insert_point_U0"}],
		"Port" : [
			{"Name" : "empty_20", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "gmem"}]},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_33_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_33_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_34_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_34_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_35_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_35_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_36_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_36_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_37_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_37_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_38_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_38_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_39_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_39_out"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_train_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "insert_point_U0", "Port" : "n_regions"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.entry_proc_U0", "Parent" : "2",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "127", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.read_train_U0", "Parent" : "2",
		"CDFG" : "read_train",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
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
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "74", "FirstState" : "ap_ST_fsm_state73", "LastState" : ["ap_ST_fsm_state73"], "QuitState" : ["ap_ST_fsm_state73"], "PreState" : ["ap_ST_fsm_state72"], "PostState" : ["ap_ST_fsm_state74"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state73_blk"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0", "Parent" : "2", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "63", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126"],
		"CDFG" : "insert_point",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "3122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_0_0_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "127", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "regions_0_0_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_regions", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_4_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_4_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_5_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_5_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_5_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_6_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_6_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_6_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_7_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_7_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_7_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_8_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_8_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_8_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_9_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_9_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_9_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_10_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_10_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_10_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_11_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_11_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_11_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_12_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_12_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_12_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_13_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_13_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_13_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_14_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_14_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_14_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_15_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_15_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_find_region_fu_13972", "Port" : "regions_15_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "63", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Port" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29_U", "Parent" : "5"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28_U", "Parent" : "5"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27_U", "Parent" : "5"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26_U", "Parent" : "5"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25_U", "Parent" : "5"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24_U", "Parent" : "5"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23_U", "Parent" : "5"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22_U", "Parent" : "5"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21_U", "Parent" : "5"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19_U", "Parent" : "5"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18_U", "Parent" : "5"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17_U", "Parent" : "5"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16_U", "Parent" : "5"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15_U", "Parent" : "5"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14_U", "Parent" : "5"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13_U", "Parent" : "5"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12_U", "Parent" : "5"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11_U", "Parent" : "5"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10_U", "Parent" : "5"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14_U", "Parent" : "5"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13_U", "Parent" : "5"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12_U", "Parent" : "5"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11_U", "Parent" : "5"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10_U", "Parent" : "5"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9_U", "Parent" : "5"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8_U", "Parent" : "5"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7_U", "Parent" : "5"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6_U", "Parent" : "5"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8_U", "Parent" : "5"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7_U", "Parent" : "5"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6_U", "Parent" : "5"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5_U", "Parent" : "5"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4_U", "Parent" : "5"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3_U", "Parent" : "5"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2_U", "Parent" : "5"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1_U", "Parent" : "5"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_U", "Parent" : "5"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972", "Parent" : "5", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "find_region",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "789",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_0_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_6_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_7_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_7_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_7_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_8_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_8_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_8_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_9_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_9_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_9_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_10_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_10_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_10_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_11_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_11_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_11_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_12_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_12_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_12_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_13_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_13_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_13_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_14_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_14_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_14_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_15_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_15_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_15_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fsub_32ns_32ns_32_4_full_dsp_1_U22", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fsub_32ns_32ns_32_4_full_dsp_1_U23", "Parent" : "54"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fsub_32ns_32ns_32_4_full_dsp_1_U24", "Parent" : "54"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fdiv_32ns_32ns_32_9_no_dsp_1_U26", "Parent" : "54"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fcmp_32ns_32ns_1_2_no_dsp_1_U28", "Parent" : "54"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fcmp_32ns_32ns_1_2_no_dsp_1_U29", "Parent" : "54"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fcmp_32ns_32ns_1_2_no_dsp_1_U30", "Parent" : "54"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_find_region_fu_13972.fcmp_32ns_32ns_1_2_no_dsp_1_U31", "Parent" : "54"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091", "Parent" : "5", "Child" : ["64", "95"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_254_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2175", "EstimateLatencyMax" : "2175",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_0_0_offset_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_0_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_0_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_0_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_1_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_1_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_1_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_2_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_2_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_2_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_3_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_3_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_3_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_4_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_4_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_4_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_5_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_5_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_5_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_6_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_6_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_6_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_7_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_7_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_7_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_8_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_8_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_8_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_9_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_9_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_9_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_10_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_10_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_10_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_11_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_11_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_11_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_12_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_12_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_12_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_13_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_13_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_13_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_14_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_14_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_14_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_15_min", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_15_max", "Inst_start_state" : "2", "Inst_end_state" : "253"}]},
			{"Name" : "p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_find_closest_region_fu_186", "Port" : "regions_15_center", "Inst_start_state" : "2", "Inst_end_state" : "253"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_254_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "128", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage125", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage125_subdone", "QuitState" : "ap_ST_fsm_pp0_stage125", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage125_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186", "Parent" : "63", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "find_closest_region",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "128",
		"VariableLatency" : "0", "ExactLatency" : "251", "EstimateLatencyMin" : "251", "EstimateLatencyMax" : "251",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_0_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_0_min_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_0_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_0_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_5_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_5_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_5_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_6_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_6_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_6_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_7_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_7_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_7_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_8_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_8_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_8_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_9_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_9_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_9_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_10_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_10_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_10_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_11_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_11_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_11_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_12_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_12_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_12_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_13_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_13_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_13_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_14_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_14_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_14_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_15_min", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_15_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_15_center", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U93", "Parent" : "64"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U94", "Parent" : "64"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U95", "Parent" : "64"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U96", "Parent" : "64"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U97", "Parent" : "64"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U98", "Parent" : "64"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U99", "Parent" : "64"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.faddfsub_32ns_32ns_32_4_full_dsp_1_x_U100", "Parent" : "64"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.fmul_32ns_32ns_32_2_max_dsp_1_x_U101", "Parent" : "64"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.fmul_32ns_32ns_32_2_max_dsp_1_x_U102", "Parent" : "64"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.fcmp_32ns_32ns_1_2_no_dsp_1_x_U103", "Parent" : "64"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.fcmp_32ns_32ns_1_2_no_dsp_1_x_U104", "Parent" : "64"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.fcmp_32ns_32ns_1_2_no_dsp_1_x_U105", "Parent" : "64"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U106", "Parent" : "64"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U107", "Parent" : "64"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U108", "Parent" : "64"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U109", "Parent" : "64"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U110", "Parent" : "64"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U111", "Parent" : "64"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U112", "Parent" : "64"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U113", "Parent" : "64"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U114", "Parent" : "64"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_154_32_1_1_U115", "Parent" : "64"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_154_32_1_1_U116", "Parent" : "64"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_154_32_1_1_U117", "Parent" : "64"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_154_32_1_1_U118", "Parent" : "64"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_154_32_1_1_U119", "Parent" : "64"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U120", "Parent" : "64"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_164_32_1_1_U121", "Parent" : "64"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.grp_find_closest_region_fu_186.mux_154_32_1_1_U122", "Parent" : "64"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.grp_insert_point_Pipeline_VITIS_LOOP_254_3_fu_14091.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.faddfsub_32ns_32ns_32_4_full_dsp_1_U230", "Parent" : "5"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fmul_32ns_32ns_32_2_max_dsp_1_U231", "Parent" : "5"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U232", "Parent" : "5"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U233", "Parent" : "5"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U234", "Parent" : "5"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U235", "Parent" : "5"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U236", "Parent" : "5"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U237", "Parent" : "5"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U238", "Parent" : "5"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U239", "Parent" : "5"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U240", "Parent" : "5"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U241", "Parent" : "5"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U242", "Parent" : "5"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U243", "Parent" : "5"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U244", "Parent" : "5"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U245", "Parent" : "5"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U246", "Parent" : "5"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U247", "Parent" : "5"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U248", "Parent" : "5"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U249", "Parent" : "5"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U250", "Parent" : "5"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U251", "Parent" : "5"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U252", "Parent" : "5"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U253", "Parent" : "5"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U254", "Parent" : "5"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U255", "Parent" : "5"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.mux_1632_32_1_1_U256", "Parent" : "5"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.mux_1632_32_1_1_U257", "Parent" : "5"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.mux_1632_32_1_1_U258", "Parent" : "5"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.mux_1632_32_1_1_U259", "Parent" : "5"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.insert_point_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U260", "Parent" : "5"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.p_c_U", "Parent" : "2"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_out_cop_U", "Parent" : "2"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_33_out_U", "Parent" : "2"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_34_out_U", "Parent" : "2"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_35_out_U", "Parent" : "2"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_36_out_U", "Parent" : "2"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_37_out_U", "Parent" : "2"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_38_out_U", "Parent" : "2"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTrainAfterInit_fu_297.run_mulmulmulmulcontrolStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_39_out_U", "Parent" : "2"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_toScheduler_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		gmem {Type I LastRead 70 FirstWrite -1}
		contr {Type I LastRead 0 FirstWrite -1}
		trainedRegions {Type X LastRead -1 FirstWrite -1}
		realcheckId {Type X LastRead -1 FirstWrite -1}
		n_regions_in {Type I LastRead 1 FirstWrite -1}
		sharedMem {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type I LastRead -1 FirstWrite -1}
		fsmstate {Type IO LastRead -1 FirstWrite -1}
		n_regions_V {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li {Type IO LastRead -1 FirstWrite -1}}
	runTrainAfterInit {
		empty_20 {Type I LastRead 70 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_33_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_34_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_35_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_36_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_37_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_38_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_39_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li {Type IO LastRead -1 FirstWrite -1}
		n_regions_V {Type IO LastRead 0 FirstWrite 2}}
	entry_proc {
		empty {Type I LastRead 0 FirstWrite -1}
		p_c {Type O LastRead -1 FirstWrite 0}}
	read_train {
		gmem {Type I LastRead 70 FirstWrite -1}
		inputDataInRam {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_33_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_34_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_35_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_36_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_37_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_38_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_8_ap_int_8_ap_int_32_stream_ap_int_8_0_data_key_39_out {Type O LastRead -1 FirstWrite 73}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_1 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_2 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_3 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_4 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_5 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_6 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_key_7 {Type I LastRead 0 FirstWrite -1}}
	insert_point {
		regions_0_0_offset {Type I LastRead 0 FirstWrite -1}
		n_regions {Type IO LastRead 0 FirstWrite 2}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read4 {Type I LastRead 1 FirstWrite -1}
		p_read5 {Type I LastRead 1 FirstWrite -1}
		p_read6 {Type I LastRead 1 FirstWrite -1}
		p_read7 {Type I LastRead 1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7 {Type IO LastRead -1 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li {Type IO LastRead -1 FirstWrite -1}}
	find_region {
		regions_0_0 {Type I LastRead 4 FirstWrite -1}
		regions_0_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_0_1 {Type I LastRead 4 FirstWrite -1}
		regions_0_2 {Type I LastRead 8 FirstWrite -1}
		regions_1_0 {Type I LastRead 57 FirstWrite -1}
		regions_1_1 {Type I LastRead 81 FirstWrite -1}
		regions_1_2 {Type I LastRead 81 FirstWrite -1}
		regions_2_0 {Type I LastRead 106 FirstWrite -1}
		regions_2_1 {Type I LastRead 130 FirstWrite -1}
		regions_2_2 {Type I LastRead 130 FirstWrite -1}
		regions_3_0 {Type I LastRead 155 FirstWrite -1}
		regions_3_1 {Type I LastRead 179 FirstWrite -1}
		regions_3_2 {Type I LastRead 179 FirstWrite -1}
		regions_4_0 {Type I LastRead 204 FirstWrite -1}
		regions_4_1 {Type I LastRead 228 FirstWrite -1}
		regions_4_2 {Type I LastRead 228 FirstWrite -1}
		regions_5_0 {Type I LastRead 253 FirstWrite -1}
		regions_5_1 {Type I LastRead 277 FirstWrite -1}
		regions_5_2 {Type I LastRead 277 FirstWrite -1}
		regions_6_0 {Type I LastRead 302 FirstWrite -1}
		regions_6_1 {Type I LastRead 326 FirstWrite -1}
		regions_6_2 {Type I LastRead 326 FirstWrite -1}
		regions_7_0 {Type I LastRead 351 FirstWrite -1}
		regions_7_1 {Type I LastRead 375 FirstWrite -1}
		regions_7_2 {Type I LastRead 375 FirstWrite -1}
		regions_8_0 {Type I LastRead 400 FirstWrite -1}
		regions_8_1 {Type I LastRead 424 FirstWrite -1}
		regions_8_2 {Type I LastRead 424 FirstWrite -1}
		regions_9_0 {Type I LastRead 449 FirstWrite -1}
		regions_9_1 {Type I LastRead 473 FirstWrite -1}
		regions_9_2 {Type I LastRead 473 FirstWrite -1}
		regions_10_0 {Type I LastRead 498 FirstWrite -1}
		regions_10_1 {Type I LastRead 522 FirstWrite -1}
		regions_10_2 {Type I LastRead 522 FirstWrite -1}
		regions_11_0 {Type I LastRead 547 FirstWrite -1}
		regions_11_1 {Type I LastRead 571 FirstWrite -1}
		regions_11_2 {Type I LastRead 571 FirstWrite -1}
		regions_12_0 {Type I LastRead 596 FirstWrite -1}
		regions_12_1 {Type I LastRead 620 FirstWrite -1}
		regions_12_2 {Type I LastRead 620 FirstWrite -1}
		regions_13_0 {Type I LastRead 645 FirstWrite -1}
		regions_13_1 {Type I LastRead 669 FirstWrite -1}
		regions_13_2 {Type I LastRead 669 FirstWrite -1}
		regions_14_0 {Type I LastRead 694 FirstWrite -1}
		regions_14_1 {Type I LastRead 718 FirstWrite -1}
		regions_14_2 {Type I LastRead 718 FirstWrite -1}
		regions_15_0 {Type I LastRead 743 FirstWrite -1}
		regions_15_1 {Type I LastRead 743 FirstWrite -1}
		regions_15_2 {Type I LastRead 743 FirstWrite -1}
		n_regions {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_254_3 {
		regions_0_0_offset_load {Type I LastRead 0 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 125}
		merge_1_out {Type O LastRead -1 FirstWrite 125}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_32 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_31 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_20 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_9 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_5 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_4 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_2 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_1 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_30 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_29 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_28 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_27 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_26 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_25 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_24 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_23 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_22 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_21 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_19 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_18 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_17 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_16 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_15 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_14 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_13 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_12 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_11 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_10 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_14 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_13 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_12 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_11 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_10 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_9 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_8 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_7 {Type I LastRead 16 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_6 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_8 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_7 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_6 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_5 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_4 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_3 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_2 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li_1 {Type I LastRead 16 FirstWrite -1}
		p_ZZ3run10controlStrPA16_8REGION_TP6ap_intILi8EES5_PS3_ILi32EERN3hls6streamIS4_Li {Type I LastRead 16 FirstWrite -1}}
	find_closest_region {
		regions_0_min {Type I LastRead 16 FirstWrite -1}
		regions_0_min_offset {Type I LastRead 0 FirstWrite -1}
		regions_0_max {Type I LastRead 16 FirstWrite -1}
		regions_0_center {Type I LastRead 16 FirstWrite -1}
		regions_1_min {Type I LastRead 16 FirstWrite -1}
		regions_1_max {Type I LastRead 16 FirstWrite -1}
		regions_1_center {Type I LastRead 16 FirstWrite -1}
		regions_2_min {Type I LastRead 16 FirstWrite -1}
		regions_2_max {Type I LastRead 16 FirstWrite -1}
		regions_2_center {Type I LastRead 16 FirstWrite -1}
		regions_3_min {Type I LastRead 16 FirstWrite -1}
		regions_3_max {Type I LastRead 16 FirstWrite -1}
		regions_3_center {Type I LastRead 16 FirstWrite -1}
		regions_4_min {Type I LastRead 16 FirstWrite -1}
		regions_4_max {Type I LastRead 16 FirstWrite -1}
		regions_4_center {Type I LastRead 16 FirstWrite -1}
		regions_5_min {Type I LastRead 16 FirstWrite -1}
		regions_5_max {Type I LastRead 16 FirstWrite -1}
		regions_5_center {Type I LastRead 16 FirstWrite -1}
		regions_6_min {Type I LastRead 16 FirstWrite -1}
		regions_6_max {Type I LastRead 16 FirstWrite -1}
		regions_6_center {Type I LastRead 16 FirstWrite -1}
		regions_7_min {Type I LastRead 16 FirstWrite -1}
		regions_7_max {Type I LastRead 16 FirstWrite -1}
		regions_7_center {Type I LastRead 16 FirstWrite -1}
		regions_8_min {Type I LastRead 16 FirstWrite -1}
		regions_8_max {Type I LastRead 16 FirstWrite -1}
		regions_8_center {Type I LastRead 16 FirstWrite -1}
		regions_9_min {Type I LastRead 16 FirstWrite -1}
		regions_9_max {Type I LastRead 16 FirstWrite -1}
		regions_9_center {Type I LastRead 16 FirstWrite -1}
		regions_10_min {Type I LastRead 16 FirstWrite -1}
		regions_10_max {Type I LastRead 16 FirstWrite -1}
		regions_10_center {Type I LastRead 16 FirstWrite -1}
		regions_11_min {Type I LastRead 16 FirstWrite -1}
		regions_11_max {Type I LastRead 16 FirstWrite -1}
		regions_11_center {Type I LastRead 16 FirstWrite -1}
		regions_12_min {Type I LastRead 16 FirstWrite -1}
		regions_12_max {Type I LastRead 16 FirstWrite -1}
		regions_12_center {Type I LastRead 16 FirstWrite -1}
		regions_13_min {Type I LastRead 16 FirstWrite -1}
		regions_13_max {Type I LastRead 16 FirstWrite -1}
		regions_13_center {Type I LastRead 16 FirstWrite -1}
		regions_14_min {Type I LastRead 16 FirstWrite -1}
		regions_14_max {Type I LastRead 16 FirstWrite -1}
		regions_14_center {Type I LastRead 16 FirstWrite -1}
		regions_15_min {Type I LastRead 16 FirstWrite -1}
		regions_15_max {Type I LastRead 16 FirstWrite -1}
		regions_15_center {Type I LastRead 16 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "89", "Max" : "3207"}
	, {"Name" : "Interval", "Min" : "90", "Max" : "3208"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 256 }  { m_axi_gmem_WSTRB STRB 1 32 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 256 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	toScheduler { axis {  { toScheduler_TDATA in_data 0 8 }  { toScheduler_TVALID in_vld 0 1 }  { toScheduler_TREADY in_acc 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

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
