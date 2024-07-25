-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.1 (win64) Build 5094488 Fri Jun 14 08:59:21 MDT 2024
-- Date        : Mon Jul 22 19:58:34 2024
-- Host        : Kaltakar running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/menen/Documents/GICSAFePhD/FPGA/FPGA.gen/sources_1/bd/thesis/ip/thesis_global_0_0/thesis_global_0_0_stub.vhdl
-- Design      : thesis_global_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity thesis_global_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    selector1 : in STD_LOGIC;
    selector2 : in STD_LOGIC;
    reset : in STD_LOGIC
  );

end thesis_global_0_0;

architecture stub of thesis_global_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,uart_rxd_i,uart_txd_o,leds[3:0],rgb_1[2:0],rgb_2[2:0],selector1,selector2,reset";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "global,Vivado 2024.1.1";
begin
end;
