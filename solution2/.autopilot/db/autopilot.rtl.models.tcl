set SynModuleInfo {
  {SRCNAME insert_point_Pipeline_is_valid_label2 MODELNAME insert_point_Pipeline_is_valid_label2 RTLNAME run_insert_point_Pipeline_is_valid_label2
    SUBMODULES {
      {MODELNAME run_mux_84_32_1_1 RTLNAME run_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_flow_control_loop_pipe_sequential_init RTLNAME run_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME run_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME insert_point_Pipeline_insert_point_label4 MODELNAME insert_point_Pipeline_insert_point_label4 RTLNAME run_insert_point_Pipeline_insert_point_label4}
  {SRCNAME insert_point_Pipeline_VITIS_LOOP_279_1 MODELNAME insert_point_Pipeline_VITIS_LOOP_279_1 RTLNAME run_insert_point_Pipeline_VITIS_LOOP_279_1
    SUBMODULES {
      {MODELNAME run_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME run_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_21_32_1_1 RTLNAME run_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insert_point_Pipeline_insert_point_label6 MODELNAME insert_point_Pipeline_insert_point_label6 RTLNAME run_insert_point_Pipeline_insert_point_label6}
  {SRCNAME insert_point MODELNAME insert_point RTLNAME run_insert_point}
  {SRCNAME run_test_Pipeline_is_valid_label2 MODELNAME run_test_Pipeline_is_valid_label2 RTLNAME run_run_test_Pipeline_is_valid_label2}
  {SRCNAME run_test_Pipeline_VITIS_LOOP_72_1 MODELNAME run_test_Pipeline_VITIS_LOOP_72_1 RTLNAME run_run_test_Pipeline_VITIS_LOOP_72_1}
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test}
  {SRCNAME writeOutcome_Pipeline_1 MODELNAME writeOutcome_Pipeline_1 RTLNAME run_writeOutcome_Pipeline_1}
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome
    SUBMODULES {
      {MODELNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W RTLNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTestAfterInit_Block_entry15_proc5 MODELNAME runTestAfterInit_Block_entry15_proc5 RTLNAME run_runTestAfterInit_Block_entry15_proc5
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_regslice_forward RTLNAME run_regslice_forward BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_forward_U}
    }
  }
  {SRCNAME runTestAfterInit MODELNAME runTestAfterInit RTLNAME run_runTestAfterInit}
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_regions_RAM_AUTO_1R1W RTLNAME run_regions_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_n_regions_V_RAM_AUTO_1R1W RTLNAME run_n_regions_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
