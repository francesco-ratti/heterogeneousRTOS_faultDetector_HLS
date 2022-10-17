# This script segment is generated automatically by AutoPilot

set id 765
set name run_mux_648_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 8
set din5_signed 0
set din6_width 8
set din6_signed 0
set din7_width 8
set din7_signed 0
set din8_width 8
set din8_signed 0
set din9_width 8
set din9_signed 0
set din10_width 8
set din10_signed 0
set din11_width 8
set din11_signed 0
set din12_width 8
set din12_signed 0
set din13_width 8
set din13_signed 0
set din14_width 8
set din14_signed 0
set din15_width 8
set din15_signed 0
set din16_width 8
set din16_signed 0
set din17_width 8
set din17_signed 0
set din18_width 8
set din18_signed 0
set din19_width 8
set din19_signed 0
set din20_width 8
set din20_signed 0
set din21_width 8
set din21_signed 0
set din22_width 8
set din22_signed 0
set din23_width 8
set din23_signed 0
set din24_width 8
set din24_signed 0
set din25_width 8
set din25_signed 0
set din26_width 8
set din26_signed 0
set din27_width 8
set din27_signed 0
set din28_width 8
set din28_signed 0
set din29_width 8
set din29_signed 0
set din30_width 8
set din30_signed 0
set din31_width 8
set din31_signed 0
set din32_width 8
set din32_signed 0
set din33_width 8
set din33_signed 0
set din34_width 8
set din34_signed 0
set din35_width 8
set din35_signed 0
set din36_width 8
set din36_signed 0
set din37_width 8
set din37_signed 0
set din38_width 8
set din38_signed 0
set din39_width 8
set din39_signed 0
set din40_width 8
set din40_signed 0
set din41_width 8
set din41_signed 0
set din42_width 8
set din42_signed 0
set din43_width 8
set din43_signed 0
set din44_width 8
set din44_signed 0
set din45_width 8
set din45_signed 0
set din46_width 8
set din46_signed 0
set din47_width 8
set din47_signed 0
set din48_width 8
set din48_signed 0
set din49_width 8
set din49_signed 0
set din50_width 8
set din50_signed 0
set din51_width 8
set din51_signed 0
set din52_width 8
set din52_signed 0
set din53_width 8
set din53_signed 0
set din54_width 8
set din54_signed 0
set din55_width 8
set din55_signed 0
set din56_width 8
set din56_signed 0
set din57_width 8
set din57_signed 0
set din58_width 8
set din58_signed 0
set din59_width 8
set din59_signed 0
set din60_width 8
set din60_signed 0
set din61_width 8
set din61_signed 0
set din62_width 8
set din62_signed 0
set din63_width 8
set din63_signed 0
set din64_width 8
set din64_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name p_ZL9n_regions_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_0 \
    op interface \
    ports { p_ZL9n_regions_0_dout { I 8 vector } p_ZL9n_regions_0_num_data_valid { I 3 vector } p_ZL9n_regions_0_fifo_cap { I 3 vector } p_ZL9n_regions_0_empty_n { I 1 bit } p_ZL9n_regions_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name p_ZL9n_regions_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_1 \
    op interface \
    ports { p_ZL9n_regions_1_dout { I 8 vector } p_ZL9n_regions_1_num_data_valid { I 3 vector } p_ZL9n_regions_1_fifo_cap { I 3 vector } p_ZL9n_regions_1_empty_n { I 1 bit } p_ZL9n_regions_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name p_ZL9n_regions_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_10 \
    op interface \
    ports { p_ZL9n_regions_10_dout { I 8 vector } p_ZL9n_regions_10_num_data_valid { I 3 vector } p_ZL9n_regions_10_fifo_cap { I 3 vector } p_ZL9n_regions_10_empty_n { I 1 bit } p_ZL9n_regions_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name p_ZL9n_regions_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_11 \
    op interface \
    ports { p_ZL9n_regions_11_dout { I 8 vector } p_ZL9n_regions_11_num_data_valid { I 3 vector } p_ZL9n_regions_11_fifo_cap { I 3 vector } p_ZL9n_regions_11_empty_n { I 1 bit } p_ZL9n_regions_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name p_ZL9n_regions_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_12 \
    op interface \
    ports { p_ZL9n_regions_12_dout { I 8 vector } p_ZL9n_regions_12_num_data_valid { I 3 vector } p_ZL9n_regions_12_fifo_cap { I 3 vector } p_ZL9n_regions_12_empty_n { I 1 bit } p_ZL9n_regions_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name p_ZL9n_regions_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_13 \
    op interface \
    ports { p_ZL9n_regions_13_dout { I 8 vector } p_ZL9n_regions_13_num_data_valid { I 3 vector } p_ZL9n_regions_13_fifo_cap { I 3 vector } p_ZL9n_regions_13_empty_n { I 1 bit } p_ZL9n_regions_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name p_ZL9n_regions_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_14 \
    op interface \
    ports { p_ZL9n_regions_14_dout { I 8 vector } p_ZL9n_regions_14_num_data_valid { I 3 vector } p_ZL9n_regions_14_fifo_cap { I 3 vector } p_ZL9n_regions_14_empty_n { I 1 bit } p_ZL9n_regions_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name p_ZL9n_regions_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_15 \
    op interface \
    ports { p_ZL9n_regions_15_dout { I 8 vector } p_ZL9n_regions_15_num_data_valid { I 3 vector } p_ZL9n_regions_15_fifo_cap { I 3 vector } p_ZL9n_regions_15_empty_n { I 1 bit } p_ZL9n_regions_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name p_ZL9n_regions_16 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_16 \
    op interface \
    ports { p_ZL9n_regions_16_dout { I 8 vector } p_ZL9n_regions_16_num_data_valid { I 3 vector } p_ZL9n_regions_16_fifo_cap { I 3 vector } p_ZL9n_regions_16_empty_n { I 1 bit } p_ZL9n_regions_16_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name p_ZL9n_regions_17 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_17 \
    op interface \
    ports { p_ZL9n_regions_17_dout { I 8 vector } p_ZL9n_regions_17_num_data_valid { I 3 vector } p_ZL9n_regions_17_fifo_cap { I 3 vector } p_ZL9n_regions_17_empty_n { I 1 bit } p_ZL9n_regions_17_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name p_ZL9n_regions_18 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_18 \
    op interface \
    ports { p_ZL9n_regions_18_dout { I 8 vector } p_ZL9n_regions_18_num_data_valid { I 3 vector } p_ZL9n_regions_18_fifo_cap { I 3 vector } p_ZL9n_regions_18_empty_n { I 1 bit } p_ZL9n_regions_18_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name p_ZL9n_regions_19 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_19 \
    op interface \
    ports { p_ZL9n_regions_19_dout { I 8 vector } p_ZL9n_regions_19_num_data_valid { I 3 vector } p_ZL9n_regions_19_fifo_cap { I 3 vector } p_ZL9n_regions_19_empty_n { I 1 bit } p_ZL9n_regions_19_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name p_ZL9n_regions_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_2 \
    op interface \
    ports { p_ZL9n_regions_2_dout { I 8 vector } p_ZL9n_regions_2_num_data_valid { I 3 vector } p_ZL9n_regions_2_fifo_cap { I 3 vector } p_ZL9n_regions_2_empty_n { I 1 bit } p_ZL9n_regions_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
    name p_ZL9n_regions_20 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_20 \
    op interface \
    ports { p_ZL9n_regions_20_dout { I 8 vector } p_ZL9n_regions_20_num_data_valid { I 3 vector } p_ZL9n_regions_20_fifo_cap { I 3 vector } p_ZL9n_regions_20_empty_n { I 1 bit } p_ZL9n_regions_20_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 782 \
    name p_ZL9n_regions_21 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_21 \
    op interface \
    ports { p_ZL9n_regions_21_dout { I 8 vector } p_ZL9n_regions_21_num_data_valid { I 3 vector } p_ZL9n_regions_21_fifo_cap { I 3 vector } p_ZL9n_regions_21_empty_n { I 1 bit } p_ZL9n_regions_21_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 783 \
    name p_ZL9n_regions_22 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_22 \
    op interface \
    ports { p_ZL9n_regions_22_dout { I 8 vector } p_ZL9n_regions_22_num_data_valid { I 3 vector } p_ZL9n_regions_22_fifo_cap { I 3 vector } p_ZL9n_regions_22_empty_n { I 1 bit } p_ZL9n_regions_22_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 784 \
    name p_ZL9n_regions_23 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_23 \
    op interface \
    ports { p_ZL9n_regions_23_dout { I 8 vector } p_ZL9n_regions_23_num_data_valid { I 3 vector } p_ZL9n_regions_23_fifo_cap { I 3 vector } p_ZL9n_regions_23_empty_n { I 1 bit } p_ZL9n_regions_23_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 785 \
    name p_ZL9n_regions_24 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_24 \
    op interface \
    ports { p_ZL9n_regions_24_dout { I 8 vector } p_ZL9n_regions_24_num_data_valid { I 3 vector } p_ZL9n_regions_24_fifo_cap { I 3 vector } p_ZL9n_regions_24_empty_n { I 1 bit } p_ZL9n_regions_24_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 786 \
    name p_ZL9n_regions_25 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_25 \
    op interface \
    ports { p_ZL9n_regions_25_dout { I 8 vector } p_ZL9n_regions_25_num_data_valid { I 3 vector } p_ZL9n_regions_25_fifo_cap { I 3 vector } p_ZL9n_regions_25_empty_n { I 1 bit } p_ZL9n_regions_25_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 787 \
    name p_ZL9n_regions_26 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_26 \
    op interface \
    ports { p_ZL9n_regions_26_dout { I 8 vector } p_ZL9n_regions_26_num_data_valid { I 3 vector } p_ZL9n_regions_26_fifo_cap { I 3 vector } p_ZL9n_regions_26_empty_n { I 1 bit } p_ZL9n_regions_26_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 788 \
    name p_ZL9n_regions_27 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_27 \
    op interface \
    ports { p_ZL9n_regions_27_dout { I 8 vector } p_ZL9n_regions_27_num_data_valid { I 3 vector } p_ZL9n_regions_27_fifo_cap { I 3 vector } p_ZL9n_regions_27_empty_n { I 1 bit } p_ZL9n_regions_27_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 789 \
    name p_ZL9n_regions_28 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_28 \
    op interface \
    ports { p_ZL9n_regions_28_dout { I 8 vector } p_ZL9n_regions_28_num_data_valid { I 3 vector } p_ZL9n_regions_28_fifo_cap { I 3 vector } p_ZL9n_regions_28_empty_n { I 1 bit } p_ZL9n_regions_28_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 790 \
    name p_ZL9n_regions_29 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_29 \
    op interface \
    ports { p_ZL9n_regions_29_dout { I 8 vector } p_ZL9n_regions_29_num_data_valid { I 3 vector } p_ZL9n_regions_29_fifo_cap { I 3 vector } p_ZL9n_regions_29_empty_n { I 1 bit } p_ZL9n_regions_29_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 791 \
    name p_ZL9n_regions_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_3 \
    op interface \
    ports { p_ZL9n_regions_3_dout { I 8 vector } p_ZL9n_regions_3_num_data_valid { I 3 vector } p_ZL9n_regions_3_fifo_cap { I 3 vector } p_ZL9n_regions_3_empty_n { I 1 bit } p_ZL9n_regions_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 792 \
    name p_ZL9n_regions_30 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_30 \
    op interface \
    ports { p_ZL9n_regions_30_dout { I 8 vector } p_ZL9n_regions_30_num_data_valid { I 3 vector } p_ZL9n_regions_30_fifo_cap { I 3 vector } p_ZL9n_regions_30_empty_n { I 1 bit } p_ZL9n_regions_30_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 793 \
    name p_ZL9n_regions_31 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_31 \
    op interface \
    ports { p_ZL9n_regions_31_dout { I 8 vector } p_ZL9n_regions_31_num_data_valid { I 3 vector } p_ZL9n_regions_31_fifo_cap { I 3 vector } p_ZL9n_regions_31_empty_n { I 1 bit } p_ZL9n_regions_31_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 794 \
    name p_ZL9n_regions_32 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_32 \
    op interface \
    ports { p_ZL9n_regions_32_dout { I 8 vector } p_ZL9n_regions_32_num_data_valid { I 3 vector } p_ZL9n_regions_32_fifo_cap { I 3 vector } p_ZL9n_regions_32_empty_n { I 1 bit } p_ZL9n_regions_32_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 795 \
    name p_ZL9n_regions_33 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_33 \
    op interface \
    ports { p_ZL9n_regions_33_dout { I 8 vector } p_ZL9n_regions_33_num_data_valid { I 3 vector } p_ZL9n_regions_33_fifo_cap { I 3 vector } p_ZL9n_regions_33_empty_n { I 1 bit } p_ZL9n_regions_33_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 796 \
    name p_ZL9n_regions_34 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_34 \
    op interface \
    ports { p_ZL9n_regions_34_dout { I 8 vector } p_ZL9n_regions_34_num_data_valid { I 3 vector } p_ZL9n_regions_34_fifo_cap { I 3 vector } p_ZL9n_regions_34_empty_n { I 1 bit } p_ZL9n_regions_34_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 797 \
    name p_ZL9n_regions_35 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_35 \
    op interface \
    ports { p_ZL9n_regions_35_dout { I 8 vector } p_ZL9n_regions_35_num_data_valid { I 3 vector } p_ZL9n_regions_35_fifo_cap { I 3 vector } p_ZL9n_regions_35_empty_n { I 1 bit } p_ZL9n_regions_35_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 798 \
    name p_ZL9n_regions_36 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_36 \
    op interface \
    ports { p_ZL9n_regions_36_dout { I 8 vector } p_ZL9n_regions_36_num_data_valid { I 3 vector } p_ZL9n_regions_36_fifo_cap { I 3 vector } p_ZL9n_regions_36_empty_n { I 1 bit } p_ZL9n_regions_36_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 799 \
    name p_ZL9n_regions_37 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_37 \
    op interface \
    ports { p_ZL9n_regions_37_dout { I 8 vector } p_ZL9n_regions_37_num_data_valid { I 3 vector } p_ZL9n_regions_37_fifo_cap { I 3 vector } p_ZL9n_regions_37_empty_n { I 1 bit } p_ZL9n_regions_37_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 800 \
    name p_ZL9n_regions_38 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_38 \
    op interface \
    ports { p_ZL9n_regions_38_dout { I 8 vector } p_ZL9n_regions_38_num_data_valid { I 3 vector } p_ZL9n_regions_38_fifo_cap { I 3 vector } p_ZL9n_regions_38_empty_n { I 1 bit } p_ZL9n_regions_38_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 801 \
    name p_ZL9n_regions_39 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_39 \
    op interface \
    ports { p_ZL9n_regions_39_dout { I 8 vector } p_ZL9n_regions_39_num_data_valid { I 3 vector } p_ZL9n_regions_39_fifo_cap { I 3 vector } p_ZL9n_regions_39_empty_n { I 1 bit } p_ZL9n_regions_39_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 802 \
    name p_ZL9n_regions_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_4 \
    op interface \
    ports { p_ZL9n_regions_4_dout { I 8 vector } p_ZL9n_regions_4_num_data_valid { I 3 vector } p_ZL9n_regions_4_fifo_cap { I 3 vector } p_ZL9n_regions_4_empty_n { I 1 bit } p_ZL9n_regions_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 803 \
    name p_ZL9n_regions_40 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_40 \
    op interface \
    ports { p_ZL9n_regions_40_dout { I 8 vector } p_ZL9n_regions_40_num_data_valid { I 3 vector } p_ZL9n_regions_40_fifo_cap { I 3 vector } p_ZL9n_regions_40_empty_n { I 1 bit } p_ZL9n_regions_40_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 804 \
    name p_ZL9n_regions_41 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_41 \
    op interface \
    ports { p_ZL9n_regions_41_dout { I 8 vector } p_ZL9n_regions_41_num_data_valid { I 3 vector } p_ZL9n_regions_41_fifo_cap { I 3 vector } p_ZL9n_regions_41_empty_n { I 1 bit } p_ZL9n_regions_41_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 805 \
    name p_ZL9n_regions_42 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_42 \
    op interface \
    ports { p_ZL9n_regions_42_dout { I 8 vector } p_ZL9n_regions_42_num_data_valid { I 3 vector } p_ZL9n_regions_42_fifo_cap { I 3 vector } p_ZL9n_regions_42_empty_n { I 1 bit } p_ZL9n_regions_42_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 806 \
    name p_ZL9n_regions_43 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_43 \
    op interface \
    ports { p_ZL9n_regions_43_dout { I 8 vector } p_ZL9n_regions_43_num_data_valid { I 3 vector } p_ZL9n_regions_43_fifo_cap { I 3 vector } p_ZL9n_regions_43_empty_n { I 1 bit } p_ZL9n_regions_43_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 807 \
    name p_ZL9n_regions_44 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_44 \
    op interface \
    ports { p_ZL9n_regions_44_dout { I 8 vector } p_ZL9n_regions_44_num_data_valid { I 3 vector } p_ZL9n_regions_44_fifo_cap { I 3 vector } p_ZL9n_regions_44_empty_n { I 1 bit } p_ZL9n_regions_44_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 808 \
    name p_ZL9n_regions_45 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_45 \
    op interface \
    ports { p_ZL9n_regions_45_dout { I 8 vector } p_ZL9n_regions_45_num_data_valid { I 3 vector } p_ZL9n_regions_45_fifo_cap { I 3 vector } p_ZL9n_regions_45_empty_n { I 1 bit } p_ZL9n_regions_45_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 809 \
    name p_ZL9n_regions_46 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_46 \
    op interface \
    ports { p_ZL9n_regions_46_dout { I 8 vector } p_ZL9n_regions_46_num_data_valid { I 3 vector } p_ZL9n_regions_46_fifo_cap { I 3 vector } p_ZL9n_regions_46_empty_n { I 1 bit } p_ZL9n_regions_46_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 810 \
    name p_ZL9n_regions_47 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_47 \
    op interface \
    ports { p_ZL9n_regions_47_dout { I 8 vector } p_ZL9n_regions_47_num_data_valid { I 3 vector } p_ZL9n_regions_47_fifo_cap { I 3 vector } p_ZL9n_regions_47_empty_n { I 1 bit } p_ZL9n_regions_47_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 811 \
    name p_ZL9n_regions_48 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_48 \
    op interface \
    ports { p_ZL9n_regions_48_dout { I 8 vector } p_ZL9n_regions_48_num_data_valid { I 3 vector } p_ZL9n_regions_48_fifo_cap { I 3 vector } p_ZL9n_regions_48_empty_n { I 1 bit } p_ZL9n_regions_48_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 812 \
    name p_ZL9n_regions_49 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_49 \
    op interface \
    ports { p_ZL9n_regions_49_dout { I 8 vector } p_ZL9n_regions_49_num_data_valid { I 3 vector } p_ZL9n_regions_49_fifo_cap { I 3 vector } p_ZL9n_regions_49_empty_n { I 1 bit } p_ZL9n_regions_49_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 813 \
    name p_ZL9n_regions_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_5 \
    op interface \
    ports { p_ZL9n_regions_5_dout { I 8 vector } p_ZL9n_regions_5_num_data_valid { I 3 vector } p_ZL9n_regions_5_fifo_cap { I 3 vector } p_ZL9n_regions_5_empty_n { I 1 bit } p_ZL9n_regions_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name p_ZL9n_regions_50 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_50 \
    op interface \
    ports { p_ZL9n_regions_50_dout { I 8 vector } p_ZL9n_regions_50_num_data_valid { I 3 vector } p_ZL9n_regions_50_fifo_cap { I 3 vector } p_ZL9n_regions_50_empty_n { I 1 bit } p_ZL9n_regions_50_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name p_ZL9n_regions_51 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_51 \
    op interface \
    ports { p_ZL9n_regions_51_dout { I 8 vector } p_ZL9n_regions_51_num_data_valid { I 3 vector } p_ZL9n_regions_51_fifo_cap { I 3 vector } p_ZL9n_regions_51_empty_n { I 1 bit } p_ZL9n_regions_51_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name p_ZL9n_regions_52 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_52 \
    op interface \
    ports { p_ZL9n_regions_52_dout { I 8 vector } p_ZL9n_regions_52_num_data_valid { I 3 vector } p_ZL9n_regions_52_fifo_cap { I 3 vector } p_ZL9n_regions_52_empty_n { I 1 bit } p_ZL9n_regions_52_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name p_ZL9n_regions_53 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_53 \
    op interface \
    ports { p_ZL9n_regions_53_dout { I 8 vector } p_ZL9n_regions_53_num_data_valid { I 3 vector } p_ZL9n_regions_53_fifo_cap { I 3 vector } p_ZL9n_regions_53_empty_n { I 1 bit } p_ZL9n_regions_53_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name p_ZL9n_regions_54 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_54 \
    op interface \
    ports { p_ZL9n_regions_54_dout { I 8 vector } p_ZL9n_regions_54_num_data_valid { I 3 vector } p_ZL9n_regions_54_fifo_cap { I 3 vector } p_ZL9n_regions_54_empty_n { I 1 bit } p_ZL9n_regions_54_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 819 \
    name p_ZL9n_regions_55 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_55 \
    op interface \
    ports { p_ZL9n_regions_55_dout { I 8 vector } p_ZL9n_regions_55_num_data_valid { I 3 vector } p_ZL9n_regions_55_fifo_cap { I 3 vector } p_ZL9n_regions_55_empty_n { I 1 bit } p_ZL9n_regions_55_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 820 \
    name p_ZL9n_regions_56 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_56 \
    op interface \
    ports { p_ZL9n_regions_56_dout { I 8 vector } p_ZL9n_regions_56_num_data_valid { I 3 vector } p_ZL9n_regions_56_fifo_cap { I 3 vector } p_ZL9n_regions_56_empty_n { I 1 bit } p_ZL9n_regions_56_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 821 \
    name p_ZL9n_regions_57 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_57 \
    op interface \
    ports { p_ZL9n_regions_57_dout { I 8 vector } p_ZL9n_regions_57_num_data_valid { I 3 vector } p_ZL9n_regions_57_fifo_cap { I 3 vector } p_ZL9n_regions_57_empty_n { I 1 bit } p_ZL9n_regions_57_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 822 \
    name p_ZL9n_regions_58 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_58 \
    op interface \
    ports { p_ZL9n_regions_58_dout { I 8 vector } p_ZL9n_regions_58_num_data_valid { I 3 vector } p_ZL9n_regions_58_fifo_cap { I 3 vector } p_ZL9n_regions_58_empty_n { I 1 bit } p_ZL9n_regions_58_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 823 \
    name p_ZL9n_regions_59 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_59 \
    op interface \
    ports { p_ZL9n_regions_59_dout { I 8 vector } p_ZL9n_regions_59_num_data_valid { I 3 vector } p_ZL9n_regions_59_fifo_cap { I 3 vector } p_ZL9n_regions_59_empty_n { I 1 bit } p_ZL9n_regions_59_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 824 \
    name p_ZL9n_regions_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_6 \
    op interface \
    ports { p_ZL9n_regions_6_dout { I 8 vector } p_ZL9n_regions_6_num_data_valid { I 3 vector } p_ZL9n_regions_6_fifo_cap { I 3 vector } p_ZL9n_regions_6_empty_n { I 1 bit } p_ZL9n_regions_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name p_ZL9n_regions_60 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_60 \
    op interface \
    ports { p_ZL9n_regions_60_dout { I 8 vector } p_ZL9n_regions_60_num_data_valid { I 3 vector } p_ZL9n_regions_60_fifo_cap { I 3 vector } p_ZL9n_regions_60_empty_n { I 1 bit } p_ZL9n_regions_60_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name p_ZL9n_regions_61 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_61 \
    op interface \
    ports { p_ZL9n_regions_61_dout { I 8 vector } p_ZL9n_regions_61_num_data_valid { I 3 vector } p_ZL9n_regions_61_fifo_cap { I 3 vector } p_ZL9n_regions_61_empty_n { I 1 bit } p_ZL9n_regions_61_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name p_ZL9n_regions_62 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_62 \
    op interface \
    ports { p_ZL9n_regions_62_dout { I 8 vector } p_ZL9n_regions_62_num_data_valid { I 3 vector } p_ZL9n_regions_62_fifo_cap { I 3 vector } p_ZL9n_regions_62_empty_n { I 1 bit } p_ZL9n_regions_62_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name p_ZL9n_regions_63 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_63 \
    op interface \
    ports { p_ZL9n_regions_63_dout { I 8 vector } p_ZL9n_regions_63_num_data_valid { I 3 vector } p_ZL9n_regions_63_fifo_cap { I 3 vector } p_ZL9n_regions_63_empty_n { I 1 bit } p_ZL9n_regions_63_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name p_ZL9n_regions_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_7 \
    op interface \
    ports { p_ZL9n_regions_7_dout { I 8 vector } p_ZL9n_regions_7_num_data_valid { I 3 vector } p_ZL9n_regions_7_fifo_cap { I 3 vector } p_ZL9n_regions_7_empty_n { I 1 bit } p_ZL9n_regions_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name p_ZL9n_regions_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_8 \
    op interface \
    ports { p_ZL9n_regions_8_dout { I 8 vector } p_ZL9n_regions_8_num_data_valid { I 3 vector } p_ZL9n_regions_8_fifo_cap { I 3 vector } p_ZL9n_regions_8_empty_n { I 1 bit } p_ZL9n_regions_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 831 \
    name p_ZL9n_regions_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_9 \
    op interface \
    ports { p_ZL9n_regions_9_dout { I 8 vector } p_ZL9n_regions_9_num_data_valid { I 3 vector } p_ZL9n_regions_9_fifo_cap { I 3 vector } p_ZL9n_regions_9_empty_n { I 1 bit } p_ZL9n_regions_9_read { O 1 bit } } \
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


