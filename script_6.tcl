# vivado -mode batch -source script.tcl -tclargs 1
# cd C:/Users/menen/OneDrive/Documentos/GICSAFePhD/FPGA
# source script.tcl

set chosen 6

# Get a list of all design source files
set design_sources [get_files -of_objects [get_filesets sources_1]]

remove_files $design_sources

set base_folder_path "C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_"
set folder_path "${base_folder_path}${chosen}/VHDL"

puts $folder_path

set files [glob -directory $folder_path *.vhd]

add_files -norecurse -scan_for_includes  $files
	
update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

synth_design -rtl -rtl_skip_mlo -name rtl_1