# This script segment is generated automatically by AutoPilot

set name run_fcmp_32ns_32ns_1_2_no_dsp_1_x
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1 \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data \
    op interface \
    ports { run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_address0 { O 6 vector } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_ce0 { O 1 bit } run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'run_controlStr_REGION_T_32_ap_int_ap_int_ap_int_stream_data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name checkId \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_checkId \
    op interface \
    ports { checkId_dout { I 16 vector } checkId_num_data_valid { I 5 vector } checkId_fifo_cap { I 5 vector } checkId_empty_n { I 1 bit } checkId_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name checkId_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_checkId_c \
    op interface \
    ports { checkId_c_din { O 16 vector } checkId_c_num_data_valid { I 5 vector } checkId_c_fifo_cap { I 5 vector } checkId_c_full_n { I 1 bit } checkId_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


