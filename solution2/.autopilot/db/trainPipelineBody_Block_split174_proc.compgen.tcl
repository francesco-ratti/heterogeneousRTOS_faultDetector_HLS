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
    id 107 \
    name regions \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions \
    op interface \
    ports { regions_address0 { O 12 vector } regions_ce0 { O 1 bit } regions_we0 { O 1 bit } regions_d0 { O 32 vector } regions_q0 { I 32 vector } regions_address1 { O 12 vector } regions_ce1 { O 1 bit } regions_we1 { O 1 bit } regions_d1 { O 32 vector } regions_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name regions_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_1 \
    op interface \
    ports { regions_1_address0 { O 12 vector } regions_1_ce0 { O 1 bit } regions_1_we0 { O 1 bit } regions_1_d0 { O 32 vector } regions_1_q0 { I 32 vector } regions_1_address1 { O 12 vector } regions_1_ce1 { O 1 bit } regions_1_we1 { O 1 bit } regions_1_d1 { O 32 vector } regions_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name regions_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_2 \
    op interface \
    ports { regions_2_address0 { O 12 vector } regions_2_ce0 { O 1 bit } regions_2_we0 { O 1 bit } regions_2_d0 { O 32 vector } regions_2_q0 { I 32 vector } regions_2_address1 { O 12 vector } regions_2_ce1 { O 1 bit } regions_2_we1 { O 1 bit } regions_2_d1 { O 32 vector } regions_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name regions_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_3 \
    op interface \
    ports { regions_3_address0 { O 12 vector } regions_3_ce0 { O 1 bit } regions_3_we0 { O 1 bit } regions_3_d0 { O 32 vector } regions_3_q0 { I 32 vector } regions_3_address1 { O 12 vector } regions_3_ce1 { O 1 bit } regions_3_we1 { O 1 bit } regions_3_d1 { O 32 vector } regions_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name regions_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_4 \
    op interface \
    ports { regions_4_address0 { O 12 vector } regions_4_ce0 { O 1 bit } regions_4_we0 { O 1 bit } regions_4_d0 { O 32 vector } regions_4_q0 { I 32 vector } regions_4_address1 { O 12 vector } regions_4_ce1 { O 1 bit } regions_4_we1 { O 1 bit } regions_4_d1 { O 32 vector } regions_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name regions_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_5 \
    op interface \
    ports { regions_5_address0 { O 12 vector } regions_5_ce0 { O 1 bit } regions_5_we0 { O 1 bit } regions_5_d0 { O 32 vector } regions_5_q0 { I 32 vector } regions_5_address1 { O 12 vector } regions_5_ce1 { O 1 bit } regions_5_we1 { O 1 bit } regions_5_d1 { O 32 vector } regions_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_ZL9n_regions_63 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_63 \
    op interface \
    ports { p_ZL9n_regions_63_i { I 8 vector } p_ZL9n_regions_63_o { O 8 vector } p_ZL9n_regions_63_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name p_ZL9n_regions_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_0 \
    op interface \
    ports { p_ZL9n_regions_0_i { I 8 vector } p_ZL9n_regions_0_o { O 8 vector } p_ZL9n_regions_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name p_ZL9n_regions_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_1 \
    op interface \
    ports { p_ZL9n_regions_1_i { I 8 vector } p_ZL9n_regions_1_o { O 8 vector } p_ZL9n_regions_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name p_ZL9n_regions_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_2 \
    op interface \
    ports { p_ZL9n_regions_2_i { I 8 vector } p_ZL9n_regions_2_o { O 8 vector } p_ZL9n_regions_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name p_ZL9n_regions_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_3 \
    op interface \
    ports { p_ZL9n_regions_3_i { I 8 vector } p_ZL9n_regions_3_o { O 8 vector } p_ZL9n_regions_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_ZL9n_regions_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_4 \
    op interface \
    ports { p_ZL9n_regions_4_i { I 8 vector } p_ZL9n_regions_4_o { O 8 vector } p_ZL9n_regions_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_ZL9n_regions_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_5 \
    op interface \
    ports { p_ZL9n_regions_5_i { I 8 vector } p_ZL9n_regions_5_o { O 8 vector } p_ZL9n_regions_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_ZL9n_regions_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_6 \
    op interface \
    ports { p_ZL9n_regions_6_i { I 8 vector } p_ZL9n_regions_6_o { O 8 vector } p_ZL9n_regions_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_ZL9n_regions_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_7 \
    op interface \
    ports { p_ZL9n_regions_7_i { I 8 vector } p_ZL9n_regions_7_o { O 8 vector } p_ZL9n_regions_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_ZL9n_regions_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_8 \
    op interface \
    ports { p_ZL9n_regions_8_i { I 8 vector } p_ZL9n_regions_8_o { O 8 vector } p_ZL9n_regions_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name p_ZL9n_regions_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_9 \
    op interface \
    ports { p_ZL9n_regions_9_i { I 8 vector } p_ZL9n_regions_9_o { O 8 vector } p_ZL9n_regions_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_ZL9n_regions_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_10 \
    op interface \
    ports { p_ZL9n_regions_10_i { I 8 vector } p_ZL9n_regions_10_o { O 8 vector } p_ZL9n_regions_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_ZL9n_regions_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_11 \
    op interface \
    ports { p_ZL9n_regions_11_i { I 8 vector } p_ZL9n_regions_11_o { O 8 vector } p_ZL9n_regions_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name p_ZL9n_regions_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_12 \
    op interface \
    ports { p_ZL9n_regions_12_i { I 8 vector } p_ZL9n_regions_12_o { O 8 vector } p_ZL9n_regions_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name p_ZL9n_regions_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_13 \
    op interface \
    ports { p_ZL9n_regions_13_i { I 8 vector } p_ZL9n_regions_13_o { O 8 vector } p_ZL9n_regions_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name p_ZL9n_regions_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_14 \
    op interface \
    ports { p_ZL9n_regions_14_i { I 8 vector } p_ZL9n_regions_14_o { O 8 vector } p_ZL9n_regions_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_ZL9n_regions_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_15 \
    op interface \
    ports { p_ZL9n_regions_15_i { I 8 vector } p_ZL9n_regions_15_o { O 8 vector } p_ZL9n_regions_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_ZL9n_regions_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_16 \
    op interface \
    ports { p_ZL9n_regions_16_i { I 8 vector } p_ZL9n_regions_16_o { O 8 vector } p_ZL9n_regions_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_ZL9n_regions_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_17 \
    op interface \
    ports { p_ZL9n_regions_17_i { I 8 vector } p_ZL9n_regions_17_o { O 8 vector } p_ZL9n_regions_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_ZL9n_regions_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_18 \
    op interface \
    ports { p_ZL9n_regions_18_i { I 8 vector } p_ZL9n_regions_18_o { O 8 vector } p_ZL9n_regions_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_ZL9n_regions_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_19 \
    op interface \
    ports { p_ZL9n_regions_19_i { I 8 vector } p_ZL9n_regions_19_o { O 8 vector } p_ZL9n_regions_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_ZL9n_regions_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_20 \
    op interface \
    ports { p_ZL9n_regions_20_i { I 8 vector } p_ZL9n_regions_20_o { O 8 vector } p_ZL9n_regions_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_ZL9n_regions_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_21 \
    op interface \
    ports { p_ZL9n_regions_21_i { I 8 vector } p_ZL9n_regions_21_o { O 8 vector } p_ZL9n_regions_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_ZL9n_regions_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_22 \
    op interface \
    ports { p_ZL9n_regions_22_i { I 8 vector } p_ZL9n_regions_22_o { O 8 vector } p_ZL9n_regions_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_ZL9n_regions_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_23 \
    op interface \
    ports { p_ZL9n_regions_23_i { I 8 vector } p_ZL9n_regions_23_o { O 8 vector } p_ZL9n_regions_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_ZL9n_regions_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_24 \
    op interface \
    ports { p_ZL9n_regions_24_i { I 8 vector } p_ZL9n_regions_24_o { O 8 vector } p_ZL9n_regions_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_ZL9n_regions_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_25 \
    op interface \
    ports { p_ZL9n_regions_25_i { I 8 vector } p_ZL9n_regions_25_o { O 8 vector } p_ZL9n_regions_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_ZL9n_regions_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_26 \
    op interface \
    ports { p_ZL9n_regions_26_i { I 8 vector } p_ZL9n_regions_26_o { O 8 vector } p_ZL9n_regions_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_ZL9n_regions_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_27 \
    op interface \
    ports { p_ZL9n_regions_27_i { I 8 vector } p_ZL9n_regions_27_o { O 8 vector } p_ZL9n_regions_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_ZL9n_regions_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_28 \
    op interface \
    ports { p_ZL9n_regions_28_i { I 8 vector } p_ZL9n_regions_28_o { O 8 vector } p_ZL9n_regions_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_ZL9n_regions_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_29 \
    op interface \
    ports { p_ZL9n_regions_29_i { I 8 vector } p_ZL9n_regions_29_o { O 8 vector } p_ZL9n_regions_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_ZL9n_regions_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_30 \
    op interface \
    ports { p_ZL9n_regions_30_i { I 8 vector } p_ZL9n_regions_30_o { O 8 vector } p_ZL9n_regions_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_ZL9n_regions_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_31 \
    op interface \
    ports { p_ZL9n_regions_31_i { I 8 vector } p_ZL9n_regions_31_o { O 8 vector } p_ZL9n_regions_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_ZL9n_regions_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_32 \
    op interface \
    ports { p_ZL9n_regions_32_i { I 8 vector } p_ZL9n_regions_32_o { O 8 vector } p_ZL9n_regions_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_ZL9n_regions_33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_33 \
    op interface \
    ports { p_ZL9n_regions_33_i { I 8 vector } p_ZL9n_regions_33_o { O 8 vector } p_ZL9n_regions_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_ZL9n_regions_34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_34 \
    op interface \
    ports { p_ZL9n_regions_34_i { I 8 vector } p_ZL9n_regions_34_o { O 8 vector } p_ZL9n_regions_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_ZL9n_regions_35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_35 \
    op interface \
    ports { p_ZL9n_regions_35_i { I 8 vector } p_ZL9n_regions_35_o { O 8 vector } p_ZL9n_regions_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_ZL9n_regions_36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_36 \
    op interface \
    ports { p_ZL9n_regions_36_i { I 8 vector } p_ZL9n_regions_36_o { O 8 vector } p_ZL9n_regions_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_ZL9n_regions_37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_37 \
    op interface \
    ports { p_ZL9n_regions_37_i { I 8 vector } p_ZL9n_regions_37_o { O 8 vector } p_ZL9n_regions_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_ZL9n_regions_38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_38 \
    op interface \
    ports { p_ZL9n_regions_38_i { I 8 vector } p_ZL9n_regions_38_o { O 8 vector } p_ZL9n_regions_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_ZL9n_regions_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_39 \
    op interface \
    ports { p_ZL9n_regions_39_i { I 8 vector } p_ZL9n_regions_39_o { O 8 vector } p_ZL9n_regions_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_ZL9n_regions_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_40 \
    op interface \
    ports { p_ZL9n_regions_40_i { I 8 vector } p_ZL9n_regions_40_o { O 8 vector } p_ZL9n_regions_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_ZL9n_regions_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_41 \
    op interface \
    ports { p_ZL9n_regions_41_i { I 8 vector } p_ZL9n_regions_41_o { O 8 vector } p_ZL9n_regions_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_ZL9n_regions_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_42 \
    op interface \
    ports { p_ZL9n_regions_42_i { I 8 vector } p_ZL9n_regions_42_o { O 8 vector } p_ZL9n_regions_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_ZL9n_regions_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_43 \
    op interface \
    ports { p_ZL9n_regions_43_i { I 8 vector } p_ZL9n_regions_43_o { O 8 vector } p_ZL9n_regions_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_ZL9n_regions_44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_44 \
    op interface \
    ports { p_ZL9n_regions_44_i { I 8 vector } p_ZL9n_regions_44_o { O 8 vector } p_ZL9n_regions_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_ZL9n_regions_45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_45 \
    op interface \
    ports { p_ZL9n_regions_45_i { I 8 vector } p_ZL9n_regions_45_o { O 8 vector } p_ZL9n_regions_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_ZL9n_regions_46 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_46 \
    op interface \
    ports { p_ZL9n_regions_46_i { I 8 vector } p_ZL9n_regions_46_o { O 8 vector } p_ZL9n_regions_46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_ZL9n_regions_47 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_47 \
    op interface \
    ports { p_ZL9n_regions_47_i { I 8 vector } p_ZL9n_regions_47_o { O 8 vector } p_ZL9n_regions_47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_ZL9n_regions_48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_48 \
    op interface \
    ports { p_ZL9n_regions_48_i { I 8 vector } p_ZL9n_regions_48_o { O 8 vector } p_ZL9n_regions_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_ZL9n_regions_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_49 \
    op interface \
    ports { p_ZL9n_regions_49_i { I 8 vector } p_ZL9n_regions_49_o { O 8 vector } p_ZL9n_regions_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_ZL9n_regions_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_50 \
    op interface \
    ports { p_ZL9n_regions_50_i { I 8 vector } p_ZL9n_regions_50_o { O 8 vector } p_ZL9n_regions_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_ZL9n_regions_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_51 \
    op interface \
    ports { p_ZL9n_regions_51_i { I 8 vector } p_ZL9n_regions_51_o { O 8 vector } p_ZL9n_regions_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_ZL9n_regions_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_52 \
    op interface \
    ports { p_ZL9n_regions_52_i { I 8 vector } p_ZL9n_regions_52_o { O 8 vector } p_ZL9n_regions_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_ZL9n_regions_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_53 \
    op interface \
    ports { p_ZL9n_regions_53_i { I 8 vector } p_ZL9n_regions_53_o { O 8 vector } p_ZL9n_regions_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_ZL9n_regions_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_54 \
    op interface \
    ports { p_ZL9n_regions_54_i { I 8 vector } p_ZL9n_regions_54_o { O 8 vector } p_ZL9n_regions_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name p_ZL9n_regions_55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_55 \
    op interface \
    ports { p_ZL9n_regions_55_i { I 8 vector } p_ZL9n_regions_55_o { O 8 vector } p_ZL9n_regions_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name p_ZL9n_regions_56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_56 \
    op interface \
    ports { p_ZL9n_regions_56_i { I 8 vector } p_ZL9n_regions_56_o { O 8 vector } p_ZL9n_regions_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name p_ZL9n_regions_57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_57 \
    op interface \
    ports { p_ZL9n_regions_57_i { I 8 vector } p_ZL9n_regions_57_o { O 8 vector } p_ZL9n_regions_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name p_ZL9n_regions_58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_58 \
    op interface \
    ports { p_ZL9n_regions_58_i { I 8 vector } p_ZL9n_regions_58_o { O 8 vector } p_ZL9n_regions_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name p_ZL9n_regions_59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_59 \
    op interface \
    ports { p_ZL9n_regions_59_i { I 8 vector } p_ZL9n_regions_59_o { O 8 vector } p_ZL9n_regions_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name p_ZL9n_regions_60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_60 \
    op interface \
    ports { p_ZL9n_regions_60_i { I 8 vector } p_ZL9n_regions_60_o { O 8 vector } p_ZL9n_regions_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name p_ZL9n_regions_61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_61 \
    op interface \
    ports { p_ZL9n_regions_61_i { I 8 vector } p_ZL9n_regions_61_o { O 8 vector } p_ZL9n_regions_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_ZL9n_regions_62 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_62 \
    op interface \
    ports { p_ZL9n_regions_62_i { I 8 vector } p_ZL9n_regions_62_o { O 8 vector } p_ZL9n_regions_62_o_ap_vld { O 1 bit } } \
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


