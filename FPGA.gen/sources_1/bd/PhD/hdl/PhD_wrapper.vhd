--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sat Jul 20 19:34:31 2024
--Host        : Kaltakar running 64-bit major release  (build 9200)
--Command     : generate_target PhD_wrapper.bd
--Design      : PhD_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PhD_wrapper is
end PhD_wrapper;

architecture STRUCTURE of PhD_wrapper is
  component PhD is
  end component PhD;
begin
PhD_i: component PhD
 ;
end STRUCTURE;
