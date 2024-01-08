# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CTRL_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FRAC_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAT_MAX_COL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAT_MAX_ROW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WORD_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CTRL_DATA_WIDTH { PARAM_VALUE.CTRL_DATA_WIDTH } {
	# Procedure called to update CTRL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CTRL_DATA_WIDTH { PARAM_VALUE.CTRL_DATA_WIDTH } {
	# Procedure called to validate CTRL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FRAC_BITS { PARAM_VALUE.FRAC_BITS } {
	# Procedure called to update FRAC_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAC_BITS { PARAM_VALUE.FRAC_BITS } {
	# Procedure called to validate FRAC_BITS
	return true
}

proc update_PARAM_VALUE.MAT_MAX_COL { PARAM_VALUE.MAT_MAX_COL } {
	# Procedure called to update MAT_MAX_COL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAT_MAX_COL { PARAM_VALUE.MAT_MAX_COL } {
	# Procedure called to validate MAT_MAX_COL
	return true
}

proc update_PARAM_VALUE.MAT_MAX_ROW { PARAM_VALUE.MAT_MAX_ROW } {
	# Procedure called to update MAT_MAX_ROW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAT_MAX_ROW { PARAM_VALUE.MAT_MAX_ROW } {
	# Procedure called to validate MAT_MAX_ROW
	return true
}

proc update_PARAM_VALUE.WORD_WIDTH { PARAM_VALUE.WORD_WIDTH } {
	# Procedure called to update WORD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WORD_WIDTH { PARAM_VALUE.WORD_WIDTH } {
	# Procedure called to validate WORD_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.CTRL_DATA_WIDTH { MODELPARAM_VALUE.CTRL_DATA_WIDTH PARAM_VALUE.CTRL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CTRL_DATA_WIDTH}] ${MODELPARAM_VALUE.CTRL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.WORD_WIDTH { MODELPARAM_VALUE.WORD_WIDTH PARAM_VALUE.WORD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WORD_WIDTH}] ${MODELPARAM_VALUE.WORD_WIDTH}
}

proc update_MODELPARAM_VALUE.FRAC_BITS { MODELPARAM_VALUE.FRAC_BITS PARAM_VALUE.FRAC_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAC_BITS}] ${MODELPARAM_VALUE.FRAC_BITS}
}

proc update_MODELPARAM_VALUE.MAT_MAX_ROW { MODELPARAM_VALUE.MAT_MAX_ROW PARAM_VALUE.MAT_MAX_ROW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAT_MAX_ROW}] ${MODELPARAM_VALUE.MAT_MAX_ROW}
}

proc update_MODELPARAM_VALUE.MAT_MAX_COL { MODELPARAM_VALUE.MAT_MAX_COL PARAM_VALUE.MAT_MAX_COL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAT_MAX_COL}] ${MODELPARAM_VALUE.MAT_MAX_COL}
}

