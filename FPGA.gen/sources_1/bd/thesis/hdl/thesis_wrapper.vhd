--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.1 (win64) Build 5094488 Fri Jun 14 08:59:21 MDT 2024
--Date        : Mon Jul 22 20:58:49 2024
--Host        : Kaltakar running 64-bit major release  (build 9200)
--Command     : generate_target thesis_wrapper.bd
--Design      : thesis_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity thesis_wrapper is
  port (
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    rgb_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    selector1 : in STD_LOGIC;
    selector2 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC
  );
end thesis_wrapper;

architecture STRUCTURE of thesis_wrapper is
  component thesis is
  port (
    reset : in STD_LOGIC;
    selector1 : in STD_LOGIC;
    selector2 : in STD_LOGIC;
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sys_clock : in STD_LOGIC
  );
  end component thesis;
begin
thesis_i: component thesis
     port map (
      leds(3 downto 0) => leds(3 downto 0),
      reset => reset,
      rgb_1(2 downto 0) => rgb_1(2 downto 0),
      rgb_2(2 downto 0) => rgb_2(2 downto 0),
      selector1 => selector1,
      selector2 => selector2,
      sys_clock => sys_clock,
      uart_rxd_i => uart_rxd_i,
      uart_txd_o => uart_txd_o
    );
end STRUCTURE;
