# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/menen/OneDrive/Documentos/GICSAFePhD/FPGA/FPGA.runs/synth_1/global.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 8
set_param xicom.use_bs_reader 1
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/menen/OneDrive/Documentos/GICSAFePhD/FPGA/FPGA.cache/wt [current_project]
set_property parent.project_path C:/Users/menen/OneDrive/Documentos/GICSAFePhD/FPGA/FPGA.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths {C:/Users/menen/AppData/Roaming/Xilinx/Vivado/2023.2.2/xhub/board_store/xilinx_board_store} [current_project]
set_property board_part digilentinc.com:arty-z7-20:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/menen/OneDrive/Documentos/GICSAFePhD/FPGA/FPGA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -library xil_defaultlib {
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/detector.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/fifo.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/flipFlop.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/uart_baud_gen.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/uart_rx.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/uart_tx.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/uart.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/my_package.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/interlocking.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/levelCrossing_0.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/levelCrossing_1.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/mediator.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/network.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_0.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_1.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_10.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_2.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_3.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_4.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_5.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_6.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_7.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_8.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/node_9.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/printer.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_0.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_1.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_10.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_11.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_12.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_13.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_14.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_15.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_16.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_17.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_18.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_19.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_2.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_20.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_21.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_22.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_3.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_4.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_5.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_6.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_7.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_8.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/railwaySignal_9.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_0.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_1.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_10.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_11.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_12.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_13.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_14.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_15.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_16.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_17.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_18.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_19.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_2.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_20.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_3.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_4.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_5.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_6.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_7.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_8.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/route_9.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/selector.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/singleSwitch_0.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/singleSwitch_1.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/singleSwitch_2.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/singleSwitch_3.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/singleSwitch_4.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/splitter.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/system.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/uartControl.vhd
  C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_1/VHDL/global.vhd
}
OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_3/VHDL/Arty_Z7-10.xdc
set_property used_in_implementation false [get_files C:/Users/menen/OneDrive/Documentos/GICSAFePhD/App/Layouts/Example_3/VHDL/Arty_Z7-10.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top global -part xc7z020clg400-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef global.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file global_utilization_synth.rpt -pb global_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
