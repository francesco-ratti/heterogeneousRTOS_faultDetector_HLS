# This script segment is generated automatically by AutoPilot

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
    id 93 \
    name regions_min_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_min_0 \
    op interface \
    ports { regions_min_0_address0 { O 12 vector } regions_min_0_ce0 { O 1 bit } regions_min_0_we0 { O 1 bit } regions_min_0_d0 { O 32 vector } regions_min_0_q0 { I 32 vector } regions_min_0_address1 { O 12 vector } regions_min_0_ce1 { O 1 bit } regions_min_0_we1 { O 1 bit } regions_min_0_d1 { O 32 vector } regions_min_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_min_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name regions_min_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_min_1 \
    op interface \
    ports { regions_min_1_address0 { O 12 vector } regions_min_1_ce0 { O 1 bit } regions_min_1_we0 { O 1 bit } regions_min_1_d0 { O 32 vector } regions_min_1_q0 { I 32 vector } regions_min_1_address1 { O 12 vector } regions_min_1_ce1 { O 1 bit } regions_min_1_we1 { O 1 bit } regions_min_1_d1 { O 32 vector } regions_min_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_min_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name regions_max_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_max_0 \
    op interface \
    ports { regions_max_0_address0 { O 12 vector } regions_max_0_ce0 { O 1 bit } regions_max_0_we0 { O 1 bit } regions_max_0_d0 { O 32 vector } regions_max_0_q0 { I 32 vector } regions_max_0_address1 { O 12 vector } regions_max_0_ce1 { O 1 bit } regions_max_0_we1 { O 1 bit } regions_max_0_d1 { O 32 vector } regions_max_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_max_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name regions_max_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_max_1 \
    op interface \
    ports { regions_max_1_address0 { O 12 vector } regions_max_1_ce0 { O 1 bit } regions_max_1_we0 { O 1 bit } regions_max_1_d0 { O 32 vector } regions_max_1_q0 { I 32 vector } regions_max_1_address1 { O 12 vector } regions_max_1_ce1 { O 1 bit } regions_max_1_we1 { O 1 bit } regions_max_1_d1 { O 32 vector } regions_max_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_max_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name regions_center_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_center_0 \
    op interface \
    ports { regions_center_0_address0 { O 12 vector } regions_center_0_ce0 { O 1 bit } regions_center_0_we0 { O 1 bit } regions_center_0_d0 { O 32 vector } regions_center_0_q0 { I 32 vector } regions_center_0_address1 { O 12 vector } regions_center_0_ce1 { O 1 bit } regions_center_0_we1 { O 1 bit } regions_center_0_d1 { O 32 vector } regions_center_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_center_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name regions_center_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_center_1 \
    op interface \
    ports { regions_center_1_address0 { O 12 vector } regions_center_1_ce0 { O 1 bit } regions_center_1_we0 { O 1 bit } regions_center_1_d0 { O 32 vector } regions_center_1_q0 { I 32 vector } regions_center_1_address1 { O 12 vector } regions_center_1_ce1 { O 1 bit } regions_center_1_we1 { O 1 bit } regions_center_1_d1 { O 32 vector } regions_center_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_center_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name n_regions \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename n_regions \
    op interface \
    ports { n_regions_address0 { O 6 vector } n_regions_ce0 { O 1 bit } n_regions_we0 { O 1 bit } n_regions_d0 { O 8 vector } n_regions_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'n_regions'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name regions_min_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_min_0_offset \
    op interface \
    ports { regions_min_0_offset { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name d_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read \
    op interface \
    ports { d_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name d_read_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_38 \
    op interface \
    ports { d_read_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name d_read_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_39 \
    op interface \
    ports { d_read_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name d_read_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_40 \
    op interface \
    ports { d_read_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name d_read_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_41 \
    op interface \
    ports { d_read_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name d_read_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_42 \
    op interface \
    ports { d_read_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name d_read_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_43 \
    op interface \
    ports { d_read_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name d_read_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_read_44 \
    op interface \
    ports { d_read_44 { I 32 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


