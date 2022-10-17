set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME run_entry_proc}
  {SRCNAME read_data_Pipeline_1 MODELNAME read_data_Pipeline_1 RTLNAME run_read_data_Pipeline_1
    SUBMODULES {
      {MODELNAME run_flow_control_loop_pipe_sequential_init RTLNAME run_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME run_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME read_data MODELNAME read_data RTLNAME run_read_data
    SUBMODULES {
      {MODELNAME run_read_data_dest_AOV_RAM_AUTO_1R1W RTLNAME run_read_data_dest_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insert_point2_Pipeline_is_valid_label2 MODELNAME insert_point2_Pipeline_is_valid_label2 RTLNAME run_insert_point2_Pipeline_is_valid_label2
    SUBMODULES {
      {MODELNAME run_mux_84_32_1_1 RTLNAME run_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insert_point2_Pipeline_insert_point_label4 MODELNAME insert_point2_Pipeline_insert_point_label4 RTLNAME run_insert_point2_Pipeline_insert_point_label4}
  {SRCNAME insert_point2_Pipeline_VITIS_LOOP_262_1 MODELNAME insert_point2_Pipeline_VITIS_LOOP_262_1 RTLNAME run_insert_point2_Pipeline_VITIS_LOOP_262_1
    SUBMODULES {
      {MODELNAME run_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME run_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_21_32_1_1 RTLNAME run_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insert_point2_Pipeline_insert_point_label6 MODELNAME insert_point2_Pipeline_insert_point_label6 RTLNAME run_insert_point2_Pipeline_insert_point_label6}
  {SRCNAME insert_point2 MODELNAME insert_point2 RTLNAME run_insert_point2
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTrain_Block_entry174_proc MODELNAME runTrain_Block_entry174_proc RTLNAME run_runTrain_Block_entry174_proc}
  {SRCNAME runTrain MODELNAME runTrain RTLNAME run_runTrain
    SUBMODULES {
      {MODELNAME run_fifo_w8_d3_S RTLNAME run_fifo_w8_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w6_d2_S RTLNAME run_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d2_S RTLNAME run_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME entry_proc17 MODELNAME entry_proc17 RTLNAME run_entry_proc17}
  {SRCNAME read_data.1_Pipeline_1 MODELNAME read_data_1_Pipeline_1 RTLNAME run_read_data_1_Pipeline_1}
  {SRCNAME read_data.1 MODELNAME read_data_1 RTLNAME run_read_data_1}
  {SRCNAME runTest_Block_entry6987_proc MODELNAME runTest_Block_entry6987_proc RTLNAME run_runTest_Block_entry6987_proc
    SUBMODULES {
      {MODELNAME run_mux_648_8_1_1 RTLNAME run_mux_648_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test_Pipeline_is_valid_label2 MODELNAME run_test_Pipeline_is_valid_label2 RTLNAME run_run_test_Pipeline_is_valid_label2}
  {SRCNAME run_test_Pipeline_VITIS_LOOP_55_2 MODELNAME run_test_Pipeline_VITIS_LOOP_55_2 RTLNAME run_run_test_Pipeline_VITIS_LOOP_55_2
    SUBMODULES {
      {MODELNAME run_mux_864_32_1_1 RTLNAME run_mux_864_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test}
  {SRCNAME runTest_Block_entry6989_proc MODELNAME runTest_Block_entry6989_proc RTLNAME run_runTest_Block_entry6989_proc}
  {SRCNAME writeOutcome_Pipeline_1 MODELNAME writeOutcome_Pipeline_1 RTLNAME run_writeOutcome_Pipeline_1}
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome
    SUBMODULES {
      {MODELNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W RTLNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTest_Block_entry6990_proc MODELNAME runTest_Block_entry6990_proc RTLNAME run_runTest_Block_entry6990_proc
    SUBMODULES {
      {MODELNAME run_regslice_forward RTLNAME run_regslice_forward BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_forward_U}
    }
  }
  {SRCNAME runTest MODELNAME runTest RTLNAME run_runTest
    SUBMODULES {
      {MODELNAME run_fifo_w8_d3_S_x RTLNAME run_fifo_w8_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w8_d2_S RTLNAME run_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w16_d2_S RTLNAME run_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d3_S RTLNAME run_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w6_d2_S_x RTLNAME run_fifo_w6_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d2_S_x RTLNAME run_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w1_d2_S RTLNAME run_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w4_d3_S RTLNAME run_fifo_w4_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w16_d3_S RTLNAME run_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
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
