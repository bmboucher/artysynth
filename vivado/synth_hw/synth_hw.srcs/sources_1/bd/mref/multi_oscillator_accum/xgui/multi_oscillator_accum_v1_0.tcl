# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BRAM_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BRAM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_MULT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_OSCILLATORS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_VIBRATO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OSC_AMP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OSC_ONTIME_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OSC_PHASE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VIBRATO_WIDTH" -parent ${Page_0}


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

proc update_PARAM_VALUE.FREQ_MULT_WIDTH { PARAM_VALUE.FREQ_MULT_WIDTH } {
	# Procedure called to update FREQ_MULT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_MULT_WIDTH { PARAM_VALUE.FREQ_MULT_WIDTH } {
	# Procedure called to validate FREQ_MULT_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_OSCILLATORS { PARAM_VALUE.NUM_OSCILLATORS } {
	# Procedure called to update NUM_OSCILLATORS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_OSCILLATORS { PARAM_VALUE.NUM_OSCILLATORS } {
	# Procedure called to validate NUM_OSCILLATORS
	return true
}

proc update_PARAM_VALUE.NUM_VIBRATO { PARAM_VALUE.NUM_VIBRATO } {
	# Procedure called to update NUM_VIBRATO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_VIBRATO { PARAM_VALUE.NUM_VIBRATO } {
	# Procedure called to validate NUM_VIBRATO
	return true
}

proc update_PARAM_VALUE.OSC_AMP_WIDTH { PARAM_VALUE.OSC_AMP_WIDTH } {
	# Procedure called to update OSC_AMP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OSC_AMP_WIDTH { PARAM_VALUE.OSC_AMP_WIDTH } {
	# Procedure called to validate OSC_AMP_WIDTH
	return true
}

proc update_PARAM_VALUE.OSC_ONTIME_WIDTH { PARAM_VALUE.OSC_ONTIME_WIDTH } {
	# Procedure called to update OSC_ONTIME_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OSC_ONTIME_WIDTH { PARAM_VALUE.OSC_ONTIME_WIDTH } {
	# Procedure called to validate OSC_ONTIME_WIDTH
	return true
}

proc update_PARAM_VALUE.OSC_PHASE_WIDTH { PARAM_VALUE.OSC_PHASE_WIDTH } {
	# Procedure called to update OSC_PHASE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OSC_PHASE_WIDTH { PARAM_VALUE.OSC_PHASE_WIDTH } {
	# Procedure called to validate OSC_PHASE_WIDTH
	return true
}

proc update_PARAM_VALUE.STATE_WIDTH { PARAM_VALUE.STATE_WIDTH } {
	# Procedure called to update STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_WIDTH { PARAM_VALUE.STATE_WIDTH } {
	# Procedure called to validate STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.VIBRATO_WIDTH { PARAM_VALUE.VIBRATO_WIDTH } {
	# Procedure called to update VIBRATO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIBRATO_WIDTH { PARAM_VALUE.VIBRATO_WIDTH } {
	# Procedure called to validate VIBRATO_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.FREQ_MULT_WIDTH { MODELPARAM_VALUE.FREQ_MULT_WIDTH PARAM_VALUE.FREQ_MULT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_MULT_WIDTH}] ${MODELPARAM_VALUE.FREQ_MULT_WIDTH}
}

proc update_MODELPARAM_VALUE.VIBRATO_WIDTH { MODELPARAM_VALUE.VIBRATO_WIDTH PARAM_VALUE.VIBRATO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VIBRATO_WIDTH}] ${MODELPARAM_VALUE.VIBRATO_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_VIBRATO { MODELPARAM_VALUE.NUM_VIBRATO PARAM_VALUE.NUM_VIBRATO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_VIBRATO}] ${MODELPARAM_VALUE.NUM_VIBRATO}
}

proc update_MODELPARAM_VALUE.BRAM_ADDR_WIDTH { MODELPARAM_VALUE.BRAM_ADDR_WIDTH PARAM_VALUE.BRAM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_ADDR_WIDTH}] ${MODELPARAM_VALUE.BRAM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.BRAM_DATA_WIDTH { MODELPARAM_VALUE.BRAM_DATA_WIDTH PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_DATA_WIDTH}] ${MODELPARAM_VALUE.BRAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.STATE_WIDTH { MODELPARAM_VALUE.STATE_WIDTH PARAM_VALUE.STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_WIDTH}] ${MODELPARAM_VALUE.STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_OSCILLATORS { MODELPARAM_VALUE.NUM_OSCILLATORS PARAM_VALUE.NUM_OSCILLATORS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_OSCILLATORS}] ${MODELPARAM_VALUE.NUM_OSCILLATORS}
}

proc update_MODELPARAM_VALUE.OSC_PHASE_WIDTH { MODELPARAM_VALUE.OSC_PHASE_WIDTH PARAM_VALUE.OSC_PHASE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OSC_PHASE_WIDTH}] ${MODELPARAM_VALUE.OSC_PHASE_WIDTH}
}

proc update_MODELPARAM_VALUE.OSC_AMP_WIDTH { MODELPARAM_VALUE.OSC_AMP_WIDTH PARAM_VALUE.OSC_AMP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OSC_AMP_WIDTH}] ${MODELPARAM_VALUE.OSC_AMP_WIDTH}
}

proc update_MODELPARAM_VALUE.OSC_ONTIME_WIDTH { MODELPARAM_VALUE.OSC_ONTIME_WIDTH PARAM_VALUE.OSC_ONTIME_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OSC_ONTIME_WIDTH}] ${MODELPARAM_VALUE.OSC_ONTIME_WIDTH}
}

