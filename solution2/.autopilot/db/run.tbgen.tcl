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
	{ gmem int 512 regular {axi_master 0}  }
	{ errorInTask int 1 regular {axi_slave 2}  }
	{ outcomeInRam int 288 regular {axi_slave 1}  }
	{ inputAOV int 32 regular {axi_slave 0}  }
	{ copyInputAOV int 8 regular {axi_slave 2}  }
	{ trainedRegions int 32 regular {axi_slave 0}  }
	{ n_regions_in int 8 regular {axi_slave 0}  }
	{ toScheduler int 8 regular {axi_s 1 volatile  { toScheduler Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputAOV","offset": { "type": "dynamic","port_name": "inputAOV","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "errorInTask", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":16, "out":16}, "offset_end" : {"in":31, "out":31}} , 
 	{ "Name" : "outcomeInRam", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 288, "direction" : "WRITEONLY", "offset" : {"out":1024}, "offset_end" : {"out":2047}} , 
 	{ "Name" : "inputAOV", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "copyInputAOV", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READWRITE", "offset" : {"in":40, "out":48}, "offset_end" : {"in":47, "out":55}} , 
 	{ "Name" : "trainedRegions", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":131072}, "offset_end" : {"in":262143}} , 
 	{ "Name" : "n_regions_in", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "toScheduler", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ toScheduler_TDATA sc_out sc_lv 8 signal 7 } 
	{ toScheduler_TVALID sc_out sc_logic 1 outvld 7 } 
	{ toScheduler_TREADY sc_in sc_logic 1 outacc 7 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"continue","value":"0","valid_bit":"4"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"errorInTask","role":"data","value":"16"},{"name":"inputAOV","role":"data","value":"32"},{"name":"copyInputAOV","role":"data","value":"40"},{"name":"n_regions_in","role":"data","value":"64"},{"name":"trainedRegions","role":"data","value":"131072"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"done","value":"0","valid_bit":"1"},{"name":"run","role":"idle","value":"0","valid_bit":"2"},{"name":"run","role":"ready","value":"0","valid_bit":"3"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"errorInTask","role":"data","value":"16"},{"name":"copyInputAOV","role":"data","value":"48"},{"name":"outcomeInRam","role":"data","value":"1024"}] },
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
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
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
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
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
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "gmem", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "errorInTask", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "outcomeInRam", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "copyInputAOV", "Type" : "None", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "copyInputAOV_in", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "trainedRegions", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_regions_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "toScheduler", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "regions", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "regions_2", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "regions_4", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "regions_1", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "regions_3", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "regions_5", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_933", "Port" : "n_regions_V", "Inst_start_state" : "37", "Inst_end_state" : "38"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_668_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state32"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_666_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_674_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state36"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state37"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_616_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state37", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state37"], "PreState" : ["ap_ST_fsm_state35"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_4_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_regions_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933", "Parent" : "0", "Child" : ["9", "10", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
		"CDFG" : "runTestAfterInit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1279",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "9", "Name" : "read_train_U0"},
			{"ID" : "10", "Name" : "runTestAfterInit_Block_entry1119_proc7_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "runTestAfterInit_Block_entry1119_proc7_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "read_train_U0", "Port" : "gmem"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "copyInputAOV_in", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "read_train_U0", "Port" : "copyInputAOV"}]},
			{"Name" : "copyInputAOV_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "copyInputAOV_out"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "outcomeInRam"}]},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "toScheduler"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "errorInTask"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "regions"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "regions_1"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "regions_2"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "regions_3"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "regions_4"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "regions_5"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "runTestAfterInit_Block_entry1119_proc7_U0", "Port" : "n_regions_V"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.read_train_U0", "Parent" : "8",
		"CDFG" : "read_train",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "72",
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
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "copyInputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "copyInputAOV_in_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "copyInputAOV_in_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0", "Parent" : "8", "Child" : ["11", "36", "47", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "runTestAfterInit_Block_entry1119_proc7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_writeOutcome_fu_350", "Port" : "errorInTask", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "copyInputAOV_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "copyInputAOV_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "copyInputAOV_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read311", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_writeOutcome_fu_350", "Port" : "toScheduler", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_writeOutcome_fu_350", "Port" : "outcomeInRam", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_min_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_min_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_max_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_max_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_center_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_center_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_insert_point_fu_289", "Port" : "n_regions", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289", "Parent" : "10", "Child" : ["12", "15", "18", "30"],
		"CDFG" : "insert_point",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_min_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "18", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "30", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_min_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_min_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "18", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "30", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_min_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_max_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "18", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "30", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_max_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_max_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "18", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "30", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_max_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_center_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "18", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "30", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_center_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_center_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "18", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "30", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_center_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "n_regions", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_44", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_is_valid_label2_fu_748", "Parent" : "11", "Child" : ["13", "14"],
		"CDFG" : "insert_point_Pipeline_is_valid_label2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_14", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_is_valid_label2_fu_748.mux_84_32_1_1_U8", "Parent" : "12"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_is_valid_label2_fu_748.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label4_fu_768", "Parent" : "11", "Child" : ["16", "17"],
		"CDFG" : "insert_point_Pipeline_insert_point_label4",
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
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "n_regions_load_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "insert_point_label4", "PipelineType" : "NotSupport"}]},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label4_fu_768.mux_84_32_1_1_U18", "Parent" : "15"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label4_fu_768.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Parent" : "11", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_267_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "1134",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln248_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_267_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.fsub_32ns_32ns_32_4_full_dsp_1_U39", "Parent" : "18"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.faddfsub_32ns_32ns_32_4_full_dsp_1_U40", "Parent" : "18"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.faddfsub_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "18"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.fadd_32ns_32ns_32_4_full_dsp_1_U42", "Parent" : "18"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U48", "Parent" : "18"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U49", "Parent" : "18"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U50", "Parent" : "18"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U51", "Parent" : "18"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U52", "Parent" : "18"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U53", "Parent" : "18"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813", "Parent" : "11", "Child" : ["31", "32", "33", "34", "35"],
		"CDFG" : "insert_point_Pipeline_insert_point_label6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln256_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln256_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_130", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "insert_point_label6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U70", "Parent" : "30"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U71", "Parent" : "30"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U72", "Parent" : "30"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U73", "Parent" : "30"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324", "Parent" : "10", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "find_region",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "116",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_66", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_37_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.fdiv_32ns_32ns_32_10_no_dsp_1_U115", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.fcmp_32ns_32ns_1_2_no_dsp_1_U119", "Parent" : "36"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "36"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.mux_21_32_1_1_U121", "Parent" : "36"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.mux_21_32_1_1_U122", "Parent" : "36"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.mux_21_32_1_1_U123", "Parent" : "36"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.mux_21_32_1_1_U124", "Parent" : "36"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.mux_21_32_1_1_U125", "Parent" : "36"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.mux_21_32_1_1_U126", "Parent" : "36"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_find_region_fu_324.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_writeOutcome_fu_350", "Parent" : "10", "Child" : ["48", "49"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "errorInTask1", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "uniId", "Type" : "None", "Direction" : "I"},
			{"Name" : "error", "Type" : "None", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "toScheduler_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_writeOutcome_fu_350.outcome_AOV_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.grp_writeOutcome_fu_350.mux_84_32_1_1_U144", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U162", "Parent" : "10"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U163", "Parent" : "10"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U164", "Parent" : "10"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.mux_84_32_1_1_U165", "Parent" : "10"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U166", "Parent" : "10"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U167", "Parent" : "10"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U168", "Parent" : "10"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.faddfsub_32ns_32ns_32_4_full_dsp_1_U169", "Parent" : "10"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.faddfsub_32ns_32ns_32_4_full_dsp_1_U170", "Parent" : "10"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.faddfsub_32ns_32ns_32_4_full_dsp_1_U171", "Parent" : "10"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.faddfsub_32ns_32ns_32_4_full_dsp_1_U172", "Parent" : "10"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fmul_32ns_32ns_32_2_max_dsp_1_U173", "Parent" : "10"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.runTestAfterInit_Block_entry1119_proc7_U0.fmul_32ns_32ns_32_2_max_dsp_1_U174", "Parent" : "10"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.copyInputAOV_in_c_U", "Parent" : "8"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_command_U", "Parent" : "8"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_uniId_V_U", "Parent" : "8"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_taskId_V_U", "Parent" : "8"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_checkId_V_U", "Parent" : "8"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_U", "Parent" : "8"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_1_U", "Parent" : "8"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_2_U", "Parent" : "8"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_3_U", "Parent" : "8"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_4_U", "Parent" : "8"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_5_U", "Parent" : "8"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_6_U", "Parent" : "8"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_933.contr_AOV_7_U", "Parent" : "8"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U235", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U236", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U237", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U238", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U239", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U240", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U241", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U242", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U243", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U244", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U245", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U246", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U247", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U248", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U249", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U250", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U251", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U252", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U253", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U254", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U255", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U256", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U257", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U258", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_toScheduler_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		gmem {Type I LastRead 71 FirstWrite -1}
		errorInTask {Type IO LastRead 0 FirstWrite 6}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		copyInputAOV {Type IO LastRead 0 FirstWrite -1}
		trainedRegions {Type I LastRead 27 FirstWrite -1}
		n_regions_in {Type I LastRead 2 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 6}
		regions {Type IO LastRead -1 FirstWrite -1}
		regions_2 {Type IO LastRead -1 FirstWrite -1}
		regions_4 {Type IO LastRead -1 FirstWrite -1}
		regions_1 {Type IO LastRead -1 FirstWrite -1}
		regions_3 {Type IO LastRead -1 FirstWrite -1}
		regions_5 {Type IO LastRead -1 FirstWrite -1}
		n_regions_V {Type IO LastRead -1 FirstWrite -1}}
	runTestAfterInit {
		gmem {Type I LastRead 71 FirstWrite -1}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_in {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_out {Type O LastRead -1 FirstWrite 5}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		toScheduler {Type O LastRead -1 FirstWrite 6}
		errorInTask {Type IO LastRead 0 FirstWrite 6}
		regions {Type IO LastRead 9 FirstWrite -1}
		regions_1 {Type IO LastRead 12 FirstWrite -1}
		regions_2 {Type IO LastRead 9 FirstWrite -1}
		regions_3 {Type IO LastRead 12 FirstWrite -1}
		regions_4 {Type IO LastRead 9 FirstWrite -1}
		regions_5 {Type IO LastRead 12 FirstWrite -1}
		n_regions_V {Type IO LastRead 2 FirstWrite 2}}
	read_train {
		gmem {Type I LastRead 71 FirstWrite -1}
		inputAOV {Type I LastRead 1 FirstWrite -1}
		copyInputAOV {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_in_c {Type O LastRead -1 FirstWrite 0}}
	runTestAfterInit_Block_entry1119_proc7 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		errorInTask {Type IO LastRead 0 FirstWrite 6}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_in {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_out {Type O LastRead -1 FirstWrite 5}
		p_read311 {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 6}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		regions {Type IO LastRead 9 FirstWrite -1}
		regions_1 {Type IO LastRead 12 FirstWrite -1}
		regions_2 {Type IO LastRead 9 FirstWrite -1}
		regions_3 {Type IO LastRead 12 FirstWrite -1}
		regions_4 {Type IO LastRead 9 FirstWrite -1}
		regions_5 {Type IO LastRead 12 FirstWrite -1}
		n_regions_V {Type IO LastRead 2 FirstWrite 2}}
	insert_point {
		regions_min_0 {Type IO LastRead 9 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 1 FirstWrite -1}
		regions_min_1 {Type IO LastRead 12 FirstWrite -1}
		regions_max_0 {Type IO LastRead 9 FirstWrite -1}
		regions_max_1 {Type IO LastRead 12 FirstWrite -1}
		regions_center_0 {Type IO LastRead 9 FirstWrite -1}
		regions_center_1 {Type IO LastRead 12 FirstWrite -1}
		n_regions {Type IO LastRead 1 FirstWrite 2}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_38 {Type I LastRead 0 FirstWrite -1}
		d_read_39 {Type I LastRead 0 FirstWrite -1}
		d_read_40 {Type I LastRead 0 FirstWrite -1}
		d_read_41 {Type I LastRead 0 FirstWrite -1}
		d_read_42 {Type I LastRead 0 FirstWrite -1}
		d_read_43 {Type I LastRead 0 FirstWrite -1}
		d_read_44 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_is_valid_label2 {
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_insert_point_label4 {
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}
		tmp_121 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type O LastRead -1 FirstWrite 0}
		regions_min_1 {Type O LastRead -1 FirstWrite 0}
		regions_max_0 {Type O LastRead -1 FirstWrite 0}
		regions_max_1 {Type O LastRead -1 FirstWrite 0}
		regions_center_0 {Type O LastRead -1 FirstWrite 0}
		regions_center_1 {Type O LastRead -1 FirstWrite 0}
		n_regions_load_cast {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_267_1 {
		zext_ln248_1 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}
	insert_point_Pipeline_insert_point_label6 {
		trunc_ln256_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln256_7 {Type I LastRead 0 FirstWrite -1}
		tmp_127 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_130 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 1 FirstWrite 3}
		regions_max_0 {Type IO LastRead 1 FirstWrite 3}
		regions_max_1 {Type IO LastRead 1 FirstWrite 3}
		regions_center_0 {Type O LastRead -1 FirstWrite 10}
		regions_center_1 {Type O LastRead -1 FirstWrite 10}}
	find_region {
		regions_min_0 {Type I LastRead 4 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type I LastRead 4 FirstWrite -1}
		regions_max_0 {Type I LastRead 4 FirstWrite -1}
		regions_max_1 {Type I LastRead 4 FirstWrite -1}
		regions_center_0 {Type I LastRead 4 FirstWrite -1}
		regions_center_1 {Type I LastRead 4 FirstWrite -1}
		n_regions {Type I LastRead 0 FirstWrite -1}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_60 {Type I LastRead 0 FirstWrite -1}
		d_read_61 {Type I LastRead 0 FirstWrite -1}
		d_read_62 {Type I LastRead 0 FirstWrite -1}
		d_read_63 {Type I LastRead 0 FirstWrite -1}
		d_read_64 {Type I LastRead 0 FirstWrite -1}
		d_read_65 {Type I LastRead 0 FirstWrite -1}
		d_read_66 {Type I LastRead 0 FirstWrite -1}}
	writeOutcome {
		errorInTask {Type O LastRead -1 FirstWrite 6}
		errorInTask1 {Type I LastRead 0 FirstWrite -1}
		checkId {Type I LastRead 0 FirstWrite -1}
		taskId {Type I LastRead 0 FirstWrite -1}
		uniId {Type I LastRead 0 FirstWrite -1}
		error {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 6}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 32 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 32 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	toScheduler { axis {  { toScheduler_TDATA out_data 1 8 }  { toScheduler_TVALID out_vld 1 1 }  { toScheduler_TREADY out_acc 0 1 } } }
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
