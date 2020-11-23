
################################################################
# This is a generated script based on design: top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# multi_oscillator_top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35ticsg324-1L
   set_property BOARD_PART digilentinc.com:arty-a7-35:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: cpu_fmem
proc create_hier_cell_cpu_fmem { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_cpu_fmem() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: clk, and set properties
  set clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk ]
  set_property -dict [ list \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk

  # Create instance: cpu, and set properties
  set cpu [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 cpu ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {0} \
   CONFIG.C_BRANCH_TARGET_CACHE_SIZE {0} \
   CONFIG.C_CACHE_BYTE_SIZE {16384} \
   CONFIG.C_DCACHE_ADDR_TAG {0} \
   CONFIG.C_DCACHE_BYTE_SIZE {16384} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_DIV_ZERO_EXCEPTION {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {0} \
   CONFIG.C_USE_BRANCH_TARGET_CACHE {1} \
   CONFIG.C_USE_DCACHE {0} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_FPU {0} \
   CONFIG.C_USE_HW_MUL {1} \
   CONFIG.C_USE_ICACHE {0} \
   CONFIG.C_USE_MSR_INSTR {0} \
   CONFIG.G_USE_EXCEPTIONS {1} \
 ] $cpu

  # Create instance: cpu_axi_periph, and set properties
  set cpu_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 cpu_axi_periph ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $cpu_axi_periph

  # Create instance: cpu_debug, and set properties
  set cpu_debug [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 cpu_debug ]

  # Create instance: cpu_fmem
  create_hier_cell_cpu_fmem [current_bd_instance .] cpu_fmem

  # Create instance: cpu_freq_bram_axi, and set properties
  set cpu_freq_bram_axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 cpu_freq_bram_axi ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $cpu_freq_bram_axi

  # Create instance: cpu_rst, and set properties
  set cpu_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 cpu_rst ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $cpu_rst

  # Create instance: freq_bram, and set properties
  set freq_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 freq_bram ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {512} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $freq_bram

  # Create instance: multi_oscillator, and set properties
  set block_name multi_oscillator_top
  set block_cell_name multi_oscillator
  if { [catch {set multi_oscillator [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $multi_oscillator eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: osc_state_fifo, and set properties
  set osc_state_fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 osc_state_fifo ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {9} \
   CONFIG.Fifo_Implementation {Common_Clock_Builtin_FIFO} \
   CONFIG.Full_Threshold_Assert_Value {510} \
   CONFIG.Full_Threshold_Negate_Value {509} \
   CONFIG.Input_Data_Width {64} \
   CONFIG.Input_Depth {512} \
   CONFIG.Output_Data_Width {64} \
   CONFIG.Output_Depth {512} \
   CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
   CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
   CONFIG.Use_Embedded_Registers {false} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Acknowledge_Flag {false} \
   CONFIG.Write_Data_Count_Width {9} \
 ] $osc_state_fifo

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_M_AXI_DP [get_bd_intf_pins cpu/M_AXI_DP] [get_bd_intf_pins cpu_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net cpu_axi_periph_M00_AXI [get_bd_intf_pins cpu_axi_periph/M00_AXI] [get_bd_intf_pins cpu_freq_bram_axi/S_AXI]
  connect_bd_intf_net -intf_net cpu_axi_periph_M01_AXI [get_bd_intf_pins cpu_axi_periph/M01_AXI] [get_bd_intf_pins multi_oscillator/ctrl_axi]
  connect_bd_intf_net -intf_net cpu_freq_bram_axi_BRAM_PORTA [get_bd_intf_pins cpu_freq_bram_axi/BRAM_PORTA] [get_bd_intf_pins freq_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins cpu/DEBUG] [get_bd_intf_pins cpu_debug/MBDEBUG_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins cpu/DLMB] [get_bd_intf_pins cpu_fmem/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins cpu/ILMB] [get_bd_intf_pins cpu_fmem/ILMB]

  # Create port connections
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins freq_bram/doutb] [get_bd_pins multi_oscillator/freq_bram_rddata]
  connect_bd_net -net clk_locked [get_bd_pins clk/locked] [get_bd_pins cpu_rst/dcm_locked]
  connect_bd_net -net cpu_rst_interconnect_aresetn [get_bd_pins cpu_axi_periph/ARESETN] [get_bd_pins cpu_rst/interconnect_aresetn]
  connect_bd_net -net cpu_rst_peripheral_aresetn [get_bd_pins cpu_axi_periph/M00_ARESETN] [get_bd_pins cpu_axi_periph/M01_ARESETN] [get_bd_pins cpu_axi_periph/S00_ARESETN] [get_bd_pins cpu_freq_bram_axi/s_axi_aresetn] [get_bd_pins cpu_rst/peripheral_aresetn] [get_bd_pins multi_oscillator/ctrl_axi_aresetn]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins cpu_debug/Debug_SYS_Rst] [get_bd_pins cpu_rst/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins clk/clk_out1] [get_bd_pins cpu/Clk] [get_bd_pins cpu_axi_periph/ACLK] [get_bd_pins cpu_axi_periph/M00_ACLK] [get_bd_pins cpu_axi_periph/M01_ACLK] [get_bd_pins cpu_axi_periph/S00_ACLK] [get_bd_pins cpu_fmem/LMB_Clk] [get_bd_pins cpu_freq_bram_axi/s_axi_aclk] [get_bd_pins cpu_rst/slowest_sync_clk] [get_bd_pins freq_bram/clkb] [get_bd_pins multi_oscillator/ctrl_axi_aclk] [get_bd_pins osc_state_fifo/clk]
  connect_bd_net -net multi_oscillator_bram_addr [get_bd_pins freq_bram/addrb] [get_bd_pins multi_oscillator/freq_bram_addr]
  connect_bd_net -net multi_oscillator_state_fifo_dout [get_bd_pins multi_oscillator/state_fifo_dout] [get_bd_pins osc_state_fifo/din]
  connect_bd_net -net multi_oscillator_state_fifo_rd_en [get_bd_pins multi_oscillator/state_fifo_rd_en] [get_bd_pins osc_state_fifo/rd_en]
  connect_bd_net -net multi_oscillator_state_fifo_rst [get_bd_pins multi_oscillator/state_fifo_rst] [get_bd_pins osc_state_fifo/rst]
  connect_bd_net -net multi_oscillator_state_fifo_wr_en [get_bd_pins multi_oscillator/state_fifo_wr_en] [get_bd_pins osc_state_fifo/wr_en]
  connect_bd_net -net osc_state_fifo_dout [get_bd_pins multi_oscillator/state_fifo_din] [get_bd_pins osc_state_fifo/dout]
  connect_bd_net -net osc_state_fifo_empty [get_bd_pins multi_oscillator/state_fifo_empty] [get_bd_pins osc_state_fifo/empty]
  connect_bd_net -net osc_state_fifo_full [get_bd_pins multi_oscillator/state_fifo_full] [get_bd_pins osc_state_fifo/full]
  connect_bd_net -net osc_state_fifo_prog_full [get_bd_pins multi_oscillator/state_fifo_prog_full] [get_bd_pins osc_state_fifo/prog_full]
  connect_bd_net -net reset_0_1 [get_bd_ports reset] [get_bd_pins clk/resetn] [get_bd_pins cpu_rst/ext_reset_in]
  connect_bd_net -net rst_clk_100M_bus_struct_reset [get_bd_pins cpu_fmem/SYS_Rst] [get_bd_pins cpu_rst/bus_struct_reset]
  connect_bd_net -net rst_clk_100M_mb_reset [get_bd_pins cpu/Reset] [get_bd_pins cpu_rst/mb_reset]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk/clk_in1]

  # Create address segments
  assign_bd_address -offset 0xC0000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces cpu/Data] [get_bd_addr_segs cpu_freq_bram_axi/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces cpu/Data] [get_bd_addr_segs cpu_fmem/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x00000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces cpu/Instruction] [get_bd_addr_segs cpu_fmem/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces cpu/Data] [get_bd_addr_segs multi_oscillator/ctrl_axi/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


