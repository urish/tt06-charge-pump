PROJECT=tt_um_urish_charge_pump

all: gds/$(PROJECT).gds lef/$(PROJECT).lef

gds/$(PROJECT).gds: mag/$(PROJECT).mag
	echo "select top cell; gds write \"$@\"" | magic -rcfile $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc -noconsole -dnull $<

lef/$(PROJECT).lef: mag/$(PROJECT).mag
	echo "select top cell; lef write \"$@\" -pinonly" | magic -rcfile $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc -noconsole -dnull $<

simulate:
	make -C sim
.phony: sim
