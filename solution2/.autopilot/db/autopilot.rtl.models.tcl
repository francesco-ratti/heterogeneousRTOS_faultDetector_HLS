set SynModuleInfo {
  {SRCNAME read_data MODELNAME read_data RTLNAME run_read_data}
  {SRCNAME run_test_Pipeline_1 MODELNAME run_test_Pipeline_1 RTLNAME run_run_test_Pipeline_1
    SUBMODULES {
      {MODELNAME run_mux_84_32_1_1 RTLNAME run_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_flow_control_loop_pipe_sequential_init RTLNAME run_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME run_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME run_test_Pipeline_is_valid_label2 MODELNAME run_test_Pipeline_is_valid_label2 RTLNAME run_run_test_Pipeline_is_valid_label2
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test_Pipeline_VITIS_LOOP_55_2 MODELNAME run_test_Pipeline_VITIS_LOOP_55_2 RTLNAME run_run_test_Pipeline_VITIS_LOOP_55_2
    SUBMODULES {
      {MODELNAME run_mux_864_32_1_1 RTLNAME run_mux_864_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_21_32_1_1 RTLNAME run_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test
    SUBMODULES {
      {MODELNAME run_mux_648_8_1_1 RTLNAME run_mux_648_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_run_test_outcome_AOV_RAM_AUTO_1R1W RTLNAME run_run_test_outcome_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome}
  {SRCNAME runTest MODELNAME runTest RTLNAME run_runTest
    SUBMODULES {
      {MODELNAME run_fifo_w320_d1_S RTLNAME run_fifo_w320_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w288_d1_S RTLNAME run_fifo_w288_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_regions_RAM_AUTO_1R1W RTLNAME run_regions_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
