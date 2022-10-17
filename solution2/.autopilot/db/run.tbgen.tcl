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
	{ accel_mode int 8 regular {axi_slave 0 volatile }  }
	{ data_in_vld int 8 regular {axi_slave 2 volatile }  }
	{ inputData int 64 regular {axi_slave 0}  }
	{ errorInTask int 8 regular {axi_slave 2}  }
	{ outcomeInRam int 288 regular {axi_slave 1}  }
	{ trainedRegion_i int 768 regular {axi_slave 0}  }
	{ trainedRegion_o int 768 regular {axi_slave 1}  }
	{ IOCheckIdx int 8 regular {axi_slave 0}  }
	{ IORegionIdx int 8 regular {axi_slave 0}  }
	{ n_regions_in int 8 regular {axi_slave 2}  }
	{ failedTask int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputData","offset": { "type": "dynamic","port_name": "inputData","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "accel_mode", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "data_in_vld", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 8, "direction" : "READWRITE", "offset" : {"in":24, "out":32}, "offset_end" : {"in":31, "out":39}} , 
 	{ "Name" : "inputData", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "errorInTask", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READWRITE", "offset" : {"in":64, "out":64}, "offset_end" : {"in":79, "out":79}} , 
 	{ "Name" : "outcomeInRam", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 288, "direction" : "WRITEONLY", "offset" : {"out":1024}, "offset_end" : {"out":2047}} , 
 	{ "Name" : "trainedRegion_i", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 768, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":179}} , 
 	{ "Name" : "trainedRegion_o", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 768, "direction" : "WRITEONLY", "offset" : {"out":180}, "offset_end" : {"out":279}} , 
 	{ "Name" : "IOCheckIdx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "IORegionIdx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":380}, "offset_end" : {"in":387}} , 
 	{ "Name" : "n_regions_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READWRITE", "offset" : {"in":388, "out":396}, "offset_end" : {"in":395, "out":403}} , 
 	{ "Name" : "failedTask", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ failedTask sc_out sc_lv 16 signal 11 } 
	{ failedTask_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ failedTask_ap_ack sc_in sc_logic 1 outacc 11 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"continue","value":"0","valid_bit":"4"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"accel_mode","role":"data","value":"16"},{"name":"data_in_vld","role":"data","value":"24"},{"name":"inputData","role":"data","value":"40"},{"name":"IOCheckIdx","role":"data","value":"52"},{"name":"errorInTask","role":"data","value":"64"},{"name":"trainedRegion_i","role":"data","value":"80"},{"name":"IORegionIdx","role":"data","value":"380"},{"name":"n_regions_in","role":"data","value":"388"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"done","value":"0","valid_bit":"1"},{"name":"run","role":"idle","value":"0","valid_bit":"2"},{"name":"run","role":"ready","value":"0","valid_bit":"3"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_in_vld","role":"data","value":"32"}, {"name":"data_in_vld","role":"valid","value":"36","valid_bit":"0"},{"name":"errorInTask","role":"data","value":"64"},{"name":"trainedRegion_o","role":"data","value":"180"},{"name":"n_regions_in","role":"data","value":"396"},{"name":"outcomeInRam","role":"data","value":"1024"}] },
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
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "failedTask", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "failedTask", "role": "default" }} , 
 	{ "name": "failedTask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "failedTask", "role": "ap_vld" }} , 
 	{ "name": "failedTask_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "failedTask", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "39", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_read_data_fu_1406", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "gmem", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "accel_mode", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "accel_mode", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "data_in_vld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_read_data_fu_1406", "Port" : "data_in_vld", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "data_in_vld", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "inputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "errorInTask", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "outcomeInRam", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "trainedRegion_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "trainedRegion_o", "Type" : "None", "Direction" : "O"},
			{"Name" : "IOCheckIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "IORegionIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_in", "Type" : "None", "Direction" : "IO"},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "failedTask", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "regions", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_insert_point_fu_1427", "Port" : "regions_min_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "regions_2", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_insert_point_fu_1427", "Port" : "regions_max_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_insert_point_fu_1427", "Port" : "regions_center_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "regions_1", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_insert_point_fu_1427", "Port" : "regions_min_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "regions_3", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_insert_point_fu_1427", "Port" : "regions_max_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_insert_point_fu_1427", "Port" : "regions_center_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL9n_regions_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_8", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_9", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_10", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_11", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_12", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_13", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_14", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_15", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_16", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_17", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_18", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_19", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_20", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_21", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_22", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_23", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_24", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_25", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_26", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_27", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_28", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_29", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_30", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_31", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_32", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_33", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_34", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_35", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_36", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_37", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_38", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_39", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_40", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_41", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_42", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_43", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_44", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_45", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_46", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_47", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_48", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_49", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_50", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_51", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_52", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_53", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_54", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_55", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_56", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_57", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_58", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_59", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_60", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_61", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_62", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL9n_regions_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "p_ZL9n_regions_63", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "failedTaskExecutionIds_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_runTest_fu_1838", "Port" : "failedTaskExecutionIds_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "pipelined_loop_train", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_4_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_data_fu_1406", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "read_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "93",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_in_vld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "79", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state78"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state79"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_read_data_fu_1406.dest_AOV_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427", "Parent" : "0", "Child" : ["10", "26", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "insert_point",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bubble", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Port" : "regions_min_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "26", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_928", "Port" : "regions_min_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Port" : "regions_min_1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "26", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_928", "Port" : "regions_min_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions_min_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Port" : "regions_max_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "26", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_928", "Port" : "regions_max_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions_max_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Port" : "regions_max_1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "26", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_928", "Port" : "regions_max_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions_max_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Port" : "regions_center_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "26", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_928", "Port" : "regions_center_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions_center_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Port" : "regions_center_1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "26", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_928", "Port" : "regions_center_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions_center_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "insert_point_label4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state15"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_271_1",
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
			{"Name" : "zext_ln252_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln252_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln252_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln252_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln252_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln252", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_271_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.fsub_32ns_32ns_32_4_full_dsp_1_U18", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.fsub_32ns_32ns_32_4_full_dsp_1_U19", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.fsub_32ns_32ns_32_4_full_dsp_1_U20", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.fsub_32ns_32ns_32_4_full_dsp_1_U21", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.faddfsub_32ns_32ns_32_4_full_dsp_1_U22", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.faddfsub_32ns_32ns_32_4_full_dsp_1_U23", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.fadd_32ns_32ns_32_4_full_dsp_1_U24", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.fmul_32ns_32ns_32_2_max_dsp_1_U26", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.mux_21_32_1_1_U30", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.mux_21_32_1_1_U31", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.mux_21_32_1_1_U32", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.mux_21_32_1_1_U33", "Parent" : "10"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.mux_21_32_1_1_U34", "Parent" : "10"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.mux_21_32_1_1_U35", "Parent" : "10"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_VITIS_LOOP_271_1_fu_904.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_insert_point_label6_fu_928", "Parent" : "9", "Child" : ["27", "28", "29", "30", "31"],
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
			{"Name" : "merge_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "merge_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_153", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_166", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_155", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_168", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_157", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_170", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_159", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_172", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_174", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_176", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "insert_point_label6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_insert_point_label6_fu_928.mux_21_32_1_1_U58", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_insert_point_label6_fu_928.mux_21_32_1_1_U59", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_insert_point_label6_fu_928.mux_21_32_1_1_U60", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_insert_point_label6_fu_928.mux_21_32_1_1_U61", "Parent" : "26"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.grp_insert_point_Pipeline_insert_point_label6_fu_928.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.fcmp_32ns_32ns_1_2_no_dsp_1_U80", "Parent" : "9"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.fcmp_32ns_32ns_1_2_no_dsp_1_U81", "Parent" : "9"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.fcmp_32ns_32ns_1_2_no_dsp_1_U82", "Parent" : "9"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.mux_84_32_1_1_U83", "Parent" : "9"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.mux_84_32_1_1_U84", "Parent" : "9"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.faddfsub_32ns_32ns_32_4_full_dsp_1_U85", "Parent" : "9"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_1427.fmul_32ns_32ns_32_2_max_dsp_1_U86", "Parent" : "9"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838", "Parent" : "0", "Child" : ["40", "41", "43", "51", "54", "55", "56", "57"],
		"CDFG" : "runTest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accel_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_read_data_fu_493", "Port" : "gmem", "Inst_start_state" : "9", "Inst_end_state" : "7"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_vld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_read_data_fu_493", "Port" : "data_in_vld", "Inst_start_state" : "9", "Inst_end_state" : "7"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_writeOutcome_fu_555", "Port" : "outcomeInRam", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_writeOutcome_fu_555", "Port" : "errorInTask", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_writeOutcome_fu_555", "Port" : "failedTask", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "p_ZL9n_regions_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_run_test_fu_527", "Port" : "regions_min_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_run_test_fu_527", "Port" : "regions_min_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_run_test_fu_527", "Port" : "regions_max_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_run_test_fu_527", "Port" : "regions_max_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "failedTaskExecutionIds_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "pipelined_loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state10", "ap_ST_fsm_state14", "ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.failedTaskExecutionIds_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_read_data_fu_493", "Parent" : "39", "Child" : ["42"],
		"CDFG" : "read_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "93",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_in_vld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "79", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state78"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state79"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_read_data_fu_493.dest_AOV_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527", "Parent" : "39", "Child" : ["44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "777",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bubble", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_61_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.fcmp_32ns_32ns_1_2_no_dsp_1_U116", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.fcmp_32ns_32ns_1_2_no_dsp_1_U117", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.fcmp_32ns_32ns_1_2_no_dsp_1_U118", "Parent" : "43"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.mux_84_32_1_1_U119", "Parent" : "43"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.mux_864_32_1_1_U120", "Parent" : "43"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.mux_21_32_1_1_U121", "Parent" : "43"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_run_test_fu_527.mux_21_32_1_1_U122", "Parent" : "43"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_writeOutcome_fu_555", "Parent" : "39", "Child" : ["52", "53"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bubble", "Type" : "None", "Direction" : "I"},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "errorInTask1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "failedTaskExecutionId_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "executionId", "Type" : "None", "Direction" : "I"},
			{"Name" : "uniId", "Type" : "None", "Direction" : "I"},
			{"Name" : "error", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "failedTask", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "failedTask_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_writeOutcome_fu_555.outcome_AOV_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.grp_writeOutcome_fu_555.mux_84_32_1_1_U143", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.mux_648_8_1_1_U165", "Parent" : "39"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.mux_648_8_1_1_U166", "Parent" : "39"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.mux_648_8_1_1_U167", "Parent" : "39"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTest_fu_1838.mux_648_8_1_1_U168", "Parent" : "39"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U246", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U247", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U248", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U249", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U250", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U251", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_648_8_1_1_U252", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_failedTask_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		gmem {Type I LastRead 71 FirstWrite -1}
		accel_mode {Type I LastRead 4 FirstWrite -1}
		data_in_vld {Type IO LastRead 0 FirstWrite 75}
		inputData {Type I LastRead 0 FirstWrite -1}
		errorInTask {Type IO LastRead 1 FirstWrite 2}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		trainedRegion_i {Type I LastRead 0 FirstWrite -1}
		trainedRegion_o {Type O LastRead -1 FirstWrite 4}
		IOCheckIdx {Type I LastRead 0 FirstWrite -1}
		IORegionIdx {Type I LastRead 0 FirstWrite -1}
		n_regions_in {Type IO LastRead 3 FirstWrite 0}
		failedTask {Type O LastRead -1 FirstWrite 7}
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
		p_ZL9n_regions_63 {Type IO LastRead -1 FirstWrite -1}
		failedTaskExecutionIds_V {Type IO LastRead -1 FirstWrite -1}}
	read_data {
		data_in_vld {Type IO LastRead 0 FirstWrite 75}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read4 {Type I LastRead 1 FirstWrite -1}
		p_read5 {Type I LastRead 1 FirstWrite -1}
		p_read6 {Type I LastRead 1 FirstWrite -1}
		p_read7 {Type I LastRead 1 FirstWrite -1}
		p_read8 {Type I LastRead 1 FirstWrite -1}
		p_read9 {Type I LastRead 1 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		gmem {Type I LastRead 71 FirstWrite -1}
		inputAOV {Type I LastRead 1 FirstWrite -1}}
	insert_point {
		bubble {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 9 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 10 FirstWrite -1}
		regions_min_1_offset {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type IO LastRead 9 FirstWrite -1}
		regions_max_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type IO LastRead 10 FirstWrite -1}
		regions_max_1_offset {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type IO LastRead 9 FirstWrite -1}
		regions_center_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type IO LastRead 10 FirstWrite -1}
		regions_center_1_offset {Type I LastRead 0 FirstWrite -1}
		n_regions_V_read_5 {Type I LastRead 0 FirstWrite -1}
		n_regions_V_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_271_1 {
		zext_ln252_5 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		zext_ln252_4 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		zext_ln252_3 {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		zext_ln252_2 {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		zext_ln252_1 {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		zext_ln252 {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}
	insert_point_Pipeline_insert_point_label6 {
		merge_1_cast {Type I LastRead 0 FirstWrite -1}
		merge_2_cast {Type I LastRead 0 FirstWrite -1}
		tmp_153 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_166 {Type I LastRead 0 FirstWrite -1}
		tmp_155 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 1 FirstWrite 3}
		tmp_168 {Type I LastRead 0 FirstWrite -1}
		tmp_157 {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_170 {Type I LastRead 0 FirstWrite -1}
		tmp_159 {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type IO LastRead 1 FirstWrite 3}
		tmp_172 {Type I LastRead 0 FirstWrite -1}
		tmp_174 {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type O LastRead -1 FirstWrite 10}
		tmp_176 {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type O LastRead -1 FirstWrite 10}}
	runTest {
		accel_mode {Type I LastRead 4 FirstWrite -1}
		gmem {Type I LastRead 71 FirstWrite -1}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		data_in_vld {Type IO LastRead 0 FirstWrite 75}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		errorInTask {Type IO LastRead 1 FirstWrite 2}
		failedTask {Type O LastRead -1 FirstWrite 7}
		p_ZL9n_regions_0 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_1 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_2 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_3 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_4 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_5 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_6 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_7 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_8 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_9 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_10 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_11 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_12 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_13 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_14 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_15 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_16 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_17 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_18 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_19 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_20 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_21 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_22 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_23 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_24 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_25 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_26 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_27 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_28 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_29 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_30 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_31 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_32 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_33 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_34 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_35 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_36 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_37 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_38 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_39 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_40 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_41 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_42 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_43 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_44 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_45 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_46 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_47 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_48 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_49 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_50 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_51 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_52 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_53 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_54 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_55 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_56 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_57 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_58 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_59 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_60 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_61 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_62 {Type I LastRead 2 FirstWrite -1}
		p_ZL9n_regions_63 {Type I LastRead 2 FirstWrite -1}
		regions {Type I LastRead 3 FirstWrite -1}
		regions_1 {Type I LastRead 3 FirstWrite -1}
		regions_2 {Type I LastRead 5 FirstWrite -1}
		regions_3 {Type I LastRead 5 FirstWrite -1}
		failedTaskExecutionIds_V {Type IO LastRead -1 FirstWrite -1}}
	read_data {
		data_in_vld {Type IO LastRead 0 FirstWrite 75}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read4 {Type I LastRead 1 FirstWrite -1}
		p_read5 {Type I LastRead 1 FirstWrite -1}
		p_read6 {Type I LastRead 1 FirstWrite -1}
		p_read7 {Type I LastRead 1 FirstWrite -1}
		p_read8 {Type I LastRead 1 FirstWrite -1}
		p_read9 {Type I LastRead 1 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		gmem {Type I LastRead 71 FirstWrite -1}
		inputAOV {Type I LastRead 1 FirstWrite -1}}
	run_test {
		bubble {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 3 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type I LastRead 3 FirstWrite -1}
		regions_min_1_offset {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type I LastRead 5 FirstWrite -1}
		regions_max_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type I LastRead 5 FirstWrite -1}
		regions_max_1_offset {Type I LastRead 0 FirstWrite -1}
		n_regions {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	writeOutcome {
		bubble {Type I LastRead 0 FirstWrite -1}
		errorInTask {Type IO LastRead 1 FirstWrite 2}
		errorInTask1 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		failedTaskExecutionId_read {Type I LastRead 0 FirstWrite -1}
		checkId {Type I LastRead 0 FirstWrite -1}
		taskId {Type I LastRead 0 FirstWrite -1}
		executionId {Type I LastRead 0 FirstWrite -1}
		uniId {Type I LastRead 0 FirstWrite -1}
		error {Type I LastRead 0 FirstWrite -1}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		failedTask {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	failedTask { ap_hs {  { failedTask out_data 1 16 }  { failedTask_ap_vld out_vld 1 1 }  { failedTask_ap_ack out_acc 0 1 } } }
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
