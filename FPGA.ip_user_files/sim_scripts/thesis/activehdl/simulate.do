transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+thesis  -L xpm -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.thesis xil_defaultlib.glbl

do {thesis.udo}

run 1000ns

endsim

quit -force