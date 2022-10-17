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
    id 409 \
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
    id 410 \
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
    id 411 \
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
    id 412 \
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
    id 413 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 414 \
    name regions_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_6 \
    op interface \
    ports { regions_6_address0 { O 12 vector } regions_6_ce0 { O 1 bit } regions_6_we0 { O 1 bit } regions_6_d0 { O 32 vector } regions_6_q0 { I 32 vector } regions_6_address1 { O 12 vector } regions_6_ce1 { O 1 bit } regions_6_we1 { O 1 bit } regions_6_d1 { O 32 vector } regions_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_6'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
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
    id 275 \
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
    id 276 \
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
    id 277 \
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
    id 278 \
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
    id 279 \
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
    id 280 \
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
    id 281 \
    name p_ZL9n_regions_0_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_0_in \
    op interface \
    ports { p_ZL9n_regions_0_in_dout { I 8 vector } p_ZL9n_regions_0_in_num_data_valid { I 3 vector } p_ZL9n_regions_0_in_fifo_cap { I 3 vector } p_ZL9n_regions_0_in_empty_n { I 1 bit } p_ZL9n_regions_0_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name p_ZL9n_regions_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_0_out \
    op interface \
    ports { p_ZL9n_regions_0_out { O 8 vector } p_ZL9n_regions_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name p_ZL9n_regions_1_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_1_in \
    op interface \
    ports { p_ZL9n_regions_1_in_dout { I 8 vector } p_ZL9n_regions_1_in_num_data_valid { I 3 vector } p_ZL9n_regions_1_in_fifo_cap { I 3 vector } p_ZL9n_regions_1_in_empty_n { I 1 bit } p_ZL9n_regions_1_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name p_ZL9n_regions_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_1_out \
    op interface \
    ports { p_ZL9n_regions_1_out { O 8 vector } p_ZL9n_regions_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name p_ZL9n_regions_10_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_10_in \
    op interface \
    ports { p_ZL9n_regions_10_in_dout { I 8 vector } p_ZL9n_regions_10_in_num_data_valid { I 3 vector } p_ZL9n_regions_10_in_fifo_cap { I 3 vector } p_ZL9n_regions_10_in_empty_n { I 1 bit } p_ZL9n_regions_10_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name p_ZL9n_regions_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_10_out \
    op interface \
    ports { p_ZL9n_regions_10_out { O 8 vector } p_ZL9n_regions_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name p_ZL9n_regions_11_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_11_in \
    op interface \
    ports { p_ZL9n_regions_11_in_dout { I 8 vector } p_ZL9n_regions_11_in_num_data_valid { I 3 vector } p_ZL9n_regions_11_in_fifo_cap { I 3 vector } p_ZL9n_regions_11_in_empty_n { I 1 bit } p_ZL9n_regions_11_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name p_ZL9n_regions_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_11_out \
    op interface \
    ports { p_ZL9n_regions_11_out { O 8 vector } p_ZL9n_regions_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name p_ZL9n_regions_12_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_12_in \
    op interface \
    ports { p_ZL9n_regions_12_in_dout { I 8 vector } p_ZL9n_regions_12_in_num_data_valid { I 3 vector } p_ZL9n_regions_12_in_fifo_cap { I 3 vector } p_ZL9n_regions_12_in_empty_n { I 1 bit } p_ZL9n_regions_12_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name p_ZL9n_regions_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_12_out \
    op interface \
    ports { p_ZL9n_regions_12_out { O 8 vector } p_ZL9n_regions_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name p_ZL9n_regions_13_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_13_in \
    op interface \
    ports { p_ZL9n_regions_13_in_dout { I 8 vector } p_ZL9n_regions_13_in_num_data_valid { I 3 vector } p_ZL9n_regions_13_in_fifo_cap { I 3 vector } p_ZL9n_regions_13_in_empty_n { I 1 bit } p_ZL9n_regions_13_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name p_ZL9n_regions_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_13_out \
    op interface \
    ports { p_ZL9n_regions_13_out { O 8 vector } p_ZL9n_regions_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name p_ZL9n_regions_14_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_14_in \
    op interface \
    ports { p_ZL9n_regions_14_in_dout { I 8 vector } p_ZL9n_regions_14_in_num_data_valid { I 3 vector } p_ZL9n_regions_14_in_fifo_cap { I 3 vector } p_ZL9n_regions_14_in_empty_n { I 1 bit } p_ZL9n_regions_14_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name p_ZL9n_regions_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_14_out \
    op interface \
    ports { p_ZL9n_regions_14_out { O 8 vector } p_ZL9n_regions_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name p_ZL9n_regions_15_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_15_in \
    op interface \
    ports { p_ZL9n_regions_15_in_dout { I 8 vector } p_ZL9n_regions_15_in_num_data_valid { I 3 vector } p_ZL9n_regions_15_in_fifo_cap { I 3 vector } p_ZL9n_regions_15_in_empty_n { I 1 bit } p_ZL9n_regions_15_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name p_ZL9n_regions_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_15_out \
    op interface \
    ports { p_ZL9n_regions_15_out { O 8 vector } p_ZL9n_regions_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name p_ZL9n_regions_16_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_16_in \
    op interface \
    ports { p_ZL9n_regions_16_in_dout { I 8 vector } p_ZL9n_regions_16_in_num_data_valid { I 3 vector } p_ZL9n_regions_16_in_fifo_cap { I 3 vector } p_ZL9n_regions_16_in_empty_n { I 1 bit } p_ZL9n_regions_16_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name p_ZL9n_regions_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_16_out \
    op interface \
    ports { p_ZL9n_regions_16_out { O 8 vector } p_ZL9n_regions_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name p_ZL9n_regions_17_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_17_in \
    op interface \
    ports { p_ZL9n_regions_17_in_dout { I 8 vector } p_ZL9n_regions_17_in_num_data_valid { I 3 vector } p_ZL9n_regions_17_in_fifo_cap { I 3 vector } p_ZL9n_regions_17_in_empty_n { I 1 bit } p_ZL9n_regions_17_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name p_ZL9n_regions_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_17_out \
    op interface \
    ports { p_ZL9n_regions_17_out { O 8 vector } p_ZL9n_regions_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name p_ZL9n_regions_18_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_18_in \
    op interface \
    ports { p_ZL9n_regions_18_in_dout { I 8 vector } p_ZL9n_regions_18_in_num_data_valid { I 3 vector } p_ZL9n_regions_18_in_fifo_cap { I 3 vector } p_ZL9n_regions_18_in_empty_n { I 1 bit } p_ZL9n_regions_18_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_ZL9n_regions_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_18_out \
    op interface \
    ports { p_ZL9n_regions_18_out { O 8 vector } p_ZL9n_regions_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name p_ZL9n_regions_19_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_19_in \
    op interface \
    ports { p_ZL9n_regions_19_in_dout { I 8 vector } p_ZL9n_regions_19_in_num_data_valid { I 3 vector } p_ZL9n_regions_19_in_fifo_cap { I 3 vector } p_ZL9n_regions_19_in_empty_n { I 1 bit } p_ZL9n_regions_19_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name p_ZL9n_regions_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_19_out \
    op interface \
    ports { p_ZL9n_regions_19_out { O 8 vector } p_ZL9n_regions_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name p_ZL9n_regions_2_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_2_in \
    op interface \
    ports { p_ZL9n_regions_2_in_dout { I 8 vector } p_ZL9n_regions_2_in_num_data_valid { I 3 vector } p_ZL9n_regions_2_in_fifo_cap { I 3 vector } p_ZL9n_regions_2_in_empty_n { I 1 bit } p_ZL9n_regions_2_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name p_ZL9n_regions_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_2_out \
    op interface \
    ports { p_ZL9n_regions_2_out { O 8 vector } p_ZL9n_regions_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name p_ZL9n_regions_20_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_20_in \
    op interface \
    ports { p_ZL9n_regions_20_in_dout { I 8 vector } p_ZL9n_regions_20_in_num_data_valid { I 3 vector } p_ZL9n_regions_20_in_fifo_cap { I 3 vector } p_ZL9n_regions_20_in_empty_n { I 1 bit } p_ZL9n_regions_20_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name p_ZL9n_regions_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_20_out \
    op interface \
    ports { p_ZL9n_regions_20_out { O 8 vector } p_ZL9n_regions_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name p_ZL9n_regions_21_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_21_in \
    op interface \
    ports { p_ZL9n_regions_21_in_dout { I 8 vector } p_ZL9n_regions_21_in_num_data_valid { I 3 vector } p_ZL9n_regions_21_in_fifo_cap { I 3 vector } p_ZL9n_regions_21_in_empty_n { I 1 bit } p_ZL9n_regions_21_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name p_ZL9n_regions_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_21_out \
    op interface \
    ports { p_ZL9n_regions_21_out { O 8 vector } p_ZL9n_regions_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name p_ZL9n_regions_22_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_22_in \
    op interface \
    ports { p_ZL9n_regions_22_in_dout { I 8 vector } p_ZL9n_regions_22_in_num_data_valid { I 3 vector } p_ZL9n_regions_22_in_fifo_cap { I 3 vector } p_ZL9n_regions_22_in_empty_n { I 1 bit } p_ZL9n_regions_22_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name p_ZL9n_regions_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_22_out \
    op interface \
    ports { p_ZL9n_regions_22_out { O 8 vector } p_ZL9n_regions_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name p_ZL9n_regions_23_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_23_in \
    op interface \
    ports { p_ZL9n_regions_23_in_dout { I 8 vector } p_ZL9n_regions_23_in_num_data_valid { I 3 vector } p_ZL9n_regions_23_in_fifo_cap { I 3 vector } p_ZL9n_regions_23_in_empty_n { I 1 bit } p_ZL9n_regions_23_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name p_ZL9n_regions_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_23_out \
    op interface \
    ports { p_ZL9n_regions_23_out { O 8 vector } p_ZL9n_regions_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name p_ZL9n_regions_24_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_24_in \
    op interface \
    ports { p_ZL9n_regions_24_in_dout { I 8 vector } p_ZL9n_regions_24_in_num_data_valid { I 3 vector } p_ZL9n_regions_24_in_fifo_cap { I 3 vector } p_ZL9n_regions_24_in_empty_n { I 1 bit } p_ZL9n_regions_24_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name p_ZL9n_regions_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_24_out \
    op interface \
    ports { p_ZL9n_regions_24_out { O 8 vector } p_ZL9n_regions_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name p_ZL9n_regions_25_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_25_in \
    op interface \
    ports { p_ZL9n_regions_25_in_dout { I 8 vector } p_ZL9n_regions_25_in_num_data_valid { I 3 vector } p_ZL9n_regions_25_in_fifo_cap { I 3 vector } p_ZL9n_regions_25_in_empty_n { I 1 bit } p_ZL9n_regions_25_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name p_ZL9n_regions_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_25_out \
    op interface \
    ports { p_ZL9n_regions_25_out { O 8 vector } p_ZL9n_regions_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name p_ZL9n_regions_26_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_26_in \
    op interface \
    ports { p_ZL9n_regions_26_in_dout { I 8 vector } p_ZL9n_regions_26_in_num_data_valid { I 3 vector } p_ZL9n_regions_26_in_fifo_cap { I 3 vector } p_ZL9n_regions_26_in_empty_n { I 1 bit } p_ZL9n_regions_26_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name p_ZL9n_regions_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_26_out \
    op interface \
    ports { p_ZL9n_regions_26_out { O 8 vector } p_ZL9n_regions_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name p_ZL9n_regions_27_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_27_in \
    op interface \
    ports { p_ZL9n_regions_27_in_dout { I 8 vector } p_ZL9n_regions_27_in_num_data_valid { I 3 vector } p_ZL9n_regions_27_in_fifo_cap { I 3 vector } p_ZL9n_regions_27_in_empty_n { I 1 bit } p_ZL9n_regions_27_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name p_ZL9n_regions_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_27_out \
    op interface \
    ports { p_ZL9n_regions_27_out { O 8 vector } p_ZL9n_regions_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name p_ZL9n_regions_28_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_28_in \
    op interface \
    ports { p_ZL9n_regions_28_in_dout { I 8 vector } p_ZL9n_regions_28_in_num_data_valid { I 3 vector } p_ZL9n_regions_28_in_fifo_cap { I 3 vector } p_ZL9n_regions_28_in_empty_n { I 1 bit } p_ZL9n_regions_28_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name p_ZL9n_regions_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_28_out \
    op interface \
    ports { p_ZL9n_regions_28_out { O 8 vector } p_ZL9n_regions_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name p_ZL9n_regions_29_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_29_in \
    op interface \
    ports { p_ZL9n_regions_29_in_dout { I 8 vector } p_ZL9n_regions_29_in_num_data_valid { I 3 vector } p_ZL9n_regions_29_in_fifo_cap { I 3 vector } p_ZL9n_regions_29_in_empty_n { I 1 bit } p_ZL9n_regions_29_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name p_ZL9n_regions_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_29_out \
    op interface \
    ports { p_ZL9n_regions_29_out { O 8 vector } p_ZL9n_regions_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name p_ZL9n_regions_3_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_3_in \
    op interface \
    ports { p_ZL9n_regions_3_in_dout { I 8 vector } p_ZL9n_regions_3_in_num_data_valid { I 3 vector } p_ZL9n_regions_3_in_fifo_cap { I 3 vector } p_ZL9n_regions_3_in_empty_n { I 1 bit } p_ZL9n_regions_3_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name p_ZL9n_regions_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_3_out \
    op interface \
    ports { p_ZL9n_regions_3_out { O 8 vector } p_ZL9n_regions_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name p_ZL9n_regions_30_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_30_in \
    op interface \
    ports { p_ZL9n_regions_30_in_dout { I 8 vector } p_ZL9n_regions_30_in_num_data_valid { I 3 vector } p_ZL9n_regions_30_in_fifo_cap { I 3 vector } p_ZL9n_regions_30_in_empty_n { I 1 bit } p_ZL9n_regions_30_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name p_ZL9n_regions_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_30_out \
    op interface \
    ports { p_ZL9n_regions_30_out { O 8 vector } p_ZL9n_regions_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name p_ZL9n_regions_31_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_31_in \
    op interface \
    ports { p_ZL9n_regions_31_in_dout { I 8 vector } p_ZL9n_regions_31_in_num_data_valid { I 3 vector } p_ZL9n_regions_31_in_fifo_cap { I 3 vector } p_ZL9n_regions_31_in_empty_n { I 1 bit } p_ZL9n_regions_31_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name p_ZL9n_regions_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_31_out \
    op interface \
    ports { p_ZL9n_regions_31_out { O 8 vector } p_ZL9n_regions_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name p_ZL9n_regions_32_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_32_in \
    op interface \
    ports { p_ZL9n_regions_32_in_dout { I 8 vector } p_ZL9n_regions_32_in_num_data_valid { I 3 vector } p_ZL9n_regions_32_in_fifo_cap { I 3 vector } p_ZL9n_regions_32_in_empty_n { I 1 bit } p_ZL9n_regions_32_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name p_ZL9n_regions_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_32_out \
    op interface \
    ports { p_ZL9n_regions_32_out { O 8 vector } p_ZL9n_regions_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name p_ZL9n_regions_33_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_33_in \
    op interface \
    ports { p_ZL9n_regions_33_in_dout { I 8 vector } p_ZL9n_regions_33_in_num_data_valid { I 3 vector } p_ZL9n_regions_33_in_fifo_cap { I 3 vector } p_ZL9n_regions_33_in_empty_n { I 1 bit } p_ZL9n_regions_33_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name p_ZL9n_regions_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_33_out \
    op interface \
    ports { p_ZL9n_regions_33_out { O 8 vector } p_ZL9n_regions_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name p_ZL9n_regions_34_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_34_in \
    op interface \
    ports { p_ZL9n_regions_34_in_dout { I 8 vector } p_ZL9n_regions_34_in_num_data_valid { I 3 vector } p_ZL9n_regions_34_in_fifo_cap { I 3 vector } p_ZL9n_regions_34_in_empty_n { I 1 bit } p_ZL9n_regions_34_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name p_ZL9n_regions_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_34_out \
    op interface \
    ports { p_ZL9n_regions_34_out { O 8 vector } p_ZL9n_regions_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name p_ZL9n_regions_35_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_35_in \
    op interface \
    ports { p_ZL9n_regions_35_in_dout { I 8 vector } p_ZL9n_regions_35_in_num_data_valid { I 3 vector } p_ZL9n_regions_35_in_fifo_cap { I 3 vector } p_ZL9n_regions_35_in_empty_n { I 1 bit } p_ZL9n_regions_35_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name p_ZL9n_regions_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_35_out \
    op interface \
    ports { p_ZL9n_regions_35_out { O 8 vector } p_ZL9n_regions_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name p_ZL9n_regions_36_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_36_in \
    op interface \
    ports { p_ZL9n_regions_36_in_dout { I 8 vector } p_ZL9n_regions_36_in_num_data_valid { I 3 vector } p_ZL9n_regions_36_in_fifo_cap { I 3 vector } p_ZL9n_regions_36_in_empty_n { I 1 bit } p_ZL9n_regions_36_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name p_ZL9n_regions_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_36_out \
    op interface \
    ports { p_ZL9n_regions_36_out { O 8 vector } p_ZL9n_regions_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name p_ZL9n_regions_37_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_37_in \
    op interface \
    ports { p_ZL9n_regions_37_in_dout { I 8 vector } p_ZL9n_regions_37_in_num_data_valid { I 3 vector } p_ZL9n_regions_37_in_fifo_cap { I 3 vector } p_ZL9n_regions_37_in_empty_n { I 1 bit } p_ZL9n_regions_37_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name p_ZL9n_regions_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_37_out \
    op interface \
    ports { p_ZL9n_regions_37_out { O 8 vector } p_ZL9n_regions_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name p_ZL9n_regions_38_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_38_in \
    op interface \
    ports { p_ZL9n_regions_38_in_dout { I 8 vector } p_ZL9n_regions_38_in_num_data_valid { I 3 vector } p_ZL9n_regions_38_in_fifo_cap { I 3 vector } p_ZL9n_regions_38_in_empty_n { I 1 bit } p_ZL9n_regions_38_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name p_ZL9n_regions_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_38_out \
    op interface \
    ports { p_ZL9n_regions_38_out { O 8 vector } p_ZL9n_regions_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name p_ZL9n_regions_39_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_39_in \
    op interface \
    ports { p_ZL9n_regions_39_in_dout { I 8 vector } p_ZL9n_regions_39_in_num_data_valid { I 3 vector } p_ZL9n_regions_39_in_fifo_cap { I 3 vector } p_ZL9n_regions_39_in_empty_n { I 1 bit } p_ZL9n_regions_39_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name p_ZL9n_regions_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_39_out \
    op interface \
    ports { p_ZL9n_regions_39_out { O 8 vector } p_ZL9n_regions_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name p_ZL9n_regions_4_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_4_in \
    op interface \
    ports { p_ZL9n_regions_4_in_dout { I 8 vector } p_ZL9n_regions_4_in_num_data_valid { I 3 vector } p_ZL9n_regions_4_in_fifo_cap { I 3 vector } p_ZL9n_regions_4_in_empty_n { I 1 bit } p_ZL9n_regions_4_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name p_ZL9n_regions_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_4_out \
    op interface \
    ports { p_ZL9n_regions_4_out { O 8 vector } p_ZL9n_regions_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name p_ZL9n_regions_40_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_40_in \
    op interface \
    ports { p_ZL9n_regions_40_in_dout { I 8 vector } p_ZL9n_regions_40_in_num_data_valid { I 3 vector } p_ZL9n_regions_40_in_fifo_cap { I 3 vector } p_ZL9n_regions_40_in_empty_n { I 1 bit } p_ZL9n_regions_40_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name p_ZL9n_regions_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_40_out \
    op interface \
    ports { p_ZL9n_regions_40_out { O 8 vector } p_ZL9n_regions_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name p_ZL9n_regions_41_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_41_in \
    op interface \
    ports { p_ZL9n_regions_41_in_dout { I 8 vector } p_ZL9n_regions_41_in_num_data_valid { I 3 vector } p_ZL9n_regions_41_in_fifo_cap { I 3 vector } p_ZL9n_regions_41_in_empty_n { I 1 bit } p_ZL9n_regions_41_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name p_ZL9n_regions_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_41_out \
    op interface \
    ports { p_ZL9n_regions_41_out { O 8 vector } p_ZL9n_regions_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name p_ZL9n_regions_42_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_42_in \
    op interface \
    ports { p_ZL9n_regions_42_in_dout { I 8 vector } p_ZL9n_regions_42_in_num_data_valid { I 3 vector } p_ZL9n_regions_42_in_fifo_cap { I 3 vector } p_ZL9n_regions_42_in_empty_n { I 1 bit } p_ZL9n_regions_42_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name p_ZL9n_regions_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_42_out \
    op interface \
    ports { p_ZL9n_regions_42_out { O 8 vector } p_ZL9n_regions_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name p_ZL9n_regions_43_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_43_in \
    op interface \
    ports { p_ZL9n_regions_43_in_dout { I 8 vector } p_ZL9n_regions_43_in_num_data_valid { I 3 vector } p_ZL9n_regions_43_in_fifo_cap { I 3 vector } p_ZL9n_regions_43_in_empty_n { I 1 bit } p_ZL9n_regions_43_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name p_ZL9n_regions_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_43_out \
    op interface \
    ports { p_ZL9n_regions_43_out { O 8 vector } p_ZL9n_regions_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name p_ZL9n_regions_44_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_44_in \
    op interface \
    ports { p_ZL9n_regions_44_in_dout { I 8 vector } p_ZL9n_regions_44_in_num_data_valid { I 3 vector } p_ZL9n_regions_44_in_fifo_cap { I 3 vector } p_ZL9n_regions_44_in_empty_n { I 1 bit } p_ZL9n_regions_44_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name p_ZL9n_regions_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_44_out \
    op interface \
    ports { p_ZL9n_regions_44_out { O 8 vector } p_ZL9n_regions_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name p_ZL9n_regions_45_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_45_in \
    op interface \
    ports { p_ZL9n_regions_45_in_dout { I 8 vector } p_ZL9n_regions_45_in_num_data_valid { I 3 vector } p_ZL9n_regions_45_in_fifo_cap { I 3 vector } p_ZL9n_regions_45_in_empty_n { I 1 bit } p_ZL9n_regions_45_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name p_ZL9n_regions_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_45_out \
    op interface \
    ports { p_ZL9n_regions_45_out { O 8 vector } p_ZL9n_regions_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name p_ZL9n_regions_46_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_46_in \
    op interface \
    ports { p_ZL9n_regions_46_in_dout { I 8 vector } p_ZL9n_regions_46_in_num_data_valid { I 3 vector } p_ZL9n_regions_46_in_fifo_cap { I 3 vector } p_ZL9n_regions_46_in_empty_n { I 1 bit } p_ZL9n_regions_46_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name p_ZL9n_regions_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_46_out \
    op interface \
    ports { p_ZL9n_regions_46_out { O 8 vector } p_ZL9n_regions_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name p_ZL9n_regions_47_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_47_in \
    op interface \
    ports { p_ZL9n_regions_47_in_dout { I 8 vector } p_ZL9n_regions_47_in_num_data_valid { I 3 vector } p_ZL9n_regions_47_in_fifo_cap { I 3 vector } p_ZL9n_regions_47_in_empty_n { I 1 bit } p_ZL9n_regions_47_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name p_ZL9n_regions_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_47_out \
    op interface \
    ports { p_ZL9n_regions_47_out { O 8 vector } p_ZL9n_regions_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name p_ZL9n_regions_48_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_48_in \
    op interface \
    ports { p_ZL9n_regions_48_in_dout { I 8 vector } p_ZL9n_regions_48_in_num_data_valid { I 3 vector } p_ZL9n_regions_48_in_fifo_cap { I 3 vector } p_ZL9n_regions_48_in_empty_n { I 1 bit } p_ZL9n_regions_48_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name p_ZL9n_regions_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_48_out \
    op interface \
    ports { p_ZL9n_regions_48_out { O 8 vector } p_ZL9n_regions_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name p_ZL9n_regions_49_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_49_in \
    op interface \
    ports { p_ZL9n_regions_49_in_dout { I 8 vector } p_ZL9n_regions_49_in_num_data_valid { I 3 vector } p_ZL9n_regions_49_in_fifo_cap { I 3 vector } p_ZL9n_regions_49_in_empty_n { I 1 bit } p_ZL9n_regions_49_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name p_ZL9n_regions_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_49_out \
    op interface \
    ports { p_ZL9n_regions_49_out { O 8 vector } p_ZL9n_regions_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name p_ZL9n_regions_5_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_5_in \
    op interface \
    ports { p_ZL9n_regions_5_in_dout { I 8 vector } p_ZL9n_regions_5_in_num_data_valid { I 3 vector } p_ZL9n_regions_5_in_fifo_cap { I 3 vector } p_ZL9n_regions_5_in_empty_n { I 1 bit } p_ZL9n_regions_5_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name p_ZL9n_regions_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_5_out \
    op interface \
    ports { p_ZL9n_regions_5_out { O 8 vector } p_ZL9n_regions_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name p_ZL9n_regions_50_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_50_in \
    op interface \
    ports { p_ZL9n_regions_50_in_dout { I 8 vector } p_ZL9n_regions_50_in_num_data_valid { I 3 vector } p_ZL9n_regions_50_in_fifo_cap { I 3 vector } p_ZL9n_regions_50_in_empty_n { I 1 bit } p_ZL9n_regions_50_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name p_ZL9n_regions_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_50_out \
    op interface \
    ports { p_ZL9n_regions_50_out { O 8 vector } p_ZL9n_regions_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name p_ZL9n_regions_51_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_51_in \
    op interface \
    ports { p_ZL9n_regions_51_in_dout { I 8 vector } p_ZL9n_regions_51_in_num_data_valid { I 3 vector } p_ZL9n_regions_51_in_fifo_cap { I 3 vector } p_ZL9n_regions_51_in_empty_n { I 1 bit } p_ZL9n_regions_51_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name p_ZL9n_regions_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_51_out \
    op interface \
    ports { p_ZL9n_regions_51_out { O 8 vector } p_ZL9n_regions_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name p_ZL9n_regions_52_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_52_in \
    op interface \
    ports { p_ZL9n_regions_52_in_dout { I 8 vector } p_ZL9n_regions_52_in_num_data_valid { I 3 vector } p_ZL9n_regions_52_in_fifo_cap { I 3 vector } p_ZL9n_regions_52_in_empty_n { I 1 bit } p_ZL9n_regions_52_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name p_ZL9n_regions_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_52_out \
    op interface \
    ports { p_ZL9n_regions_52_out { O 8 vector } p_ZL9n_regions_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name p_ZL9n_regions_53_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_53_in \
    op interface \
    ports { p_ZL9n_regions_53_in_dout { I 8 vector } p_ZL9n_regions_53_in_num_data_valid { I 3 vector } p_ZL9n_regions_53_in_fifo_cap { I 3 vector } p_ZL9n_regions_53_in_empty_n { I 1 bit } p_ZL9n_regions_53_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name p_ZL9n_regions_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_53_out \
    op interface \
    ports { p_ZL9n_regions_53_out { O 8 vector } p_ZL9n_regions_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name p_ZL9n_regions_54_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_54_in \
    op interface \
    ports { p_ZL9n_regions_54_in_dout { I 8 vector } p_ZL9n_regions_54_in_num_data_valid { I 3 vector } p_ZL9n_regions_54_in_fifo_cap { I 3 vector } p_ZL9n_regions_54_in_empty_n { I 1 bit } p_ZL9n_regions_54_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name p_ZL9n_regions_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_54_out \
    op interface \
    ports { p_ZL9n_regions_54_out { O 8 vector } p_ZL9n_regions_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name p_ZL9n_regions_55_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_55_in \
    op interface \
    ports { p_ZL9n_regions_55_in_dout { I 8 vector } p_ZL9n_regions_55_in_num_data_valid { I 3 vector } p_ZL9n_regions_55_in_fifo_cap { I 3 vector } p_ZL9n_regions_55_in_empty_n { I 1 bit } p_ZL9n_regions_55_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name p_ZL9n_regions_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_55_out \
    op interface \
    ports { p_ZL9n_regions_55_out { O 8 vector } p_ZL9n_regions_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name p_ZL9n_regions_56_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_56_in \
    op interface \
    ports { p_ZL9n_regions_56_in_dout { I 8 vector } p_ZL9n_regions_56_in_num_data_valid { I 3 vector } p_ZL9n_regions_56_in_fifo_cap { I 3 vector } p_ZL9n_regions_56_in_empty_n { I 1 bit } p_ZL9n_regions_56_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name p_ZL9n_regions_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_56_out \
    op interface \
    ports { p_ZL9n_regions_56_out { O 8 vector } p_ZL9n_regions_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name p_ZL9n_regions_57_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_57_in \
    op interface \
    ports { p_ZL9n_regions_57_in_dout { I 8 vector } p_ZL9n_regions_57_in_num_data_valid { I 3 vector } p_ZL9n_regions_57_in_fifo_cap { I 3 vector } p_ZL9n_regions_57_in_empty_n { I 1 bit } p_ZL9n_regions_57_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name p_ZL9n_regions_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_57_out \
    op interface \
    ports { p_ZL9n_regions_57_out { O 8 vector } p_ZL9n_regions_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name p_ZL9n_regions_58_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_58_in \
    op interface \
    ports { p_ZL9n_regions_58_in_dout { I 8 vector } p_ZL9n_regions_58_in_num_data_valid { I 3 vector } p_ZL9n_regions_58_in_fifo_cap { I 3 vector } p_ZL9n_regions_58_in_empty_n { I 1 bit } p_ZL9n_regions_58_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name p_ZL9n_regions_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_58_out \
    op interface \
    ports { p_ZL9n_regions_58_out { O 8 vector } p_ZL9n_regions_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name p_ZL9n_regions_59_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_59_in \
    op interface \
    ports { p_ZL9n_regions_59_in_dout { I 8 vector } p_ZL9n_regions_59_in_num_data_valid { I 3 vector } p_ZL9n_regions_59_in_fifo_cap { I 3 vector } p_ZL9n_regions_59_in_empty_n { I 1 bit } p_ZL9n_regions_59_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name p_ZL9n_regions_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_59_out \
    op interface \
    ports { p_ZL9n_regions_59_out { O 8 vector } p_ZL9n_regions_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name p_ZL9n_regions_6_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_6_in \
    op interface \
    ports { p_ZL9n_regions_6_in_dout { I 8 vector } p_ZL9n_regions_6_in_num_data_valid { I 3 vector } p_ZL9n_regions_6_in_fifo_cap { I 3 vector } p_ZL9n_regions_6_in_empty_n { I 1 bit } p_ZL9n_regions_6_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name p_ZL9n_regions_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_6_out \
    op interface \
    ports { p_ZL9n_regions_6_out { O 8 vector } p_ZL9n_regions_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name p_ZL9n_regions_60_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_60_in \
    op interface \
    ports { p_ZL9n_regions_60_in_dout { I 8 vector } p_ZL9n_regions_60_in_num_data_valid { I 3 vector } p_ZL9n_regions_60_in_fifo_cap { I 3 vector } p_ZL9n_regions_60_in_empty_n { I 1 bit } p_ZL9n_regions_60_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name p_ZL9n_regions_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_60_out \
    op interface \
    ports { p_ZL9n_regions_60_out { O 8 vector } p_ZL9n_regions_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name p_ZL9n_regions_61_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_61_in \
    op interface \
    ports { p_ZL9n_regions_61_in_dout { I 8 vector } p_ZL9n_regions_61_in_num_data_valid { I 3 vector } p_ZL9n_regions_61_in_fifo_cap { I 3 vector } p_ZL9n_regions_61_in_empty_n { I 1 bit } p_ZL9n_regions_61_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name p_ZL9n_regions_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_61_out \
    op interface \
    ports { p_ZL9n_regions_61_out { O 8 vector } p_ZL9n_regions_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name p_ZL9n_regions_62_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_62_in \
    op interface \
    ports { p_ZL9n_regions_62_in_dout { I 8 vector } p_ZL9n_regions_62_in_num_data_valid { I 3 vector } p_ZL9n_regions_62_in_fifo_cap { I 3 vector } p_ZL9n_regions_62_in_empty_n { I 1 bit } p_ZL9n_regions_62_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name p_ZL9n_regions_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_62_out \
    op interface \
    ports { p_ZL9n_regions_62_out { O 8 vector } p_ZL9n_regions_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name p_ZL9n_regions_63_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_63_in \
    op interface \
    ports { p_ZL9n_regions_63_in_dout { I 8 vector } p_ZL9n_regions_63_in_num_data_valid { I 3 vector } p_ZL9n_regions_63_in_fifo_cap { I 3 vector } p_ZL9n_regions_63_in_empty_n { I 1 bit } p_ZL9n_regions_63_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name p_ZL9n_regions_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_63_out \
    op interface \
    ports { p_ZL9n_regions_63_out { O 8 vector } p_ZL9n_regions_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name p_ZL9n_regions_7_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_7_in \
    op interface \
    ports { p_ZL9n_regions_7_in_dout { I 8 vector } p_ZL9n_regions_7_in_num_data_valid { I 3 vector } p_ZL9n_regions_7_in_fifo_cap { I 3 vector } p_ZL9n_regions_7_in_empty_n { I 1 bit } p_ZL9n_regions_7_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name p_ZL9n_regions_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_7_out \
    op interface \
    ports { p_ZL9n_regions_7_out { O 8 vector } p_ZL9n_regions_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name p_ZL9n_regions_8_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_8_in \
    op interface \
    ports { p_ZL9n_regions_8_in_dout { I 8 vector } p_ZL9n_regions_8_in_num_data_valid { I 3 vector } p_ZL9n_regions_8_in_fifo_cap { I 3 vector } p_ZL9n_regions_8_in_empty_n { I 1 bit } p_ZL9n_regions_8_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name p_ZL9n_regions_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_8_out \
    op interface \
    ports { p_ZL9n_regions_8_out { O 8 vector } p_ZL9n_regions_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name p_ZL9n_regions_9_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_9_in \
    op interface \
    ports { p_ZL9n_regions_9_in_dout { I 8 vector } p_ZL9n_regions_9_in_num_data_valid { I 3 vector } p_ZL9n_regions_9_in_fifo_cap { I 3 vector } p_ZL9n_regions_9_in_empty_n { I 1 bit } p_ZL9n_regions_9_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name p_ZL9n_regions_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_9_out \
    op interface \
    ports { p_ZL9n_regions_9_out { O 8 vector } p_ZL9n_regions_9_out_ap_vld { O 1 bit } } \
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


