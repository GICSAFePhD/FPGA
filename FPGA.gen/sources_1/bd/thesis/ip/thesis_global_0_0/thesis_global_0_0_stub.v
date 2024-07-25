// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.1 (win64) Build 5094488 Fri Jun 14 08:59:21 MDT 2024
// Date        : Mon Jul 22 19:58:34 2024
// Host        : Kaltakar running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/menen/Documents/GICSAFePhD/FPGA/FPGA.gen/sources_1/bd/thesis/ip/thesis_global_0_0/thesis_global_0_0_stub.v
// Design      : thesis_global_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "global,Vivado 2024.1.1" *)
module thesis_global_0_0(clock, uart_rxd_i, uart_txd_o, leds, rgb_1, rgb_2, 
  selector1, selector2, reset)
/* synthesis syn_black_box black_box_pad_pin="uart_rxd_i,uart_txd_o,leds[3:0],rgb_1[2:0],rgb_2[2:0],selector1,selector2" */
/* synthesis syn_force_seq_prim="clock" */
/* synthesis syn_force_seq_prim="reset" */;
  input clock /* synthesis syn_isclock = 1 */;
  input uart_rxd_i;
  output uart_txd_o;
  output [3:0]leds;
  output [2:0]rgb_1;
  output [2:0]rgb_2;
  input selector1;
  input selector2;
  input reset /* synthesis syn_isclock = 1 */;
endmodule
