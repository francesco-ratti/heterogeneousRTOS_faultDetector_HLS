# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
contr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
sharedMem { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
realTaskId { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 256
	offset_end 511
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
n_regions_in { 
	dir I
	width 16
	depth 128
	mode ap_memory
	offset 512
	offset_end 767
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
	depth 49152
	mode ap_memory
	offset 262144
	offset_end 524287
	core_op ram_1p
	core_impl auto
	core_latency 3
	byte_write 0
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


