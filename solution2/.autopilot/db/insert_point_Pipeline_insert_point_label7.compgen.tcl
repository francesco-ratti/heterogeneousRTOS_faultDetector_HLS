# This script segment is generated automatically by AutoPilot

set id 1305
set name run_mux_154_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 4
set din15_signed 0
set dout_width 32
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

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1330 \
    name regions_47 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_47 \
    op interface \
    ports { regions_47_address0 { O 9 vector } regions_47_ce0 { O 1 bit } regions_47_we0 { O 1 bit } regions_47_d0 { O 32 vector } regions_47_q0 { I 32 vector } regions_47_address1 { O 9 vector } regions_47_ce1 { O 1 bit } regions_47_we1 { O 1 bit } regions_47_d1 { O 32 vector } regions_47_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1332 \
    name regions_46 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_46 \
    op interface \
    ports { regions_46_address0 { O 9 vector } regions_46_ce0 { O 1 bit } regions_46_we0 { O 1 bit } regions_46_d0 { O 32 vector } regions_46_q0 { I 32 vector } regions_46_address1 { O 9 vector } regions_46_ce1 { O 1 bit } regions_46_we1 { O 1 bit } regions_46_d1 { O 32 vector } regions_46_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1333 \
    name regions_45 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_45 \
    op interface \
    ports { regions_45_address0 { O 9 vector } regions_45_ce0 { O 1 bit } regions_45_we0 { O 1 bit } regions_45_d0 { O 32 vector } regions_45_q0 { I 32 vector } regions_45_address1 { O 9 vector } regions_45_ce1 { O 1 bit } regions_45_we1 { O 1 bit } regions_45_d1 { O 32 vector } regions_45_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1334 \
    name regions_44 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_44 \
    op interface \
    ports { regions_44_address0 { O 9 vector } regions_44_ce0 { O 1 bit } regions_44_we0 { O 1 bit } regions_44_d0 { O 32 vector } regions_44_q0 { I 32 vector } regions_44_address1 { O 9 vector } regions_44_ce1 { O 1 bit } regions_44_we1 { O 1 bit } regions_44_d1 { O 32 vector } regions_44_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1335 \
    name regions_43 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_43 \
    op interface \
    ports { regions_43_address0 { O 9 vector } regions_43_ce0 { O 1 bit } regions_43_we0 { O 1 bit } regions_43_d0 { O 32 vector } regions_43_q0 { I 32 vector } regions_43_address1 { O 9 vector } regions_43_ce1 { O 1 bit } regions_43_we1 { O 1 bit } regions_43_d1 { O 32 vector } regions_43_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1336 \
    name regions_42 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_42 \
    op interface \
    ports { regions_42_address0 { O 9 vector } regions_42_ce0 { O 1 bit } regions_42_we0 { O 1 bit } regions_42_d0 { O 32 vector } regions_42_q0 { I 32 vector } regions_42_address1 { O 9 vector } regions_42_ce1 { O 1 bit } regions_42_we1 { O 1 bit } regions_42_d1 { O 32 vector } regions_42_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1337 \
    name regions_41 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_41 \
    op interface \
    ports { regions_41_address0 { O 9 vector } regions_41_ce0 { O 1 bit } regions_41_we0 { O 1 bit } regions_41_d0 { O 32 vector } regions_41_q0 { I 32 vector } regions_41_address1 { O 9 vector } regions_41_ce1 { O 1 bit } regions_41_we1 { O 1 bit } regions_41_d1 { O 32 vector } regions_41_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1338 \
    name regions_40 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_40 \
    op interface \
    ports { regions_40_address0 { O 9 vector } regions_40_ce0 { O 1 bit } regions_40_we0 { O 1 bit } regions_40_d0 { O 32 vector } regions_40_q0 { I 32 vector } regions_40_address1 { O 9 vector } regions_40_ce1 { O 1 bit } regions_40_we1 { O 1 bit } regions_40_d1 { O 32 vector } regions_40_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1339 \
    name regions_39 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_39 \
    op interface \
    ports { regions_39_address0 { O 9 vector } regions_39_ce0 { O 1 bit } regions_39_we0 { O 1 bit } regions_39_d0 { O 32 vector } regions_39_q0 { I 32 vector } regions_39_address1 { O 9 vector } regions_39_ce1 { O 1 bit } regions_39_we1 { O 1 bit } regions_39_d1 { O 32 vector } regions_39_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1340 \
    name regions_38 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_38 \
    op interface \
    ports { regions_38_address0 { O 9 vector } regions_38_ce0 { O 1 bit } regions_38_we0 { O 1 bit } regions_38_d0 { O 32 vector } regions_38_q0 { I 32 vector } regions_38_address1 { O 9 vector } regions_38_ce1 { O 1 bit } regions_38_we1 { O 1 bit } regions_38_d1 { O 32 vector } regions_38_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1341 \
    name regions_37 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_37 \
    op interface \
    ports { regions_37_address0 { O 9 vector } regions_37_ce0 { O 1 bit } regions_37_we0 { O 1 bit } regions_37_d0 { O 32 vector } regions_37_q0 { I 32 vector } regions_37_address1 { O 9 vector } regions_37_ce1 { O 1 bit } regions_37_we1 { O 1 bit } regions_37_d1 { O 32 vector } regions_37_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1342 \
    name regions_36 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_36 \
    op interface \
    ports { regions_36_address0 { O 9 vector } regions_36_ce0 { O 1 bit } regions_36_we0 { O 1 bit } regions_36_d0 { O 32 vector } regions_36_q0 { I 32 vector } regions_36_address1 { O 9 vector } regions_36_ce1 { O 1 bit } regions_36_we1 { O 1 bit } regions_36_d1 { O 32 vector } regions_36_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1343 \
    name regions_35 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_35 \
    op interface \
    ports { regions_35_address0 { O 9 vector } regions_35_ce0 { O 1 bit } regions_35_we0 { O 1 bit } regions_35_d0 { O 32 vector } regions_35_q0 { I 32 vector } regions_35_address1 { O 9 vector } regions_35_ce1 { O 1 bit } regions_35_we1 { O 1 bit } regions_35_d1 { O 32 vector } regions_35_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1344 \
    name regions_34 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_34 \
    op interface \
    ports { regions_34_address0 { O 9 vector } regions_34_ce0 { O 1 bit } regions_34_we0 { O 1 bit } regions_34_d0 { O 32 vector } regions_34_q0 { I 32 vector } regions_34_address1 { O 9 vector } regions_34_ce1 { O 1 bit } regions_34_we1 { O 1 bit } regions_34_d1 { O 32 vector } regions_34_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1352 \
    name regions_31 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_31 \
    op interface \
    ports { regions_31_address0 { O 9 vector } regions_31_ce0 { O 1 bit } regions_31_we0 { O 1 bit } regions_31_d0 { O 32 vector } regions_31_q0 { I 32 vector } regions_31_address1 { O 9 vector } regions_31_ce1 { O 1 bit } regions_31_we1 { O 1 bit } regions_31_d1 { O 32 vector } regions_31_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1353 \
    name regions_30 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_30 \
    op interface \
    ports { regions_30_address0 { O 9 vector } regions_30_ce0 { O 1 bit } regions_30_we0 { O 1 bit } regions_30_d0 { O 32 vector } regions_30_q0 { I 32 vector } regions_30_address1 { O 9 vector } regions_30_ce1 { O 1 bit } regions_30_we1 { O 1 bit } regions_30_d1 { O 32 vector } regions_30_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1354 \
    name regions_29 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_29 \
    op interface \
    ports { regions_29_address0 { O 9 vector } regions_29_ce0 { O 1 bit } regions_29_we0 { O 1 bit } regions_29_d0 { O 32 vector } regions_29_q0 { I 32 vector } regions_29_address1 { O 9 vector } regions_29_ce1 { O 1 bit } regions_29_we1 { O 1 bit } regions_29_d1 { O 32 vector } regions_29_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1355 \
    name regions_28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_28 \
    op interface \
    ports { regions_28_address0 { O 9 vector } regions_28_ce0 { O 1 bit } regions_28_we0 { O 1 bit } regions_28_d0 { O 32 vector } regions_28_q0 { I 32 vector } regions_28_address1 { O 9 vector } regions_28_ce1 { O 1 bit } regions_28_we1 { O 1 bit } regions_28_d1 { O 32 vector } regions_28_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1356 \
    name regions_27 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_27 \
    op interface \
    ports { regions_27_address0 { O 9 vector } regions_27_ce0 { O 1 bit } regions_27_we0 { O 1 bit } regions_27_d0 { O 32 vector } regions_27_q0 { I 32 vector } regions_27_address1 { O 9 vector } regions_27_ce1 { O 1 bit } regions_27_we1 { O 1 bit } regions_27_d1 { O 32 vector } regions_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1357 \
    name regions_26 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_26 \
    op interface \
    ports { regions_26_address0 { O 9 vector } regions_26_ce0 { O 1 bit } regions_26_we0 { O 1 bit } regions_26_d0 { O 32 vector } regions_26_q0 { I 32 vector } regions_26_address1 { O 9 vector } regions_26_ce1 { O 1 bit } regions_26_we1 { O 1 bit } regions_26_d1 { O 32 vector } regions_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1358 \
    name regions_25 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_25 \
    op interface \
    ports { regions_25_address0 { O 9 vector } regions_25_ce0 { O 1 bit } regions_25_we0 { O 1 bit } regions_25_d0 { O 32 vector } regions_25_q0 { I 32 vector } regions_25_address1 { O 9 vector } regions_25_ce1 { O 1 bit } regions_25_we1 { O 1 bit } regions_25_d1 { O 32 vector } regions_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1359 \
    name regions_24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_24 \
    op interface \
    ports { regions_24_address0 { O 9 vector } regions_24_ce0 { O 1 bit } regions_24_we0 { O 1 bit } regions_24_d0 { O 32 vector } regions_24_q0 { I 32 vector } regions_24_address1 { O 9 vector } regions_24_ce1 { O 1 bit } regions_24_we1 { O 1 bit } regions_24_d1 { O 32 vector } regions_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1360 \
    name regions_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_23 \
    op interface \
    ports { regions_23_address0 { O 9 vector } regions_23_ce0 { O 1 bit } regions_23_we0 { O 1 bit } regions_23_d0 { O 32 vector } regions_23_q0 { I 32 vector } regions_23_address1 { O 9 vector } regions_23_ce1 { O 1 bit } regions_23_we1 { O 1 bit } regions_23_d1 { O 32 vector } regions_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1361 \
    name regions_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_22 \
    op interface \
    ports { regions_22_address0 { O 9 vector } regions_22_ce0 { O 1 bit } regions_22_we0 { O 1 bit } regions_22_d0 { O 32 vector } regions_22_q0 { I 32 vector } regions_22_address1 { O 9 vector } regions_22_ce1 { O 1 bit } regions_22_we1 { O 1 bit } regions_22_d1 { O 32 vector } regions_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1362 \
    name regions_21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_21 \
    op interface \
    ports { regions_21_address0 { O 9 vector } regions_21_ce0 { O 1 bit } regions_21_we0 { O 1 bit } regions_21_d0 { O 32 vector } regions_21_q0 { I 32 vector } regions_21_address1 { O 9 vector } regions_21_ce1 { O 1 bit } regions_21_we1 { O 1 bit } regions_21_d1 { O 32 vector } regions_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1363 \
    name regions_20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_20 \
    op interface \
    ports { regions_20_address0 { O 9 vector } regions_20_ce0 { O 1 bit } regions_20_we0 { O 1 bit } regions_20_d0 { O 32 vector } regions_20_q0 { I 32 vector } regions_20_address1 { O 9 vector } regions_20_ce1 { O 1 bit } regions_20_we1 { O 1 bit } regions_20_d1 { O 32 vector } regions_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1364 \
    name regions_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_19 \
    op interface \
    ports { regions_19_address0 { O 9 vector } regions_19_ce0 { O 1 bit } regions_19_we0 { O 1 bit } regions_19_d0 { O 32 vector } regions_19_q0 { I 32 vector } regions_19_address1 { O 9 vector } regions_19_ce1 { O 1 bit } regions_19_we1 { O 1 bit } regions_19_d1 { O 32 vector } regions_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1365 \
    name regions_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_18 \
    op interface \
    ports { regions_18_address0 { O 9 vector } regions_18_ce0 { O 1 bit } regions_18_we0 { O 1 bit } regions_18_d0 { O 32 vector } regions_18_q0 { I 32 vector } regions_18_address1 { O 9 vector } regions_18_ce1 { O 1 bit } regions_18_we1 { O 1 bit } regions_18_d1 { O 32 vector } regions_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1366 \
    name regions_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_15 \
    op interface \
    ports { regions_15_address0 { O 9 vector } regions_15_ce0 { O 1 bit } regions_15_we0 { O 1 bit } regions_15_d0 { O 32 vector } regions_15_q0 { I 32 vector } regions_15_address1 { O 9 vector } regions_15_ce1 { O 1 bit } regions_15_we1 { O 1 bit } regions_15_d1 { O 32 vector } regions_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1367 \
    name regions_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_14 \
    op interface \
    ports { regions_14_address0 { O 9 vector } regions_14_ce0 { O 1 bit } regions_14_we0 { O 1 bit } regions_14_d0 { O 32 vector } regions_14_q0 { I 32 vector } regions_14_address1 { O 9 vector } regions_14_ce1 { O 1 bit } regions_14_we1 { O 1 bit } regions_14_d1 { O 32 vector } regions_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1368 \
    name regions_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_13 \
    op interface \
    ports { regions_13_address0 { O 9 vector } regions_13_ce0 { O 1 bit } regions_13_we0 { O 1 bit } regions_13_d0 { O 32 vector } regions_13_q0 { I 32 vector } regions_13_address1 { O 9 vector } regions_13_ce1 { O 1 bit } regions_13_we1 { O 1 bit } regions_13_d1 { O 32 vector } regions_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1369 \
    name regions_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_12 \
    op interface \
    ports { regions_12_address0 { O 9 vector } regions_12_ce0 { O 1 bit } regions_12_we0 { O 1 bit } regions_12_d0 { O 32 vector } regions_12_q0 { I 32 vector } regions_12_address1 { O 9 vector } regions_12_ce1 { O 1 bit } regions_12_we1 { O 1 bit } regions_12_d1 { O 32 vector } regions_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1370 \
    name regions_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_11 \
    op interface \
    ports { regions_11_address0 { O 9 vector } regions_11_ce0 { O 1 bit } regions_11_we0 { O 1 bit } regions_11_d0 { O 32 vector } regions_11_q0 { I 32 vector } regions_11_address1 { O 9 vector } regions_11_ce1 { O 1 bit } regions_11_we1 { O 1 bit } regions_11_d1 { O 32 vector } regions_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1371 \
    name regions_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_10 \
    op interface \
    ports { regions_10_address0 { O 9 vector } regions_10_ce0 { O 1 bit } regions_10_we0 { O 1 bit } regions_10_d0 { O 32 vector } regions_10_q0 { I 32 vector } regions_10_address1 { O 9 vector } regions_10_ce1 { O 1 bit } regions_10_we1 { O 1 bit } regions_10_d1 { O 32 vector } regions_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1372 \
    name regions_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_9 \
    op interface \
    ports { regions_9_address0 { O 9 vector } regions_9_ce0 { O 1 bit } regions_9_we0 { O 1 bit } regions_9_d0 { O 32 vector } regions_9_q0 { I 32 vector } regions_9_address1 { O 9 vector } regions_9_ce1 { O 1 bit } regions_9_we1 { O 1 bit } regions_9_d1 { O 32 vector } regions_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1373 \
    name regions_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_8 \
    op interface \
    ports { regions_8_address0 { O 9 vector } regions_8_ce0 { O 1 bit } regions_8_we0 { O 1 bit } regions_8_d0 { O 32 vector } regions_8_q0 { I 32 vector } regions_8_address1 { O 9 vector } regions_8_ce1 { O 1 bit } regions_8_we1 { O 1 bit } regions_8_d1 { O 32 vector } regions_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1374 \
    name regions_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_7 \
    op interface \
    ports { regions_7_address0 { O 9 vector } regions_7_ce0 { O 1 bit } regions_7_we0 { O 1 bit } regions_7_d0 { O 32 vector } regions_7_q0 { I 32 vector } regions_7_address1 { O 9 vector } regions_7_ce1 { O 1 bit } regions_7_we1 { O 1 bit } regions_7_d1 { O 32 vector } regions_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1375 \
    name regions_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_6 \
    op interface \
    ports { regions_6_address0 { O 9 vector } regions_6_ce0 { O 1 bit } regions_6_we0 { O 1 bit } regions_6_d0 { O 32 vector } regions_6_q0 { I 32 vector } regions_6_address1 { O 9 vector } regions_6_ce1 { O 1 bit } regions_6_we1 { O 1 bit } regions_6_d1 { O 32 vector } regions_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1376 \
    name regions_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_5 \
    op interface \
    ports { regions_5_address0 { O 9 vector } regions_5_ce0 { O 1 bit } regions_5_we0 { O 1 bit } regions_5_d0 { O 32 vector } regions_5_q0 { I 32 vector } regions_5_address1 { O 9 vector } regions_5_ce1 { O 1 bit } regions_5_we1 { O 1 bit } regions_5_d1 { O 32 vector } regions_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1377 \
    name regions_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_4 \
    op interface \
    ports { regions_4_address0 { O 9 vector } regions_4_ce0 { O 1 bit } regions_4_we0 { O 1 bit } regions_4_d0 { O 32 vector } regions_4_q0 { I 32 vector } regions_4_address1 { O 9 vector } regions_4_ce1 { O 1 bit } regions_4_we1 { O 1 bit } regions_4_d1 { O 32 vector } regions_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1378 \
    name regions_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_3 \
    op interface \
    ports { regions_3_address0 { O 9 vector } regions_3_ce0 { O 1 bit } regions_3_we0 { O 1 bit } regions_3_d0 { O 32 vector } regions_3_q0 { I 32 vector } regions_3_address1 { O 9 vector } regions_3_ce1 { O 1 bit } regions_3_we1 { O 1 bit } regions_3_d1 { O 32 vector } regions_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1379 \
    name regions_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_2 \
    op interface \
    ports { regions_2_address0 { O 9 vector } regions_2_ce0 { O 1 bit } regions_2_we0 { O 1 bit } regions_2_d0 { O 32 vector } regions_2_q0 { I 32 vector } regions_2_address1 { O 9 vector } regions_2_ce1 { O 1 bit } regions_2_we1 { O 1 bit } regions_2_d1 { O 32 vector } regions_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1380 \
    name regions_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename regions_33 \
    op interface \
    ports { regions_33_address0 { O 9 vector } regions_33_ce0 { O 1 bit } regions_33_we0 { O 1 bit } regions_33_d0 { O 32 vector } regions_33_address1 { O 9 vector } regions_33_ce1 { O 1 bit } regions_33_we1 { O 1 bit } regions_33_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1381 \
    name regions_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename regions_17 \
    op interface \
    ports { regions_17_address0 { O 9 vector } regions_17_ce0 { O 1 bit } regions_17_we0 { O 1 bit } regions_17_d0 { O 32 vector } regions_17_address1 { O 9 vector } regions_17_ce1 { O 1 bit } regions_17_we1 { O 1 bit } regions_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1382 \
    name regions \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename regions \
    op interface \
    ports { regions_address0 { O 9 vector } regions_ce0 { O 1 bit } regions_we0 { O 1 bit } regions_d0 { O 32 vector } regions_address1 { O 9 vector } regions_ce1 { O 1 bit } regions_we1 { O 1 bit } regions_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1331 \
    name tmp_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_119 \
    op interface \
    ports { tmp_119 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1345 \
    name tmp_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_118 \
    op interface \
    ports { tmp_118 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1346 \
    name tmp_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_117 \
    op interface \
    ports { tmp_117 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1347 \
    name tmp_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_116 \
    op interface \
    ports { tmp_116 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1348 \
    name tmp_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_115 \
    op interface \
    ports { tmp_115 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1349 \
    name tmp_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_114 \
    op interface \
    ports { tmp_114 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1350 \
    name tmp_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_113 \
    op interface \
    ports { tmp_113 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1351 \
    name zext_ln245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln245 \
    op interface \
    ports { zext_ln245 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1383 \
    name merge_2_3_lcssa_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_merge_2_3_lcssa_i \
    op interface \
    ports { merge_2_3_lcssa_i { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1384 \
    name regions_16_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_15 \
    op interface \
    ports { regions_16_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1385 \
    name regions_16_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_16 \
    op interface \
    ports { regions_16_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1386 \
    name regions_16_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_17 \
    op interface \
    ports { regions_16_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1387 \
    name regions_16_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_18 \
    op interface \
    ports { regions_16_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1388 \
    name regions_16_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_19 \
    op interface \
    ports { regions_16_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1389 \
    name regions_16_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_20 \
    op interface \
    ports { regions_16_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1390 \
    name regions_16_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_21 \
    op interface \
    ports { regions_16_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1391 \
    name regions_16_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_16_load_22 \
    op interface \
    ports { regions_16_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1392 \
    name regions_32_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_15 \
    op interface \
    ports { regions_32_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1393 \
    name regions_32_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_16 \
    op interface \
    ports { regions_32_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1394 \
    name regions_32_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_17 \
    op interface \
    ports { regions_32_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1395 \
    name regions_32_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_18 \
    op interface \
    ports { regions_32_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1396 \
    name regions_32_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_19 \
    op interface \
    ports { regions_32_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1397 \
    name regions_32_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_20 \
    op interface \
    ports { regions_32_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1398 \
    name regions_32_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_21 \
    op interface \
    ports { regions_32_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1399 \
    name regions_32_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_32_load_22 \
    op interface \
    ports { regions_32_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1400 \
    name regions_48_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_15 \
    op interface \
    ports { regions_48_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1401 \
    name regions_48_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_16 \
    op interface \
    ports { regions_48_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1402 \
    name regions_48_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_17 \
    op interface \
    ports { regions_48_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1403 \
    name regions_48_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_18 \
    op interface \
    ports { regions_48_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1404 \
    name regions_48_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_19 \
    op interface \
    ports { regions_48_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1405 \
    name regions_48_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_20 \
    op interface \
    ports { regions_48_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1406 \
    name regions_48_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_21 \
    op interface \
    ports { regions_48_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1407 \
    name regions_48_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_48_load_22 \
    op interface \
    ports { regions_48_load_22 { I 32 vector } } \
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


# flow_control definition:
set InstName run_flow_control_loop_pipe_sequential_init_U
set CompName run_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix run_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


