set moduleName runTestAfterInit_Block_entry15_proc5
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
set C_modelName {runTestAfterInit_Block_entry15_proc5}
set C_modelType { void 0 }
set C_modelArgList {
	{ inputAOV int 64 regular  }
	{ gmem int 512 regular {axi_master 0}  }
	{ errorInTask int 8 regular {array 16 { 2 } 1 1 }  }
	{ outcomeInRam int 288 regular {array 16 { 0 } 1 1 }  }
	{ failedTask int 8 regular {pointer 1}  }
	{ regions float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_1 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_2 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_3 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_4 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_5 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ n_regions_V int 8 regular {array 64 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inputAOV", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputAOV","offset": { "type": "dynamic","port_name": "inputAOV","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "errorInTask", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outcomeInRam", "interface" : "memory", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "failedTask", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regions", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "n_regions_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 131
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inputAOV sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 1 } 
	{ errorInTask_address0 sc_out sc_lv 4 signal 2 } 
	{ errorInTask_ce0 sc_out sc_logic 1 signal 2 } 
	{ errorInTask_we0 sc_out sc_logic 1 signal 2 } 
	{ errorInTask_d0 sc_out sc_lv 8 signal 2 } 
	{ errorInTask_q0 sc_in sc_lv 8 signal 2 } 
	{ outcomeInRam_address0 sc_out sc_lv 4 signal 3 } 
	{ outcomeInRam_ce0 sc_out sc_logic 1 signal 3 } 
	{ outcomeInRam_we0 sc_out sc_lv 36 signal 3 } 
	{ outcomeInRam_d0 sc_out sc_lv 288 signal 3 } 
	{ failedTask sc_out sc_lv 8 signal 4 } 
	{ failedTask_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ failedTask_ap_ack sc_in sc_logic 1 outacc 4 } 
	{ regions_address0 sc_out sc_lv 12 signal 5 } 
	{ regions_ce0 sc_out sc_logic 1 signal 5 } 
	{ regions_we0 sc_out sc_logic 1 signal 5 } 
	{ regions_d0 sc_out sc_lv 32 signal 5 } 
	{ regions_q0 sc_in sc_lv 32 signal 5 } 
	{ regions_address1 sc_out sc_lv 12 signal 5 } 
	{ regions_ce1 sc_out sc_logic 1 signal 5 } 
	{ regions_we1 sc_out sc_logic 1 signal 5 } 
	{ regions_d1 sc_out sc_lv 32 signal 5 } 
	{ regions_q1 sc_in sc_lv 32 signal 5 } 
	{ regions_1_address0 sc_out sc_lv 12 signal 6 } 
	{ regions_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ regions_1_we0 sc_out sc_logic 1 signal 6 } 
	{ regions_1_d0 sc_out sc_lv 32 signal 6 } 
	{ regions_1_q0 sc_in sc_lv 32 signal 6 } 
	{ regions_1_address1 sc_out sc_lv 12 signal 6 } 
	{ regions_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ regions_1_we1 sc_out sc_logic 1 signal 6 } 
	{ regions_1_d1 sc_out sc_lv 32 signal 6 } 
	{ regions_1_q1 sc_in sc_lv 32 signal 6 } 
	{ regions_2_address0 sc_out sc_lv 12 signal 7 } 
	{ regions_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ regions_2_we0 sc_out sc_logic 1 signal 7 } 
	{ regions_2_d0 sc_out sc_lv 32 signal 7 } 
	{ regions_2_q0 sc_in sc_lv 32 signal 7 } 
	{ regions_2_address1 sc_out sc_lv 12 signal 7 } 
	{ regions_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ regions_2_we1 sc_out sc_logic 1 signal 7 } 
	{ regions_2_d1 sc_out sc_lv 32 signal 7 } 
	{ regions_2_q1 sc_in sc_lv 32 signal 7 } 
	{ regions_3_address0 sc_out sc_lv 12 signal 8 } 
	{ regions_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ regions_3_we0 sc_out sc_logic 1 signal 8 } 
	{ regions_3_d0 sc_out sc_lv 32 signal 8 } 
	{ regions_3_q0 sc_in sc_lv 32 signal 8 } 
	{ regions_3_address1 sc_out sc_lv 12 signal 8 } 
	{ regions_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ regions_3_we1 sc_out sc_logic 1 signal 8 } 
	{ regions_3_d1 sc_out sc_lv 32 signal 8 } 
	{ regions_3_q1 sc_in sc_lv 32 signal 8 } 
	{ regions_4_address0 sc_out sc_lv 12 signal 9 } 
	{ regions_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ regions_4_we0 sc_out sc_logic 1 signal 9 } 
	{ regions_4_d0 sc_out sc_lv 32 signal 9 } 
	{ regions_4_q0 sc_in sc_lv 32 signal 9 } 
	{ regions_4_address1 sc_out sc_lv 12 signal 9 } 
	{ regions_4_ce1 sc_out sc_logic 1 signal 9 } 
	{ regions_4_we1 sc_out sc_logic 1 signal 9 } 
	{ regions_4_d1 sc_out sc_lv 32 signal 9 } 
	{ regions_4_q1 sc_in sc_lv 32 signal 9 } 
	{ regions_5_address0 sc_out sc_lv 12 signal 10 } 
	{ regions_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ regions_5_we0 sc_out sc_logic 1 signal 10 } 
	{ regions_5_d0 sc_out sc_lv 32 signal 10 } 
	{ regions_5_q0 sc_in sc_lv 32 signal 10 } 
	{ regions_5_address1 sc_out sc_lv 12 signal 10 } 
	{ regions_5_ce1 sc_out sc_logic 1 signal 10 } 
	{ regions_5_we1 sc_out sc_logic 1 signal 10 } 
	{ regions_5_d1 sc_out sc_lv 32 signal 10 } 
	{ regions_5_q1 sc_in sc_lv 32 signal 10 } 
	{ n_regions_V_address0 sc_out sc_lv 6 signal 11 } 
	{ n_regions_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ n_regions_V_we0 sc_out sc_logic 1 signal 11 } 
	{ n_regions_V_d0 sc_out sc_lv 8 signal 11 } 
	{ n_regions_V_q0 sc_in sc_lv 8 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inputAOV", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inputAOV", "role": "default" }} , 
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
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
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
 	{ "name": "errorInTask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask", "role": "address0" }} , 
 	{ "name": "errorInTask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "ce0" }} , 
 	{ "name": "errorInTask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "we0" }} , 
 	{ "name": "errorInTask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "d0" }} , 
 	{ "name": "errorInTask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "errorInTask", "role": "q0" }} , 
 	{ "name": "outcomeInRam_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "address0" }} , 
 	{ "name": "outcomeInRam_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "ce0" }} , 
 	{ "name": "outcomeInRam_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "we0" }} , 
 	{ "name": "outcomeInRam_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "d0" }} , 
 	{ "name": "failedTask", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "failedTask", "role": "default" }} , 
 	{ "name": "failedTask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "failedTask", "role": "ap_vld" }} , 
 	{ "name": "failedTask_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "failedTask", "role": "ap_ack" }} , 
 	{ "name": "regions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions", "role": "address0" }} , 
 	{ "name": "regions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce0" }} , 
 	{ "name": "regions_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "we0" }} , 
 	{ "name": "regions_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "d0" }} , 
 	{ "name": "regions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "q0" }} , 
 	{ "name": "regions_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions", "role": "address1" }} , 
 	{ "name": "regions_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce1" }} , 
 	{ "name": "regions_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "we1" }} , 
 	{ "name": "regions_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "d1" }} , 
 	{ "name": "regions_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "q1" }} , 
 	{ "name": "regions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_1", "role": "address0" }} , 
 	{ "name": "regions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "ce0" }} , 
 	{ "name": "regions_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "we0" }} , 
 	{ "name": "regions_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "d0" }} , 
 	{ "name": "regions_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "q0" }} , 
 	{ "name": "regions_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_1", "role": "address1" }} , 
 	{ "name": "regions_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "ce1" }} , 
 	{ "name": "regions_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "we1" }} , 
 	{ "name": "regions_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "d1" }} , 
 	{ "name": "regions_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "q1" }} , 
 	{ "name": "regions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_2", "role": "address0" }} , 
 	{ "name": "regions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce0" }} , 
 	{ "name": "regions_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "we0" }} , 
 	{ "name": "regions_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "d0" }} , 
 	{ "name": "regions_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "q0" }} , 
 	{ "name": "regions_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_2", "role": "address1" }} , 
 	{ "name": "regions_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce1" }} , 
 	{ "name": "regions_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "we1" }} , 
 	{ "name": "regions_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "d1" }} , 
 	{ "name": "regions_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "q1" }} , 
 	{ "name": "regions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_3", "role": "address0" }} , 
 	{ "name": "regions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce0" }} , 
 	{ "name": "regions_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "we0" }} , 
 	{ "name": "regions_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "d0" }} , 
 	{ "name": "regions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q0" }} , 
 	{ "name": "regions_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_3", "role": "address1" }} , 
 	{ "name": "regions_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce1" }} , 
 	{ "name": "regions_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "we1" }} , 
 	{ "name": "regions_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "d1" }} , 
 	{ "name": "regions_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q1" }} , 
 	{ "name": "regions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_4", "role": "address0" }} , 
 	{ "name": "regions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "ce0" }} , 
 	{ "name": "regions_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "we0" }} , 
 	{ "name": "regions_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "d0" }} , 
 	{ "name": "regions_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "q0" }} , 
 	{ "name": "regions_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_4", "role": "address1" }} , 
 	{ "name": "regions_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "ce1" }} , 
 	{ "name": "regions_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "we1" }} , 
 	{ "name": "regions_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "d1" }} , 
 	{ "name": "regions_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "q1" }} , 
 	{ "name": "regions_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_5", "role": "address0" }} , 
 	{ "name": "regions_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "ce0" }} , 
 	{ "name": "regions_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "we0" }} , 
 	{ "name": "regions_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "d0" }} , 
 	{ "name": "regions_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "q0" }} , 
 	{ "name": "regions_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_5", "role": "address1" }} , 
 	{ "name": "regions_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "ce1" }} , 
 	{ "name": "regions_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "we1" }} , 
 	{ "name": "regions_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "d1" }} , 
 	{ "name": "regions_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "q1" }} , 
 	{ "name": "n_regions_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_regions_V", "role": "address0" }} , 
 	{ "name": "n_regions_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "ce0" }} , 
 	{ "name": "n_regions_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "we0" }} , 
 	{ "name": "n_regions_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "d0" }} , 
 	{ "name": "n_regions_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "32", "40", "45", "46", "47", "48"],
		"CDFG" : "runTestAfterInit_Block_entry15_proc5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "1277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_writeOutcome_fu_226", "Port" : "errorInTask", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_writeOutcome_fu_226", "Port" : "outcomeInRam", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_writeOutcome_fu_226", "Port" : "failedTask", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_run_test_fu_203", "Port" : "regions_min_0", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "regions_min_0", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_run_test_fu_203", "Port" : "regions_min_1", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "regions_min_1", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_run_test_fu_203", "Port" : "regions_max_0", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "regions_max_0", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_run_test_fu_203", "Port" : "regions_max_1", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "regions_max_1", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "regions_center_0", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "regions_center_1", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_176", "Port" : "n_regions", "Inst_start_state" : "72", "Inst_end_state" : "73"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176", "Parent" : "0", "Child" : ["2", "5", "8", "24", "30", "31"],
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
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_min_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "24", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_min_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_min_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "24", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_min_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_max_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "24", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_max_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_max_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "24", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_max_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_center_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "24", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_center_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_center_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "24", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_center_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "n_regions", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_45", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_is_valid_label2_fu_750", "Parent" : "1", "Child" : ["3", "4"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_is_valid_label2_fu_750.mux_84_32_1_1_U4", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_is_valid_label2_fu_750.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label4_fu_770", "Parent" : "1", "Child" : ["6", "7"],
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
			{"Name" : "tmp_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_load_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "insert_point_label4", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label4_fu_770.mux_84_32_1_1_U14", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label4_fu_770.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Parent" : "1", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_279_1",
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
			{"Name" : "zext_ln260", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_279_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U32", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U33", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U34", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U35", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.faddfsub_32ns_32ns_32_4_full_dsp_1_U36", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.faddfsub_32ns_32ns_32_4_full_dsp_1_U37", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "8"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fmul_32ns_32ns_32_2_max_dsp_1_U40", "Parent" : "8"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U44", "Parent" : "8"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U45", "Parent" : "8"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U46", "Parent" : "8"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U47", "Parent" : "8"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U48", "Parent" : "8"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U49", "Parent" : "8"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label6_fu_815", "Parent" : "1", "Child" : ["25", "26", "27", "28", "29"],
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
			{"Name" : "trunc_ln268_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln268_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "insert_point_label6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U67", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U68", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U69", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U70", "Parent" : "24"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.grp_insert_point_Pipeline_insert_point_label6_fu_815.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.faddfsub_32ns_32ns_32_4_full_dsp_1_U84", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_176.fmul_32ns_32ns_32_2_max_dsp_1_U85", "Parent" : "1"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203", "Parent" : "0", "Child" : ["33", "36"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "583",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145", "Port" : "regions_min_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145", "Port" : "regions_min_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145", "Port" : "regions_max_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145", "Port" : "regions_max_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_is_valid_label2_fu_125", "Parent" : "32", "Child" : ["34", "35"],
		"CDFG" : "run_test_Pipeline_is_valid_label2",
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
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_is_valid_label2_fu_125.mux_84_32_1_1_U107", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_is_valid_label2_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145", "Parent" : "32", "Child" : ["37", "38", "39"],
		"CDFG" : "run_test_Pipeline_VITIS_LOOP_72_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln76_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln76_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145.mux_21_32_1_1_U117", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145.mux_21_32_1_1_U118", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_run_test_fu_203.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226", "Parent" : "0", "Child" : ["41", "42"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "failedTask_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.outcome_AOV_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.grp_writeOutcome_Pipeline_1_fu_279", "Parent" : "40", "Child" : ["43", "44"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcome_AOV", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.grp_writeOutcome_Pipeline_1_fu_279.mux_84_32_1_1_U166", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_226.grp_writeOutcome_Pipeline_1_fu_279.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U193", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U194", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U195", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_failedTask_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runTestAfterInit_Block_entry15_proc5 {
		inputAOV {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 70 FirstWrite -1}
		errorInTask {Type IO LastRead 71 FirstWrite 7}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		failedTask {Type O LastRead -1 FirstWrite 7}
		regions {Type IO LastRead 28 FirstWrite -1}
		regions_1 {Type IO LastRead 28 FirstWrite -1}
		regions_2 {Type IO LastRead 30 FirstWrite -1}
		regions_3 {Type IO LastRead 30 FirstWrite -1}
		regions_4 {Type IO LastRead 9 FirstWrite -1}
		regions_5 {Type IO LastRead 12 FirstWrite -1}
		n_regions_V {Type IO LastRead 72 FirstWrite 2}}
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
		d_read_39 {Type I LastRead 0 FirstWrite -1}
		d_read_40 {Type I LastRead 0 FirstWrite -1}
		d_read_41 {Type I LastRead 0 FirstWrite -1}
		d_read_42 {Type I LastRead 0 FirstWrite -1}
		d_read_43 {Type I LastRead 0 FirstWrite -1}
		d_read_44 {Type I LastRead 0 FirstWrite -1}
		d_read_45 {Type I LastRead 0 FirstWrite -1}}
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
		tmp_187 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type O LastRead -1 FirstWrite 0}
		regions_min_1 {Type O LastRead -1 FirstWrite 0}
		regions_max_0 {Type O LastRead -1 FirstWrite 0}
		regions_max_1 {Type O LastRead -1 FirstWrite 0}
		regions_center_0 {Type O LastRead -1 FirstWrite 0}
		regions_center_1 {Type O LastRead -1 FirstWrite 0}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}
		n_regions_load_cast {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_279_1 {
		zext_ln260 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}
	insert_point_Pipeline_insert_point_label6 {
		trunc_ln268_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln268_7 {Type I LastRead 0 FirstWrite -1}
		tmp_193 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_196 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 1 FirstWrite 3}
		regions_max_0 {Type IO LastRead 1 FirstWrite 3}
		regions_max_1 {Type IO LastRead 1 FirstWrite 3}
		regions_center_0 {Type O LastRead -1 FirstWrite 10}
		regions_center_1 {Type O LastRead -1 FirstWrite 10}}
	run_test {
		regions_min_0 {Type I LastRead 28 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 1 FirstWrite -1}
		regions_min_1 {Type I LastRead 28 FirstWrite -1}
		regions_max_0 {Type I LastRead 30 FirstWrite -1}
		regions_max_1 {Type I LastRead 30 FirstWrite -1}
		n_regions {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	run_test_Pipeline_is_valid_label2 {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	run_test_Pipeline_VITIS_LOOP_72_1 {
		n_regions {Type I LastRead 0 FirstWrite -1}
		zext_ln76_1 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 28 FirstWrite -1}
		regions_min_1 {Type I LastRead 28 FirstWrite -1}
		regions_max_0 {Type I LastRead 30 FirstWrite -1}
		regions_max_1 {Type I LastRead 30 FirstWrite -1}
		bitcast_ln76_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_3 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_3 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_6 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_5 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_7 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_7 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_11 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_9 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_14 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_11 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_15 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_13 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_19 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_15 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_22 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	writeOutcome {
		errorInTask {Type O LastRead -1 FirstWrite 7}
		errorInTask1 {Type I LastRead 7 FirstWrite -1}
		checkId {Type I LastRead 6 FirstWrite -1}
		taskId {Type I LastRead 7 FirstWrite -1}
		uniId {Type I LastRead 6 FirstWrite -1}
		error {Type I LastRead 7 FirstWrite -1}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		failedTask {Type O LastRead -1 FirstWrite 7}}
	writeOutcome_Pipeline_1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		outcome_AOV {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "73", "Max" : "1277"}
	, {"Name" : "Interval", "Min" : "73", "Max" : "1277"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inputAOV { ap_none {  { inputAOV in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	errorInTask { ap_memory {  { errorInTask_address0 mem_address 1 4 }  { errorInTask_ce0 mem_ce 1 1 }  { errorInTask_we0 mem_we 1 1 }  { errorInTask_d0 mem_din 1 8 }  { errorInTask_q0 in_data 0 8 } } }
	outcomeInRam { ap_memory {  { outcomeInRam_address0 mem_address 1 4 }  { outcomeInRam_ce0 mem_ce 1 1 }  { outcomeInRam_we0 mem_we 1 36 }  { outcomeInRam_d0 mem_din 1 288 } } }
	failedTask { ap_hs {  { failedTask out_data 1 8 }  { failedTask_ap_vld out_vld 1 1 }  { failedTask_ap_ack out_acc 0 1 } } }
	regions { ap_memory {  { regions_address0 mem_address 1 12 }  { regions_ce0 mem_ce 1 1 }  { regions_we0 mem_we 1 1 }  { regions_d0 mem_din 1 32 }  { regions_q0 mem_dout 0 32 }  { regions_address1 MemPortADDR2 1 12 }  { regions_ce1 MemPortCE2 1 1 }  { regions_we1 MemPortWE2 1 1 }  { regions_d1 MemPortDIN2 1 32 }  { regions_q1 MemPortDOUT2 0 32 } } }
	regions_1 { ap_memory {  { regions_1_address0 mem_address 1 12 }  { regions_1_ce0 mem_ce 1 1 }  { regions_1_we0 mem_we 1 1 }  { regions_1_d0 mem_din 1 32 }  { regions_1_q0 mem_dout 0 32 }  { regions_1_address1 MemPortADDR2 1 12 }  { regions_1_ce1 MemPortCE2 1 1 }  { regions_1_we1 MemPortWE2 1 1 }  { regions_1_d1 MemPortDIN2 1 32 }  { regions_1_q1 MemPortDOUT2 0 32 } } }
	regions_2 { ap_memory {  { regions_2_address0 mem_address 1 12 }  { regions_2_ce0 mem_ce 1 1 }  { regions_2_we0 mem_we 1 1 }  { regions_2_d0 mem_din 1 32 }  { regions_2_q0 mem_dout 0 32 }  { regions_2_address1 MemPortADDR2 1 12 }  { regions_2_ce1 MemPortCE2 1 1 }  { regions_2_we1 MemPortWE2 1 1 }  { regions_2_d1 MemPortDIN2 1 32 }  { regions_2_q1 MemPortDOUT2 0 32 } } }
	regions_3 { ap_memory {  { regions_3_address0 mem_address 1 12 }  { regions_3_ce0 mem_ce 1 1 }  { regions_3_we0 mem_we 1 1 }  { regions_3_d0 mem_din 1 32 }  { regions_3_q0 mem_dout 0 32 }  { regions_3_address1 MemPortADDR2 1 12 }  { regions_3_ce1 MemPortCE2 1 1 }  { regions_3_we1 MemPortWE2 1 1 }  { regions_3_d1 MemPortDIN2 1 32 }  { regions_3_q1 MemPortDOUT2 0 32 } } }
	regions_4 { ap_memory {  { regions_4_address0 mem_address 1 12 }  { regions_4_ce0 mem_ce 1 1 }  { regions_4_we0 mem_we 1 1 }  { regions_4_d0 mem_din 1 32 }  { regions_4_q0 mem_dout 0 32 }  { regions_4_address1 MemPortADDR2 1 12 }  { regions_4_ce1 MemPortCE2 1 1 }  { regions_4_we1 MemPortWE2 1 1 }  { regions_4_d1 MemPortDIN2 1 32 }  { regions_4_q1 MemPortDOUT2 0 32 } } }
	regions_5 { ap_memory {  { regions_5_address0 mem_address 1 12 }  { regions_5_ce0 mem_ce 1 1 }  { regions_5_we0 mem_we 1 1 }  { regions_5_d0 mem_din 1 32 }  { regions_5_q0 mem_dout 0 32 }  { regions_5_address1 MemPortADDR2 1 12 }  { regions_5_ce1 MemPortCE2 1 1 }  { regions_5_we1 MemPortWE2 1 1 }  { regions_5_d1 MemPortDIN2 1 32 }  { regions_5_q1 MemPortDOUT2 0 32 } } }
	n_regions_V { ap_memory {  { n_regions_V_address0 mem_address 1 6 }  { n_regions_V_ce0 mem_ce 1 1 }  { n_regions_V_we0 mem_we 1 1 }  { n_regions_V_d0 mem_din 1 8 }  { n_regions_V_q0 mem_dout 0 8 } } }
}
