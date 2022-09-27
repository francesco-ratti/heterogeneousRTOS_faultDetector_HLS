# This script segment is generated automatically by AutoPilot

set name run_faddfsub_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
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
    id 1311 \
    name regions \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions \
    op interface \
    ports { regions_address0 { O 9 vector } regions_ce0 { O 1 bit } regions_we0 { O 1 bit } regions_d0 { O 32 vector } regions_q0 { I 32 vector } regions_address1 { O 9 vector } regions_ce1 { O 1 bit } regions_we1 { O 1 bit } regions_d1 { O 32 vector } regions_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1313 \
    name regions_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_1 \
    op interface \
    ports { regions_1_address0 { O 9 vector } regions_1_ce0 { O 1 bit } regions_1_we0 { O 1 bit } regions_1_d0 { O 32 vector } regions_1_q0 { I 32 vector } regions_1_address1 { O 9 vector } regions_1_ce1 { O 1 bit } regions_1_we1 { O 1 bit } regions_1_d1 { O 32 vector } regions_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1314 \
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
    id 1315 \
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
    id 1316 \
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
    id 1317 \
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
    id 1318 \
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
    id 1319 \
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
    id 1320 \
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
    id 1321 \
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
    id 1322 \
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
    id 1323 \
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
    id 1324 \
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
    id 1325 \
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
    id 1326 \
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
    id 1327 \
    name regions_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_15 \
    op interface \
    ports { regions_15_address0 { O 9 vector } regions_15_ce0 { O 1 bit } regions_15_we0 { O 1 bit } regions_15_d0 { O 32 vector } regions_15_q0 { I 32 vector } regions_15_address1 { O 9 vector } regions_15_ce1 { O 1 bit } regions_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1328 \
    name regions_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_16 \
    op interface \
    ports { regions_16_address0 { O 9 vector } regions_16_ce0 { O 1 bit } regions_16_we0 { O 1 bit } regions_16_d0 { O 32 vector } regions_16_q0 { I 32 vector } regions_16_address1 { O 9 vector } regions_16_ce1 { O 1 bit } regions_16_we1 { O 1 bit } regions_16_d1 { O 32 vector } regions_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1329 \
    name regions_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_17 \
    op interface \
    ports { regions_17_address0 { O 9 vector } regions_17_ce0 { O 1 bit } regions_17_we0 { O 1 bit } regions_17_d0 { O 32 vector } regions_17_q0 { I 32 vector } regions_17_address1 { O 9 vector } regions_17_ce1 { O 1 bit } regions_17_we1 { O 1 bit } regions_17_d1 { O 32 vector } regions_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1330 \
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
    id 1331 \
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
    id 1332 \
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
    id 1333 \
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
    id 1334 \
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
    id 1335 \
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
    id 1336 \
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
    id 1337 \
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
    id 1338 \
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
    id 1339 \
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
    id 1340 \
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
    id 1341 \
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
    id 1342 \
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
    id 1343 \
    name regions_31 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_31 \
    op interface \
    ports { regions_31_address0 { O 9 vector } regions_31_ce0 { O 1 bit } regions_31_we0 { O 1 bit } regions_31_d0 { O 32 vector } regions_31_q0 { I 32 vector } regions_31_address1 { O 9 vector } regions_31_ce1 { O 1 bit } regions_31_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1344 \
    name regions_32 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_32 \
    op interface \
    ports { regions_32_address0 { O 9 vector } regions_32_ce0 { O 1 bit } regions_32_we0 { O 1 bit } regions_32_d0 { O 32 vector } regions_32_q0 { I 32 vector } regions_32_address1 { O 9 vector } regions_32_ce1 { O 1 bit } regions_32_we1 { O 1 bit } regions_32_d1 { O 32 vector } regions_32_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1345 \
    name regions_33 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_33 \
    op interface \
    ports { regions_33_address0 { O 9 vector } regions_33_ce0 { O 1 bit } regions_33_we0 { O 1 bit } regions_33_d0 { O 32 vector } regions_33_q0 { I 32 vector } regions_33_address1 { O 9 vector } regions_33_ce1 { O 1 bit } regions_33_we1 { O 1 bit } regions_33_d1 { O 32 vector } regions_33_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1346 \
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
    id 1347 \
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
    id 1348 \
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
    id 1349 \
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
    id 1350 \
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
    id 1351 \
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
    id 1352 \
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
    id 1353 \
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
    id 1354 \
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
    id 1355 \
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
    id 1356 \
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
    id 1357 \
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
    id 1358 \
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
    id 1359 \
    name regions_47 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_47 \
    op interface \
    ports { regions_47_address0 { O 9 vector } regions_47_ce0 { O 1 bit } regions_47_we0 { O 1 bit } regions_47_d0 { O 32 vector } regions_47_q0 { I 32 vector } regions_47_address1 { O 9 vector } regions_47_ce1 { O 1 bit } regions_47_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1360 \
    name n_regions_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename n_regions_V \
    op interface \
    ports { n_regions_V_address0 { O 6 vector } n_regions_V_ce0 { O 1 bit } n_regions_V_we0 { O 1 bit } n_regions_V_d0 { O 8 vector } n_regions_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'n_regions_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1312 \
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
    id 1361 \
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
    id 1362 \
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
    id 1363 \
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
    id 1364 \
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
    id 1365 \
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
    id 1366 \
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
    id 1367 \
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
    id 1368 \
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


