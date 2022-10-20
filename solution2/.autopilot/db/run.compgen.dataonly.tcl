# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
accel_mode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
copying { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
inputData { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
IOCheckIdx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
errorInTask { 
	dir X
	width 8
	depth 16
	mode ap_memory
	offset 64
	offset_end 79
	core_op ram_1p
	core_impl auto
	core_latency 3
	byte_write 0
}
trainedRegion_i { 
	dir I
	width 768
	depth 1
	mode ap_none
	offset 80
	offset_end 179
}
trainedRegion_o { 
	dir O
	width 768
	depth 1
	mode ap_none
	offset 180
	offset_end 279
}
IORegionIdx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 380
	offset_end 387
}
n_regions_in_i { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 388
	offset_end 395
}
n_regions_in_o { 
	dir O
	width 8
	depth 1
	mode ap_none
	offset 396
	offset_end 403
}
failedTask { 
	dir I
	width 16
	depth 1
	mode ap_hs
	offset 404
	offset_end 411
}
outcomeInRam { 
	dir X
	width 288
	depth 16
	mode ap_memory
	offset 1024
	offset_end 2047
	core_op ram_1p
	core_impl auto
	core_latency 3
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
sw_reset { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


