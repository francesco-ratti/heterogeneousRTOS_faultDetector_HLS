# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
contr { 
	dir I
	width 48
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
sharedMem { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
realcheckId { 
	dir X
	width 8
	depth 64
	mode ap_memory
	offset 64
	offset_end 127
	core_op ram_1p
	core_impl auto
	core_latency 3
	byte_write 0
}
n_regions_in { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 128
	offset_end 191
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
trainedRegions { 
	dir X
	width 32
	depth 24576
	mode ap_memory
	offset 131072
	offset_end 262143
	core_op ram_1p
	core_impl auto
	core_latency 3
	byte_write 0
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


