#
# Vivado (TM) v2015.4 (64-bit)
#
# Generated by Vivado on Thu Dec 31 17:54:04 CET 2015
# IP Build 1412160 on Tue Nov 17 13:47:24 MST 2015
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

variable script_file
set script_file "vivado.tcl"

# Help information for this script
proc help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < [llength $::argc]} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir" { incr i; set origin_dir [lindex $::argv $i] }
      "--help"       { help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/nexys4ddr"]"

# Create project
create_project nexys4ddr ./vivado

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects nexys4ddr]
set_property "default_lib" "xil_defaultlib" $obj
set_property "part" "xc7a100tcsg324-1" $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "source_mgmt_mode" "DisplayOnly" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/nexys4ddr.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/nexys4ddr/nexys4ddr_display.v"]"\
 "[file normalize "$origin_dir/../../verilog/glip_uart_toplevel.v"]"\
 "[file normalize "$origin_dir/../../verilog/glip_uart_control.v"]"\
 "[file normalize "$origin_dir/../../verilog/glip_uart_control_egress.v"]"\
 "[file normalize "$origin_dir/../../verilog/glip_uart_control_ingress.v"]"\
 "[file normalize "$origin_dir/../../verilog/glip_uart_receive.v"]"\
 "[file normalize "$origin_dir/../../verilog/glip_uart_transmit.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/credit/verilog/creditor.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/credit/verilog/debtor.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/bcdcounter/bcdcounter.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/sevensegment/sevensegment.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/measure/glip_measure_sevensegment.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/measure/glip_measure.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/scaler/verilog/glip_downscale.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/scaler/verilog/glip_upscale.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/fifo/verilog/oh_fifo_sync.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/fifo/verilog/oh_memory_dp.v"]"\
 "[file normalize "$origin_dir/../../../../common/logic/fifo/verilog/oh_memory_ram.v"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "nexys4ddr" $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../../boards/nexys4ddr/nexys4ddr.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../../boards/nexys4ddr/nexys4ddr.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "target_constrs_file" "[file normalize "$origin_dir/../../boards/nexys4ddr/nexys4ddr.xdc"]" $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "nexys4ddr" $obj
set_property "xelab.nosort" "1" $obj
set_property "xelab.unifast" "" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7a100tcsg324-1 -flow {Vivado Synthesis 2015} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2015" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "part" "xc7a100tcsg324-1" $obj
set_property -name {steps.synth_design.args.more options} -value {-generic WIDTH=8} -objects $obj

# Create 'synth_2' run (if not found)
if {[string equal [get_runs -quiet synth_2] ""]} {
  create_run -name synth_2 -part xc7a100tcsg324-1 -flow {Vivado Synthesis 2015} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_2]
  set_property flow "Vivado Synthesis 2015" [get_runs synth_2]
}
set obj [get_runs synth_2]
set_property "part" "xc7a100tcsg324-1" $obj
set_property -name {steps.synth_design.args.more options} -value {-generic WIDTH=16} -objects $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7a100tcsg324-1 -flow {Vivado Implementation 2015} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2015" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "part" "xc7a100tcsg324-1" $obj
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# Create 'impl_2' run (if not found)
if {[string equal [get_runs -quiet impl_2] ""]} {
  create_run -name impl_2 -part xc7a100tcsg324-1 -flow {Vivado Implementation 2015} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_2
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_2]
  set_property flow "Vivado Implementation 2015" [get_runs impl_2]
}
set obj [get_runs impl_2]
set_property "part" "xc7a100tcsg324-1" $obj
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created"
