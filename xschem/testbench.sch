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
x1=0
x2=100u
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.stage1
x1.stage2
x1.stage3
x1.vout
ua[0]"
color="4 19 6 7 10"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0}
N -100 -110 -70 -110 {
lab=CLK}
N -100 -50 -70 -50 {
lab=GND}
N -70 -50 -70 -40 {
lab=GND}
N -70 -90 -70 -50 {
lab=GND}
C {devices/code.sym} -160 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {dickson.sym} 80 -110 0 0 {name=x1}
C {devices/lab_wire.sym} -80 -110 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/code.sym} -20 50 0 0 {name=STIMULI only_toplevel=false value="

.tran 10n 100u
.save all

.control
run
write testbench.raw
.endc
"}
C {devices/vsource.sym} 310 -210 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 310 -180 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 310 -240 0 0 {name=l4 lab=VDD}
C {devices/launcher.sym} 480 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {devices/vsource.sym} -100 -80 0 1 {name=V2 value="PULSE(0 1.8 0 0 0 250n 500n)"}
C {devices/title.sym} 210 270 0 0 {name=l5 author="Uri Shaked"}
C {devices/lab_pin.sym} 230 -130 2 0 {name=p1 sig_type=std_logic lab=ua[0]}
C {devices/gnd.sym} -70 -40 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -70 -130 0 0 {name=l1 lab=VDD}
