MACRO_SPICE_FILE=tt_um_urish_charge_pump.spice

ifndef PDK_ROOT
$(error PDK_ROOT is not set.  Please set PDK_ROOT to the root directory of the PDK (e.g. ~/.volare))
endif

sim: $(MACRO_SPICE_FILE)
	echo ".lib '$(PDK_ROOT)/sky130A/libs.tech/ngspice/sky130.lib.spice' tt" > pdk_lib.spice
	ngspice ./testbench.spice
.PHONY: sim

$(MACRO_SPICE_FILE): ../mag/tt_um_urish_charge_pump.mag
	cd ../mag && magic -noconsole -dnull extract_spice_sim.tcl tt_um_urish_charge_pump ../sim/$(MACRO_SPICE_FILE)
