# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BRAM_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BRAM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BRAM_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEVICE_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEVICE_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_MULT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_FREQ_MULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_OSCILLATORS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_PARAM_PER_OSC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OSC_PER_BANK" -parent ${Page_0}


}

proc update_PARAM_VALUE.BRAM_ADDR_WIDTH { PARAM_VALUE.BRAM_ADDR_WIDTH } {
	# Procedure called to update BRAM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_ADDR_WIDTH { PARAM_VALUE.BRAM_ADDR_WIDTH } {
	# Procedure called to validate BRAM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.BRAM_DATA_WIDTH { PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to update BRAM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_DATA_WIDTH { PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to validate BRAM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.BRAM_DEPTH { PARAM_VALUE.BRAM_DEPTH } {
	# Procedure called to update BRAM_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_DEPTH { PARAM_VALUE.BRAM_DEPTH } {
	# Procedure called to validate BRAM_DEPTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DEVICE_ID { PARAM_VALUE.DEVICE_ID } {
	# Procedure called to update DEVICE_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEVICE_ID { PARAM_VALUE.DEVICE_ID } {
	# Procedure called to validate DEVICE_ID
	return true
}

proc update_PARAM_VALUE.DEVICE_ID_WIDTH { PARAM_VALUE.DEVICE_ID_WIDTH } {
	# Procedure called to update DEVICE_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEVICE_ID_WIDTH { PARAM_VALUE.DEVICE_ID_WIDTH } {
	# Procedure called to validate DEVICE_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.FREQ_MULT_WIDTH { PARAM_VALUE.FREQ_MULT_WIDTH } {
	# Procedure called to update FREQ_MULT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_MULT_WIDTH { PARAM_VALUE.FREQ_MULT_WIDTH } {
	# Procedure called to validate FREQ_MULT_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_FREQ_MULT { PARAM_VALUE.NUM_FREQ_MULT } {
	# Procedure called to update NUM_FREQ_MULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_FREQ_MULT { PARAM_VALUE.NUM_FREQ_MULT } {
	# Procedure called to validate NUM_FREQ_MULT
	return true
}

proc update_PARAM_VALUE.NUM_OSCILLATORS { PARAM_VALUE.NUM_OSCILLATORS } {
	# Procedure called to update NUM_OSCILLATORS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_OSCILLATORS { PARAM_VALUE.NUM_OSCILLATORS } {
	# Procedure called to validate NUM_OSCILLATORS
	return true
}

proc update_PARAM_VALUE.NUM_PARAM_PER_OSC { PARAM_VALUE.NUM_PARAM_PER_OSC } {
	# Procedure called to update NUM_PARAM_PER_OSC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_PARAM_PER_OSC { PARAM_VALUE.NUM_PARAM_PER_OSC } {
	# Procedure called to validate NUM_PARAM_PER_OSC
	return true
}

proc update_PARAM_VALUE.OSC_PER_BANK { PARAM_VALUE.OSC_PER_BANK } {
	# Procedure called to update OSC_PER_BANK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OSC_PER_BANK { PARAM_VALUE.OSC_PER_BANK } {
	# Procedure called to validate OSC_PER_BANK
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.FREQ_MULT_WIDTH { MODELPARAM_VALUE.FREQ_MULT_WIDTH PARAM_VALUE.FREQ_MULT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_MULT_WIDTH}] ${MODELPARAM_VALUE.FREQ_MULT_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_FREQ_MULT { MODELPARAM_VALUE.NUM_FREQ_MULT PARAM_VALUE.NUM_FREQ_MULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_FREQ_MULT}] ${MODELPARAM_VALUE.NUM_FREQ_MULT}
}

proc update_MODELPARAM_VALUE.NUM_OSCILLATORS { MODELPARAM_VALUE.NUM_OSCILLATORS PARAM_VALUE.NUM_OSCILLATORS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_OSCILLATORS}] ${MODELPARAM_VALUE.NUM_OSCILLATORS}
}

proc update_MODELPARAM_VALUE.NUM_PARAM_PER_OSC { MODELPARAM_VALUE.NUM_PARAM_PER_OSC PARAM_VALUE.NUM_PARAM_PER_OSC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_PARAM_PER_OSC}] ${MODELPARAM_VALUE.NUM_PARAM_PER_OSC}
}

proc update_MODELPARAM_VALUE.OSC_PER_BANK { MODELPARAM_VALUE.OSC_PER_BANK PARAM_VALUE.OSC_PER_BANK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OSC_PER_BANK}] ${MODELPARAM_VALUE.OSC_PER_BANK}
}

proc update_MODELPARAM_VALUE.BRAM_DEPTH { MODELPARAM_VALUE.BRAM_DEPTH PARAM_VALUE.BRAM_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_DEPTH}] ${MODELPARAM_VALUE.BRAM_DEPTH}
}

proc update_MODELPARAM_VALUE.BRAM_ADDR_WIDTH { MODELPARAM_VALUE.BRAM_ADDR_WIDTH PARAM_VALUE.BRAM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_ADDR_WIDTH}] ${MODELPARAM_VALUE.BRAM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.BRAM_DATA_WIDTH { MODELPARAM_VALUE.BRAM_DATA_WIDTH PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_DATA_WIDTH}] ${MODELPARAM_VALUE.BRAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DEVICE_ID_WIDTH { MODELPARAM_VALUE.DEVICE_ID_WIDTH PARAM_VALUE.DEVICE_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEVICE_ID_WIDTH}] ${MODELPARAM_VALUE.DEVICE_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.DEVICE_ID { MODELPARAM_VALUE.DEVICE_ID PARAM_VALUE.DEVICE_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEVICE_ID}] ${MODELPARAM_VALUE.DEVICE_ID}
}

