transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15

vlog -work xpm  -incr "+incdir+../../../../FPGA.gen/sources_1/bd/thesis/ipshared/3242" -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/thesis/ipshared/646d/sim/PhD.vhd" \
"../../../bd/thesis/ipshared/646d/src/my_package.vhd" \
"../../../bd/thesis/ipshared/646d/src/detector.vhd" \
"../../../bd/thesis/ipshared/646d/src/fifo.vhd" \
"../../../bd/thesis/ipshared/646d/src/flipFlop.vhd" \
"../../../bd/thesis/ipshared/646d/src/uart_baud_gen.vhd" \
"../../../bd/thesis/ipshared/646d/src/uart_rx.vhd" \
"../../../bd/thesis/ipshared/646d/src/uart_tx.vhd" \
"../../../bd/thesis/ipshared/646d/src/uart.vhd" \
"../../../bd/thesis/ipshared/646d/src/interlocking.vhd" \
"../../../bd/thesis/ipshared/646d/src/levelCrossing_0.vhd" \
"../../../bd/thesis/ipshared/646d/src/levelCrossing_1.vhd" \
"../../../bd/thesis/ipshared/646d/src/mediator.vhd" \
"../../../bd/thesis/ipshared/646d/src/network.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_0.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_1.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_10.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_2.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_3.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_4.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_5.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_6.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_7.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_8.vhd" \
"../../../bd/thesis/ipshared/646d/src/node_9.vhd" \
"../../../bd/thesis/ipshared/646d/src/printer.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_0.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_1.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_10.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_11.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_12.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_13.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_14.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_15.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_16.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_17.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_18.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_19.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_2.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_20.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_21.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_22.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_3.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_4.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_5.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_6.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_7.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_8.vhd" \
"../../../bd/thesis/ipshared/646d/src/railwaySignal_9.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_0.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_1.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_10.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_11.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_12.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_13.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_14.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_15.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_16.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_17.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_18.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_19.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_2.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_20.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_3.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_4.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_5.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_6.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_7.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_8.vhd" \
"../../../bd/thesis/ipshared/646d/src/route_9.vhd" \
"../../../bd/thesis/ipshared/646d/src/selector.vhd" \
"../../../bd/thesis/ipshared/646d/src/singleSwitch_0.vhd" \
"../../../bd/thesis/ipshared/646d/src/singleSwitch_1.vhd" \
"../../../bd/thesis/ipshared/646d/src/singleSwitch_2.vhd" \
"../../../bd/thesis/ipshared/646d/src/singleSwitch_3.vhd" \
"../../../bd/thesis/ipshared/646d/src/singleSwitch_4.vhd" \
"../../../bd/thesis/ipshared/646d/src/splitter.vhd" \
"../../../bd/thesis/ipshared/646d/src/system.vhd" \
"../../../bd/thesis/ipshared/646d/src/uartControl.vhd" \
"../../../bd/thesis/ipshared/646d/src/voter.vhd" \
"../../../bd/thesis/ipshared/646d/src/global.vhd" \
"../../../bd/thesis/ip/thesis_global_0_0/sim/thesis_global_0_0.vhd" \
"../../../bd/thesis/sim/thesis.vhd" \
"c:/Users/menen/Documents/GICSAFePhD/FPGA/FPGA.gen/sources_1/bd/thesis/ip/thesis_clk_wiz_0_0/thesis_clk_wiz_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../FPGA.gen/sources_1/bd/thesis/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../FPGA.gen/sources_1/bd/thesis/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/thesis/ip/thesis_proc_sys_reset_0_0/sim/thesis_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

