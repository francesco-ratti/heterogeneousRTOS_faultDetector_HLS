set moduleName run
set isTopModule 1
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
set C_modelName {run}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 0}  }
	{ accel_mode int 8 regular {axi_slave 0}  }
	{ copying int 8 regular {axi_slave 1 volatile }  }
	{ inputData int 64 regular {axi_slave 0}  }
	{ startCopy int 8 regular {axi_slave 0 volatile }  }
	{ errorInTask int 8 unused {axi_slave 3}  }
	{ outcomeInRam int 288 unused {axi_slave 3}  }
	{ trainedRegion_i int 768 regular {axi_slave 0}  }
	{ trainedRegion_o int 768 regular {axi_slave 1}  }
	{ IOCheckIdx int 8 regular {axi_slave 0}  }
	{ IORegionIdx int 8 regular {axi_slave 0}  }
	{ n_regions_in int 8 regular {axi_slave 2}  }
	{ failedTask int 16 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputData","offset": { "type": "dynamic","port_name": "inputData","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "accel_mode", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "copying", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "WRITEONLY", "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "inputData", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "startCopy", "interface" : "axi_slave", "bundle":"control","type":"ap_hs","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "errorInTask", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "NONE", "offset" : {"in":64}, "offset_end" : {"in":79}} , 
 	{ "Name" : "outcomeInRam", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 288, "direction" : "NONE", "offset" : {"in":1024}, "offset_end" : {"in":2047}} , 
 	{ "Name" : "trainedRegion_i", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 768, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":179}} , 
 	{ "Name" : "trainedRegion_o", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 768, "direction" : "WRITEONLY", "offset" : {"out":180}, "offset_end" : {"out":279}} , 
 	{ "Name" : "IOCheckIdx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":380}, "offset_end" : {"in":387}} , 
 	{ "Name" : "IORegionIdx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":388}, "offset_end" : {"in":395}} , 
 	{ "Name" : "n_regions_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READWRITE", "offset" : {"in":396, "out":404}, "offset_end" : {"in":403, "out":411}} , 
 	{ "Name" : "failedTask", "interface" : "axi_slave", "bundle":"control","type":"ap_hs","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":412}, "offset_end" : {"in":419}} ]}
# RTL Port declarations: 
set portNum 65
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
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
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
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 11 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"continue","value":"0","valid_bit":"4"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"accel_mode","role":"data","value":"16"},{"name":"inputData","role":"data","value":"40"},{"name":"startCopy","role":"data","value":"52"}, {"name":"startCopy","role":"valid","value":"56","valid_bit":"0"},{"name":"errorInTask","role":"data","value":"64"},{"name":"trainedRegion_i","role":"data","value":"80"},{"name":"IOCheckIdx","role":"data","value":"380"},{"name":"IORegionIdx","role":"data","value":"388"},{"name":"n_regions_in","role":"data","value":"396"},{"name":"failedTask","role":"data","value":"412"}, {"name":"failedTask","role":"valid","value":"416","valid_bit":"0"},{"name":"outcomeInRam","role":"data","value":"1024"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"done","value":"0","valid_bit":"1"},{"name":"run","role":"idle","value":"0","valid_bit":"2"},{"name":"run","role":"ready","value":"0","valid_bit":"3"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"copying","role":"data","value":"24"}, {"name":"startCopy","role":"ack","value":"56","valid_bit":"1"},{"name":"errorInTask","role":"data","value":"64"},{"name":"trainedRegion_o","role":"data","value":"180"},{"name":"n_regions_in","role":"data","value":"404"}, {"name":"failedTask","role":"ack","value":"416","valid_bit":"1"},{"name":"outcomeInRam","role":"data","value":"1024"}] },
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
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
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
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "gmem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "accel_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "copying", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "copying", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "startCopy", "Type" : "HS", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "startCopy", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trainedRegion_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "trainedRegion_o", "Type" : "None", "Direction" : "O"},
			{"Name" : "IOCheckIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "IORegionIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_in", "Type" : "None", "Direction" : "IO"},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "regions", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "regions_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "regions_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "regions_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL9n_regions_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_32", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_33", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_34", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_35", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_36", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_37", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_38", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_39", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_40", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_41", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_42", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_43", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_44", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_45", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_46", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_47", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_48", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_49", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_50", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_51", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_52", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_53", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_54", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_55", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_56", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_57", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_58", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_59", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_60", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_61", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_62", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZL9n_regions_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_runTest_fu_1344", "Port" : "p_ZL9n_regions_63", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_4_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344", "Parent" : "0", "Child" : ["8", "9", "26", "27", "28"],
		"CDFG" : "runTest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "read_data_U0"},
			{"ID" : "26", "Name" : "writeOutcome_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "read_data_U0", "Port" : "gmem"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "startCopy", "Type" : "HS", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "read_data_U0", "Port" : "startCopy"}]},
			{"Name" : "copying", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "read_data_U0", "Port" : "copying"}]},
			{"Name" : "p_ZL9n_regions_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_0"}]},
			{"Name" : "p_ZL9n_regions_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_1"}]},
			{"Name" : "p_ZL9n_regions_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_2"}]},
			{"Name" : "p_ZL9n_regions_3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_3"}]},
			{"Name" : "p_ZL9n_regions_4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_4"}]},
			{"Name" : "p_ZL9n_regions_5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_5"}]},
			{"Name" : "p_ZL9n_regions_6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_6"}]},
			{"Name" : "p_ZL9n_regions_7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_7"}]},
			{"Name" : "p_ZL9n_regions_8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_8"}]},
			{"Name" : "p_ZL9n_regions_9", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_9"}]},
			{"Name" : "p_ZL9n_regions_10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_10"}]},
			{"Name" : "p_ZL9n_regions_11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_11"}]},
			{"Name" : "p_ZL9n_regions_12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_12"}]},
			{"Name" : "p_ZL9n_regions_13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_13"}]},
			{"Name" : "p_ZL9n_regions_14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_14"}]},
			{"Name" : "p_ZL9n_regions_15", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_15"}]},
			{"Name" : "p_ZL9n_regions_16", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_16"}]},
			{"Name" : "p_ZL9n_regions_17", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_17"}]},
			{"Name" : "p_ZL9n_regions_18", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_18"}]},
			{"Name" : "p_ZL9n_regions_19", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_19"}]},
			{"Name" : "p_ZL9n_regions_20", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_20"}]},
			{"Name" : "p_ZL9n_regions_21", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_21"}]},
			{"Name" : "p_ZL9n_regions_22", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_22"}]},
			{"Name" : "p_ZL9n_regions_23", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_23"}]},
			{"Name" : "p_ZL9n_regions_24", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_24"}]},
			{"Name" : "p_ZL9n_regions_25", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_25"}]},
			{"Name" : "p_ZL9n_regions_26", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_26"}]},
			{"Name" : "p_ZL9n_regions_27", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_27"}]},
			{"Name" : "p_ZL9n_regions_28", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_28"}]},
			{"Name" : "p_ZL9n_regions_29", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_29"}]},
			{"Name" : "p_ZL9n_regions_30", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_30"}]},
			{"Name" : "p_ZL9n_regions_31", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_31"}]},
			{"Name" : "p_ZL9n_regions_32", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_32"}]},
			{"Name" : "p_ZL9n_regions_33", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_33"}]},
			{"Name" : "p_ZL9n_regions_34", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_34"}]},
			{"Name" : "p_ZL9n_regions_35", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_35"}]},
			{"Name" : "p_ZL9n_regions_36", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_36"}]},
			{"Name" : "p_ZL9n_regions_37", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_37"}]},
			{"Name" : "p_ZL9n_regions_38", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_38"}]},
			{"Name" : "p_ZL9n_regions_39", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_39"}]},
			{"Name" : "p_ZL9n_regions_40", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_40"}]},
			{"Name" : "p_ZL9n_regions_41", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_41"}]},
			{"Name" : "p_ZL9n_regions_42", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_42"}]},
			{"Name" : "p_ZL9n_regions_43", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_43"}]},
			{"Name" : "p_ZL9n_regions_44", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_44"}]},
			{"Name" : "p_ZL9n_regions_45", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_45"}]},
			{"Name" : "p_ZL9n_regions_46", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_46"}]},
			{"Name" : "p_ZL9n_regions_47", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_47"}]},
			{"Name" : "p_ZL9n_regions_48", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_48"}]},
			{"Name" : "p_ZL9n_regions_49", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_49"}]},
			{"Name" : "p_ZL9n_regions_50", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_50"}]},
			{"Name" : "p_ZL9n_regions_51", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_51"}]},
			{"Name" : "p_ZL9n_regions_52", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_52"}]},
			{"Name" : "p_ZL9n_regions_53", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_53"}]},
			{"Name" : "p_ZL9n_regions_54", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_54"}]},
			{"Name" : "p_ZL9n_regions_55", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_55"}]},
			{"Name" : "p_ZL9n_regions_56", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_56"}]},
			{"Name" : "p_ZL9n_regions_57", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_57"}]},
			{"Name" : "p_ZL9n_regions_58", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_58"}]},
			{"Name" : "p_ZL9n_regions_59", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_59"}]},
			{"Name" : "p_ZL9n_regions_60", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_60"}]},
			{"Name" : "p_ZL9n_regions_61", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_61"}]},
			{"Name" : "p_ZL9n_regions_62", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_62"}]},
			{"Name" : "p_ZL9n_regions_63", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "p_ZL9n_regions_63"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "regions"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "regions_1"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "regions_2"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "run_test_U0", "Port" : "regions_3"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.read_data_U0", "Parent" : "7",
		"CDFG" : "read_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "copyDest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "27", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "copyDest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "startCopy", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "startCopy_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "copying", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_494_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "73", "FirstState" : "ap_ST_fsm_state72", "LastState" : ["ap_ST_fsm_state73"], "QuitState" : ["ap_ST_fsm_state72"], "PreState" : ["ap_ST_fsm_state71"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0", "Parent" : "7", "Child" : ["10", "11", "14", "19", "24", "25"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "copyDest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "27", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "copyDest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "28", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "outcomeStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL9n_regions_0", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_3", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_7", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_8", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_9", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_10", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_11", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_12", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_14", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_15", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_16", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_17", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_18", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_19", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_20", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_21", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_22", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_23", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_24", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_25", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_26", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_27", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_28", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_29", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_30", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_31", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_32", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_33", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_34", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_35", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_36", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_37", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_38", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_39", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_40", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_41", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_42", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_43", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_44", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_45", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_46", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_47", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_48", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_49", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_50", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_51", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_52", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_53", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_54", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_55", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_56", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_57", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_58", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_59", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_60", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_61", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_62", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_63", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "regions_1", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "regions_2", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "regions_3", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_49_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_460_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.outcome_AOV_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_1_fu_353", "Parent" : "9", "Child" : ["12", "13"],
		"CDFG" : "run_test_Pipeline_1",
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
			{"Name" : "in_AOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcome_AOV", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_1_fu_353.mux_84_32_1_1_U6", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_1_fu_353.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_366", "Parent" : "9", "Child" : ["15", "16", "17", "18"],
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
			{"Name" : "in_AOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_366.fcmp_32ns_32ns_1_2_no_dsp_1_U18", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_366.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "14"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_366.mux_84_32_1_1_U20", "Parent" : "14"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_366.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Parent" : "9", "Child" : ["20", "21", "22", "23"],
		"CDFG" : "run_test_Pipeline_VITIS_LOOP_55_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions_3", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.mux_864_32_1_1_U31", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.mux_21_32_1_1_U32", "Parent" : "19"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.mux_21_32_1_1_U33", "Parent" : "19"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.mux_648_8_1_1_U50", "Parent" : "9"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U51", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.writeOutcome_U0", "Parent" : "7",
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outcomeStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "28", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "outcomeStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_420_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.copyDest_U", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1344.outcomeStream_U", "Parent" : "7"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U200", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U201", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U202", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U203", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U204", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U205", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_648_8_1_1_U206", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		gmem {Type I LastRead 70 FirstWrite -1}
		accel_mode {Type I LastRead 0 FirstWrite -1}
		copying {Type O LastRead -1 FirstWrite 71}
		inputData {Type I LastRead 0 FirstWrite -1}
		startCopy {Type I LastRead 71 FirstWrite -1}
		errorInTask {Type X LastRead -1 FirstWrite -1}
		outcomeInRam {Type X LastRead -1 FirstWrite -1}
		trainedRegion_i {Type I LastRead 0 FirstWrite -1}
		trainedRegion_o {Type O LastRead -1 FirstWrite 4}
		IOCheckIdx {Type I LastRead 0 FirstWrite -1}
		IORegionIdx {Type I LastRead 0 FirstWrite -1}
		n_regions_in {Type IO LastRead 3 FirstWrite 0}
		failedTask {Type I LastRead -1 FirstWrite -1}
		regions {Type IO LastRead -1 FirstWrite -1}
		regions_2 {Type IO LastRead -1 FirstWrite -1}
		regions_4 {Type IO LastRead -1 FirstWrite -1}
		regions_1 {Type IO LastRead -1 FirstWrite -1}
		regions_3 {Type IO LastRead -1 FirstWrite -1}
		regions_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZL9n_regions_63 {Type IO LastRead -1 FirstWrite -1}}
	runTest {
		gmem {Type I LastRead 70 FirstWrite -1}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		startCopy {Type I LastRead 71 FirstWrite -1}
		copying {Type O LastRead -1 FirstWrite 71}
		p_ZL9n_regions_0 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_1 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_2 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_3 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_4 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_5 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_6 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_7 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_8 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_9 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_10 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_11 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_12 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_13 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_14 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_15 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_16 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_17 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_18 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_19 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_20 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_21 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_22 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_23 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_24 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_25 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_26 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_27 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_28 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_29 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_30 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_31 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_32 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_33 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_34 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_35 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_36 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_37 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_38 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_39 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_40 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_41 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_42 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_43 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_44 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_45 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_46 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_47 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_48 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_49 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_50 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_51 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_52 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_53 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_54 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_55 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_56 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_57 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_58 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_59 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_60 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_61 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_62 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_63 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 1 FirstWrite -1}
		regions_1 {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 3 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}}
	read_data {
		copyDest {Type O LastRead -1 FirstWrite 71}
		gmem {Type I LastRead 70 FirstWrite -1}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		startCopy {Type I LastRead 71 FirstWrite -1}
		copying {Type O LastRead -1 FirstWrite 71}}
	run_test {
		copyDest {Type I LastRead 1 FirstWrite -1}
		outcomeStream {Type O LastRead -1 FirstWrite 7}
		p_ZL9n_regions_0 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_1 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_2 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_3 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_4 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_5 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_6 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_7 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_8 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_9 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_10 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_11 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_12 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_13 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_14 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_15 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_16 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_17 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_18 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_19 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_20 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_21 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_22 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_23 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_24 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_25 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_26 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_27 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_28 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_29 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_30 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_31 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_32 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_33 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_34 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_35 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_36 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_37 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_38 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_39 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_40 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_41 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_42 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_43 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_44 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_45 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_46 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_47 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_48 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_49 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_50 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_51 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_52 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_53 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_54 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_55 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_56 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_57 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_58 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_59 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_60 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_61 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_62 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_63 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 1 FirstWrite -1}
		regions_1 {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 3 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}}
	run_test_Pipeline_1 {
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}
		outcome_AOV {Type O LastRead -1 FirstWrite 0}}
	run_test_Pipeline_is_valid_label2 {
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}}
	run_test_Pipeline_VITIS_LOOP_55_2 {
		tmp_16 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 1 FirstWrite -1}
		regions_1 {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 3 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}}
	writeOutcome {
		outcomeStream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
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
