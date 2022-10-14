-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity run_run_test_Pipeline_is_valid_label2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read7 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read8 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_508_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_508_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_508_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_508_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_508_p_ce : OUT STD_LOGIC;
    grp_fu_512_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_512_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_512_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_512_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_512_p_ce : OUT STD_LOGIC;
    grp_fu_516_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_516_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_516_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_516_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_516_p_ce : OUT STD_LOGIC );
end;


architecture behav of run_run_test_Pipeline_is_valid_label2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7F800000 : STD_LOGIC_VECTOR (31 downto 0) := "01111111100000000000000000000000";
    constant ap_const_lv32_FF800000 : STD_LOGIC_VECTOR (31 downto 0) := "11111111100000000000000000000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal or_ln89_1_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln87_reg_255 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal merge_reg_120 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln87_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal add_ln87_fu_161_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln87_reg_259 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_x_assign_fu_167_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln89_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln89_reg_271 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln89_1_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln89_1_reg_276 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_merge_phi_fu_124_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_68 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (3 downto 0);
    signal bitcast_ln89_fu_192_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_196_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln89_fu_206_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln89_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln89_2_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln89_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component run_fcmp_32ns_32ns_1_2_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component run_mux_84_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (3 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component run_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_84_32_1_1_U111 : component run_mux_84_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 4,
        dout_WIDTH => 32)
    port map (
        din0 => p_read1,
        din1 => p_read2,
        din2 => p_read3,
        din3 => p_read4,
        din4 => p_read5,
        din5 => p_read6,
        din6 => p_read7,
        din7 => p_read8,
        din8 => ap_sig_allocacmp_i_1,
        dout => p_x_assign_fu_167_p10);

    flow_control_loop_pipe_sequential_init_U : component run_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln87_reg_255 = ap_const_lv1_1) or (or_ln89_1_fu_238_p2 = ap_const_lv1_1)))) then 
                    ap_return_preg <= ap_phi_mux_merge_phi_fu_124_p4;
                end if; 
            end if;
        end if;
    end process;


    i_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                i_fu_68 <= ap_const_lv4_0;
            elsif (((icmp_ln87_reg_255 = ap_const_lv1_0) and (or_ln89_1_fu_238_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_fu_68 <= add_ln87_reg_259;
            end if; 
        end if;
    end process;

    merge_reg_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln87_reg_255 = ap_const_lv1_0) and (or_ln89_1_fu_238_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                merge_reg_120 <= ap_const_lv1_0;
            elsif (((icmp_ln87_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                merge_reg_120 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                add_ln87_reg_259 <= add_ln87_fu_161_p2;
                icmp_ln87_reg_255 <= icmp_ln87_fu_155_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln87_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                icmp_ln89_1_reg_276 <= icmp_ln89_1_fu_216_p2;
                icmp_ln89_reg_271 <= icmp_ln89_fu_210_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln87_fu_161_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv4_1));
    and_ln89_fu_232_p2 <= (or_ln89_fu_222_p2 and or_ln89_2_fu_226_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_CS_fsm_state2, or_ln89_1_fu_238_p2, icmp_ln87_reg_255)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln87_reg_255 = ap_const_lv1_1) or (or_ln89_1_fu_238_p2 = ap_const_lv1_1)))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state2, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_phi_mux_merge_phi_fu_124_p4_assign_proc : process(ap_CS_fsm_state2, or_ln89_1_fu_238_p2, icmp_ln87_reg_255, merge_reg_120)
    begin
        if (((icmp_ln87_reg_255 = ap_const_lv1_0) and (or_ln89_1_fu_238_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_phi_mux_merge_phi_fu_124_p4 <= ap_const_lv1_0;
        else 
            ap_phi_mux_merge_phi_fu_124_p4 <= merge_reg_120;
        end if; 
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state2, or_ln89_1_fu_238_p2, icmp_ln87_reg_255, ap_phi_mux_merge_phi_fu_124_p4, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln87_reg_255 = ap_const_lv1_1) or (or_ln89_1_fu_238_p2 = ap_const_lv1_1)))) then 
            ap_return <= ap_phi_mux_merge_phi_fu_124_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_state1, i_fu_68, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_68;
        end if; 
    end process;

    bitcast_ln89_fu_192_p1 <= p_x_assign_fu_167_p10;
    grp_fu_508_p_ce <= ap_const_logic_1;
    grp_fu_508_p_din0 <= p_x_assign_fu_167_p10;
    grp_fu_508_p_din1 <= ap_const_lv32_0;
    grp_fu_508_p_opcode <= ap_const_lv5_8;
    grp_fu_512_p_ce <= ap_const_logic_1;
    grp_fu_512_p_din0 <= p_x_assign_fu_167_p10;
    grp_fu_512_p_din1 <= ap_const_lv32_7F800000;
    grp_fu_512_p_opcode <= ap_const_lv5_1;
    grp_fu_516_p_ce <= ap_const_logic_1;
    grp_fu_516_p_din0 <= p_x_assign_fu_167_p10;
    grp_fu_516_p_din1 <= ap_const_lv32_FF800000;
    grp_fu_516_p_opcode <= ap_const_lv5_1;
    icmp_ln87_fu_155_p2 <= "1" when (ap_sig_allocacmp_i_1 = ap_const_lv4_8) else "0";
    icmp_ln89_1_fu_216_p2 <= "1" when (trunc_ln89_fu_206_p1 = ap_const_lv23_0) else "0";
    icmp_ln89_fu_210_p2 <= "0" when (tmp_s_fu_196_p4 = ap_const_lv8_FF) else "1";
    or_ln89_1_fu_238_p2 <= (grp_fu_508_p_dout0 or and_ln89_fu_232_p2);
    or_ln89_2_fu_226_p2 <= (grp_fu_516_p_dout0 or grp_fu_512_p_dout0);
    or_ln89_fu_222_p2 <= (icmp_ln89_reg_271 or icmp_ln89_1_reg_276);
    tmp_s_fu_196_p4 <= bitcast_ln89_fu_192_p1(30 downto 23);
    trunc_ln89_fu_206_p1 <= bitcast_ln89_fu_192_p1(23 - 1 downto 0);
end behav;
