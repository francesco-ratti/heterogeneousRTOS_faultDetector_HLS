-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity run_insert_point_Pipeline_insert_point_label4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp_187 : IN STD_LOGIC_VECTOR (11 downto 0);
    regions_min_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_min_0_ce0 : OUT STD_LOGIC;
    regions_min_0_we0 : OUT STD_LOGIC;
    regions_min_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_min_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_min_1_ce0 : OUT STD_LOGIC;
    regions_min_1_we0 : OUT STD_LOGIC;
    regions_min_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_max_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_max_0_ce0 : OUT STD_LOGIC;
    regions_max_0_we0 : OUT STD_LOGIC;
    regions_max_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_max_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_max_1_ce0 : OUT STD_LOGIC;
    regions_max_1_we0 : OUT STD_LOGIC;
    regions_max_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_center_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_center_0_ce0 : OUT STD_LOGIC;
    regions_center_0_we0 : OUT STD_LOGIC;
    regions_center_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_center_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_center_1_ce0 : OUT STD_LOGIC;
    regions_center_1_we0 : OUT STD_LOGIC;
    regions_center_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    d_read : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_8 : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_9 : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_10 : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_11 : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_12 : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_13 : IN STD_LOGIC_VECTOR (31 downto 0);
    d_read_14 : IN STD_LOGIC_VECTOR (31 downto 0);
    n_regions_load_cast : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of run_insert_point_Pipeline_insert_point_label4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln259_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln260_1_fu_238_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_2_fu_66 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln259_fu_222_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (3 downto 0);
    signal n_regions_load_cast_read_read_fu_70_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_248_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln260_fu_228_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln260_fu_232_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
    mux_84_32_1_1_U18 : component run_mux_84_32_1_1
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
        din0 => d_read,
        din1 => d_read_8,
        din2 => d_read_9,
        din3 => d_read_10,
        din4 => d_read_11,
        din5 => d_read_12,
        din6 => d_read_13,
        din7 => d_read_14,
        din8 => ap_sig_allocacmp_i,
        dout => tmp_fu_248_p10);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_2_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln259_fu_216_p2 = ap_const_lv1_0)) then 
                    i_2_fu_66 <= add_ln259_fu_222_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_2_fu_66 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln259_fu_222_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv4_1));
    add_ln260_fu_232_p2 <= std_logic_vector(unsigned(tmp_187) + unsigned(zext_ln260_fu_228_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_state1, i_2_fu_66, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i <= i_2_fu_66;
        end if; 
    end process;

    icmp_ln259_fu_216_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv4_8) else "0";
    n_regions_load_cast_read_read_fu_70_p2 <= n_regions_load_cast;
    regions_center_0_address0 <= zext_ln260_1_fu_238_p1(12 - 1 downto 0);

    regions_center_0_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            regions_center_0_ce0 <= ap_const_logic_1;
        else 
            regions_center_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_center_0_d0 <= tmp_fu_248_p10;

    regions_center_0_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, n_regions_load_cast_read_read_fu_70_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1) and (n_regions_load_cast_read_read_fu_70_p2 = ap_const_lv1_0))) then 
            regions_center_0_we0 <= ap_const_logic_1;
        else 
            regions_center_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_center_1_address0 <= zext_ln260_1_fu_238_p1(12 - 1 downto 0);

    regions_center_1_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            regions_center_1_ce0 <= ap_const_logic_1;
        else 
            regions_center_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_center_1_d0 <= tmp_fu_248_p10;

    regions_center_1_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, n_regions_load_cast_read_read_fu_70_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1) and (n_regions_load_cast_read_read_fu_70_p2 = ap_const_lv1_1))) then 
            regions_center_1_we0 <= ap_const_logic_1;
        else 
            regions_center_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_max_0_address0 <= zext_ln260_1_fu_238_p1(12 - 1 downto 0);

    regions_max_0_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            regions_max_0_ce0 <= ap_const_logic_1;
        else 
            regions_max_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_max_0_d0 <= tmp_fu_248_p10;

    regions_max_0_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, n_regions_load_cast_read_read_fu_70_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1) and (n_regions_load_cast_read_read_fu_70_p2 = ap_const_lv1_0))) then 
            regions_max_0_we0 <= ap_const_logic_1;
        else 
            regions_max_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_max_1_address0 <= zext_ln260_1_fu_238_p1(12 - 1 downto 0);

    regions_max_1_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            regions_max_1_ce0 <= ap_const_logic_1;
        else 
            regions_max_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_max_1_d0 <= tmp_fu_248_p10;

    regions_max_1_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, n_regions_load_cast_read_read_fu_70_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1) and (n_regions_load_cast_read_read_fu_70_p2 = ap_const_lv1_1))) then 
            regions_max_1_we0 <= ap_const_logic_1;
        else 
            regions_max_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_min_0_address0 <= zext_ln260_1_fu_238_p1(12 - 1 downto 0);

    regions_min_0_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            regions_min_0_ce0 <= ap_const_logic_1;
        else 
            regions_min_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_min_0_d0 <= tmp_fu_248_p10;

    regions_min_0_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, n_regions_load_cast_read_read_fu_70_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1) and (n_regions_load_cast_read_read_fu_70_p2 = ap_const_lv1_0))) then 
            regions_min_0_we0 <= ap_const_logic_1;
        else 
            regions_min_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_min_1_address0 <= zext_ln260_1_fu_238_p1(12 - 1 downto 0);

    regions_min_1_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            regions_min_1_ce0 <= ap_const_logic_1;
        else 
            regions_min_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_min_1_d0 <= tmp_fu_248_p10;

    regions_min_1_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln259_fu_216_p2, n_regions_load_cast_read_read_fu_70_p2, ap_start_int)
    begin
        if (((icmp_ln259_fu_216_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1) and (n_regions_load_cast_read_read_fu_70_p2 = ap_const_lv1_1))) then 
            regions_min_1_we0 <= ap_const_logic_1;
        else 
            regions_min_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln260_1_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln260_fu_232_p2),64));
    zext_ln260_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i),12));
end behav;
