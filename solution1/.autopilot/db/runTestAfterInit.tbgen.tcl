set moduleName runTestAfterInit
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {runTestAfterInit}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 256 regular {axi_master 2}  }
	{ inputDataInRam int 64 regular  }
	{ taskId int 8 regular  }
	{ checkId int 16 regular  }
	{ outcomeInRam int 64 regular  }
	{ toScheduler int 8 regular {axi_s 1 volatile  { toScheduler Data } }  }
	{ n_regions_V int 8 regular {array 64 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "sharedMem","offset": { "type": "dynamic","port_name": "sharedMem","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "inputDataInRam", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taskId", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "checkId", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outcomeInRam", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "toScheduler", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_regions_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ inputDataInRam sc_in sc_lv 64 signal 1 } 
	{ taskId sc_in sc_lv 8 signal 2 } 
	{ checkId sc_in sc_lv 16 signal 3 } 
	{ outcomeInRam sc_in sc_lv 64 signal 4 } 
	{ toScheduler_TDATA sc_out sc_lv 8 signal 5 } 
	{ n_regions_V_address0 sc_out sc_lv 6 signal 6 } 
	{ n_regions_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ n_regions_V_d0 sc_out sc_lv 8 signal 6 } 
	{ n_regions_V_q0 sc_in sc_lv 8 signal 6 } 
	{ n_regions_V_we0 sc_out sc_logic 1 signal 6 } 
	{ n_regions_V_address1 sc_out sc_lv 6 signal 6 } 
	{ n_regions_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ n_regions_V_d1 sc_out sc_lv 8 signal 6 } 
	{ n_regions_V_q1 sc_in sc_lv 8 signal 6 } 
	{ n_regions_V_we1 sc_out sc_logic 1 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ taskId_ap_vld sc_in sc_logic 1 invld 2 } 
	{ outcomeInRam_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ inputDataInRam_ap_vld sc_in sc_logic 1 invld 1 } 
	{ checkId_ap_vld sc_in sc_logic 1 invld 3 } 
	{ toScheduler_TVALID sc_out sc_logic 1 outvld 5 } 
	{ toScheduler_TREADY sc_in sc_logic 1 outacc 5 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "inputDataInRam", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inputDataInRam", "role": "default" }} , 
 	{ "name": "taskId", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "taskId", "role": "default" }} , 
 	{ "name": "checkId", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checkId", "role": "default" }} , 
 	{ "name": "outcomeInRam", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "default" }} , 
 	{ "name": "toScheduler_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "toScheduler", "role": "TDATA" }} , 
 	{ "name": "n_regions_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_regions_V", "role": "address0" }} , 
 	{ "name": "n_regions_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "ce0" }} , 
 	{ "name": "n_regions_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "d0" }} , 
 	{ "name": "n_regions_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "q0" }} , 
 	{ "name": "n_regions_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "we0" }} , 
 	{ "name": "n_regions_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_regions_V", "role": "address1" }} , 
 	{ "name": "n_regions_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "ce1" }} , 
 	{ "name": "n_regions_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "d1" }} , 
 	{ "name": "n_regions_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "q1" }} , 
 	{ "name": "n_regions_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "taskId_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "taskId", "role": "ap_vld" }} , 
 	{ "name": "outcomeInRam_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "outcomeInRam", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "inputDataInRam_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inputDataInRam", "role": "ap_vld" }} , 
 	{ "name": "checkId_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "checkId", "role": "ap_vld" }} , 
 	{ "name": "toScheduler_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "toScheduler", "role": "TVALID" }} , 
 	{ "name": "toScheduler_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "toScheduler", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
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
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "read_test_U0"},
			{"ID" : "3", "Name" : "runTestAfterInit_Block_entry68_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "writeOutcome_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "writeOutcome_U0", "Port" : "gmem"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "gmem"}]},
			{"Name" : "inputDataInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "writeOutcome_U0", "Port" : "toScheduler"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "run_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data"},
					{"ID" : "2", "SubInstance" : "read_test_U0", "Port" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "runTestAfterInit_Block_entry68_proc_U0", "Port" : "n_regions_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "taskId_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "22", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "taskId_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeInRam", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "23", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outcomeInRam_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_test_U0", "Parent" : "0",
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
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "14"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "15"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "16"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "17"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "18"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "19"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "20"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "21"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.runTestAfterInit_Block_entry68_proc_U0", "Parent" : "0",
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
			{"Name" : "checkId_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "24", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_c16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_test_U0", "Parent" : "0", "Child" : ["5", "10", "11", "12"],
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
			{"Name" : "checkId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "24", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "25", "DependentChanDepth" : "10", "DependentChanType" : "1"},
			{"Name" : "checkId_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "26", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "14"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "15"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "16"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "17"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "18"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "19"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "20"},
			{"Name" : "run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "21"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.run_test_U0.grp_find_region_fu_208", "Parent" : "4", "Child" : ["6", "7", "8", "9"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U20", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U21", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.run_test_U0.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_x_U33", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_x_U34", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_x_U35", "Parent" : "4"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.writeOutcome_U0", "Parent" : "0",
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
			{"Name" : "outcomeInRam", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "23", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outcomeInRam_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "checkId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "26", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "checkId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "22", "DependentChanDepth" : "19", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "taskId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "toScheduler_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskId_c_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outcomeInRam_c_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.checkId_c16_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_regions_V_load_loc_channel_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.checkId_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.error_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "145", "Max" : "145"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 256 }  { m_axi_gmem_WSTRB STRB 1 32 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 256 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	inputDataInRam { ap_none {  { inputDataInRam in_data 0 64 }  { inputDataInRam_ap_vld in_vld 0 1 } } }
	taskId { ap_none {  { taskId in_data 0 8 }  { taskId_ap_vld in_vld 0 1 } } }
	checkId { ap_none {  { checkId in_data 0 16 }  { checkId_ap_vld in_vld 0 1 } } }
	outcomeInRam { ap_none {  { outcomeInRam in_data 0 64 }  { outcomeInRam_ap_vld in_vld 0 1 } } }
	toScheduler { axis {  { toScheduler_TDATA out_data 1 8 }  { toScheduler_TVALID out_vld 1 1 }  { toScheduler_TREADY out_acc 0 1 } } }
	n_regions_V { ap_memory {  { n_regions_V_address0 mem_address 1 6 }  { n_regions_V_ce0 mem_ce 1 1 }  { n_regions_V_d0 mem_din 1 8 }  { n_regions_V_q0 mem_dout 0 8 }  { n_regions_V_we0 mem_we 1 1 }  { n_regions_V_address1 mem_address 1 6 }  { n_regions_V_ce1 mem_ce 1 1 }  { n_regions_V_d1 mem_din 1 8 }  { n_regions_V_q1 mem_dout 0 8 }  { n_regions_V_we1 mem_we 1 1 } } }
}
