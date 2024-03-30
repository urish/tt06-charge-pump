v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 420 -300 1220 100 {flags=graph
y1=0
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-9.36532e-06
x2=0.000108603
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
clk"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N -80 -110 -30 -110 {
lab=CLK}
N 270 -110 330 -110 {
lab=VOUT}
C {devices/code.sym} -120 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {dickson.sym} 120 -110 0 0 {name=x1}
C {devices/res.sym} 330 -80 0 0 {name=R1
value=10Meg
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 330 -50 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 320 -110 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} -40 -110 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/code.sym} 20 50 0 0 {name=STIMULI only_toplevel=false value="

.tran 10n 100u
.save all

.control
run
write testbench.raw
.endc
"}
C {devices/vsource.sym} -80 -220 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -80 -190 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -80 -250 0 0 {name=l4 lab=VDD}
C {devices/launcher.sym} 480 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {devices/gnd.sym} -80 -50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -80 -80 0 0 {name=V2 value="PULSE(0 1.8 0 0 0 250n 500n)"}
C {devices/title.sym} 210 270 0 0 {name=l5 author="Uri Shaked"}
