set SynModuleInfo {
  {SRCNAME run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2 MODELNAME run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2 RTLNAME run_run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2
    SUBMODULES {
      {MODELNAME run_mul_64ns_66ns_81_1_1 RTLNAME run_mul_64ns_66ns_81_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_mul_64ns_66ns_129_1_1 RTLNAME run_mul_64ns_66ns_129_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_flow_control_loop_pipe_sequential_init RTLNAME run_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME run_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME run_Pipeline_VITIS_LOOP_694_3 MODELNAME run_Pipeline_VITIS_LOOP_694_3 RTLNAME run_run_Pipeline_VITIS_LOOP_694_3}
  {SRCNAME read_test MODELNAME read_test RTLNAME run_read_test
    SUBMODULES {
      {MODELNAME run_read_test_contr_AOV_RAM_AUTO_1R1W RTLNAME run_read_test_contr_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTestAfterInit_Block_entry1012_proc MODELNAME runTestAfterInit_Block_entry1012_proc RTLNAME run_runTestAfterInit_Block_entry1012_proc}
  {SRCNAME run_test_Pipeline_VITIS_LOOP_37_1 MODELNAME run_test_Pipeline_VITIS_LOOP_37_1 RTLNAME run_run_test_Pipeline_VITIS_LOOP_37_1
    SUBMODULES {
      {MODELNAME run_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME run_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME run_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_165_32_1_1 RTLNAME run_mux_165_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test
    SUBMODULES {
      {MODELNAME run_mux_84_32_1_1 RTLNAME run_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome
    SUBMODULES {
      {MODELNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W RTLNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTestAfterInit MODELNAME runTestAfterInit RTLNAME run_runTestAfterInit
    SUBMODULES {
      {MODELNAME run_fifo_w8_d2_S RTLNAME run_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w8_d4_S RTLNAME run_fifo_w8_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w16_d4_S RTLNAME run_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d3_S RTLNAME run_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w8_d3_S RTLNAME run_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w6_d2_S RTLNAME run_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w4_d3_S RTLNAME run_fifo_w4_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d2_S RTLNAME run_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w1_d2_S RTLNAME run_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME read_train MODELNAME read_train RTLNAME run_read_train}
  {SRCNAME insert_point_Pipeline_VITIS_LOOP_264_1 MODELNAME insert_point_Pipeline_VITIS_LOOP_264_1 RTLNAME run_insert_point_Pipeline_VITIS_LOOP_264_1
    SUBMODULES {
      {MODELNAME run_mux_1632_32_1_1 RTLNAME run_mux_1632_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insert_point_Pipeline_insert_point_label6 MODELNAME insert_point_Pipeline_insert_point_label6 RTLNAME run_insert_point_Pipeline_insert_point_label6}
  {SRCNAME insert_point MODELNAME insert_point RTLNAME run_insert_point
    SUBMODULES {
      {MODELNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTrainAfterInit MODELNAME runTrainAfterInit RTLNAME run_runTrainAfterInit
    SUBMODULES {
      {MODELNAME run_fifo_w6_d2_S_x RTLNAME run_fifo_w6_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d2_S_x RTLNAME run_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_regions_RAM_AUTO_1R1W RTLNAME run_regions_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_regions_15_RAM_AUTO_1R1W RTLNAME run_regions_15_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_n_regions_V_RAM_AUTO_1R1W RTLNAME run_n_regions_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME run_regslice_both RTLNAME run_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_both_U}
    }
  }
}
