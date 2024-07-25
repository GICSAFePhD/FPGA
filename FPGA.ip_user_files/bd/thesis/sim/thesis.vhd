--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.1 (win64) Build 5094488 Fri Jun 14 08:59:21 MDT 2024
--Date        : Mon Jul 22 20:58:49 2024
--Host        : Kaltakar running 64-bit major release  (build 9200)
--Command     : generate_target thesis.bd
--Design      : thesis
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity thesis is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of thesis : entity is "thesis,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=thesis,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=8,da_clkrst_cnt=3,da_mb_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of thesis : entity is "thesis.hwdef";
end thesis;

architecture STRUCTURE of thesis is
  component thesis_global_0_0 is
  port (
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
  end component thesis_global_0_0;
  component thesis_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component thesis_clk_wiz_0_0;
  component thesis_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component thesis_proc_sys_reset_0_0;
  signal global_0_leds : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal global_0_rgb_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal global_0_rgb_2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal global_0_uart_txd_o : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal proc_sys_reset_0_mb_reset : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal selector1_1 : STD_LOGIC;
  signal selector2_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal uart_rxd_i_1 : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN thesis_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  leds(3 downto 0) <= global_0_leds(3 downto 0);
  reset_1 <= reset;
  rgb_1(2 downto 0) <= global_0_rgb_1(2 downto 0);
  rgb_2(2 downto 0) <= global_0_rgb_2(2 downto 0);
  selector1_1 <= selector1;
  selector2_1 <= selector2;
  sys_clock_1 <= sys_clock;
  uart_rxd_i_1 <= uart_rxd_i;
  uart_txd_o <= global_0_uart_txd_o;
clk_wiz_0: component thesis_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => microblaze_0_Clk,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => reset_1
    );
global_0: component thesis_global_0_0
     port map (
      clock => microblaze_0_Clk,
      leds(3 downto 0) => global_0_leds(3 downto 0),
      reset => proc_sys_reset_0_mb_reset,
      rgb_1(2 downto 0) => global_0_rgb_1(2 downto 0),
      rgb_2(2 downto 0) => global_0_rgb_2(2 downto 0),
      selector1 => selector1_1,
      selector2 => selector2_1,
      uart_rxd_i => uart_rxd_i_1,
      uart_txd_o => global_0_uart_txd_o
    );
proc_sys_reset_0: component thesis_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => proc_sys_reset_0_mb_reset,
      peripheral_aresetn(0) => NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_0_Clk
    );
end STRUCTURE;
