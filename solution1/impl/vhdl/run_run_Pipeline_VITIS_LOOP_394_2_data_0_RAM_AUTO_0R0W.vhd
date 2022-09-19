-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity run_run_Pipeline_VITIS_LOOP_394_2_data_0_RAM_AUTO_0R0W is
    generic (
        DataWidth    : integer := 32;
        AddressWidth : integer := 7;
        AddressRange : integer := 128
    );
    port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        address0 : in  std_logic_vector(AddressWidth-1 downto 0);
        ce0      : in  std_logic;
        we0      : in  std_logic;
        d0       : in  std_logic_vector(DataWidth-1 downto 0)
    );
end entity;

architecture arch of run_run_Pipeline_VITIS_LOOP_394_2_data_0_RAM_AUTO_0R0W is
    --------------------- Component ---------------------
    component run_run_Pipeline_VITIS_LOOP_394_2_data_0_RAM_AUTO_0R0W_ram is
        generic (
            DataWidth : INTEGER;
            AddressWidth : INTEGER;
            AddressRange : INTEGER);
        port (
            clk      : in  std_logic;
            reset    : in  std_logic;
            ce0      : in  std_logic;
            address0 : in  std_logic_vector(AddressWidth-1 downto 0);
            we0      : in  std_logic;
            d0       : in  std_logic_vector(DataWidth-1 downto 0)
        );
    end component;
    --------------------- Local signal ------------------
    signal written : std_logic_vector(AddressRange-1 downto 0) := (others => '0');
begin
    --------------------- Instantiation -----------------
    run_run_Pipeline_VITIS_LOOP_394_2_data_0_RAM_AUTO_0R0W_ram_u : component run_run_Pipeline_VITIS_LOOP_394_2_data_0_RAM_AUTO_0R0W_ram
    generic map (
        DataWidth => DataWidth,
        AddressWidth => AddressWidth,
        AddressRange => AddressRange)
    port map (
        clk      => clk,
        reset    => reset,
        ce0      => ce0,
        address0 => address0,
        we0      => we0,
        d0       => d0
    );
    --------------------- Assignment --------------------

    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                written <= (others => '0');
            else
                if ce0 = '1' and we0 = '1' then
                    written(to_integer(unsigned(address0))) <= '1';
                end if;
            end if;
        end if;
    end process;

    process (clk) begin
        if clk'event and clk = '1' then
        end if;
    end process;

end architecture;
