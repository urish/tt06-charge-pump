v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 100 -300 100 {
lab=clk}
N -300 100 -300 150 {
lab=clk}
N -260 180 -260 200 {
lab=GND}
N -260 100 -160 100 {
lab=clka}
N -90 180 -90 200 {
lab=GND}
N -260 80 -260 120 {
lab=clka}
N -300 50 -300 100 {
lab=clk}
N -90 80 -90 120 {
lab=clkb}
N -90 100 -60 100 {
lab=clkb}
N -60 100 -40 100 {
lab=clkb}
N -260 0 -260 20 {
lab=VDD}
N -90 -0 -90 20 {
lab=VDD}
N -130 50 -130 100 {
lab=clka}
N -160 100 -130 100 {
lab=clka}
N -130 100 -130 150 {
lab=clka}
N 40 0 40 50 {
lab=VDD}
N 40 50 80 50 {
lab=VDD}
N 70 10 110 10 {
lab=VDD}
N 70 10 70 50 {
lab=VDD}
N 140 50 180 50 {
lab=#net1}
N 180 50 180 140 {
lab=#net1}
N 180 200 180 220 {
lab=clka}
N 180 50 220 50 {
lab=#net1}
N 320 50 320 140 {
lab=#net2}
N 280 50 320 50 {
lab=#net2}
N 320 200 320 220 {
lab=clkb}
N 460 50 460 140 {
lab=#net3}
N 460 200 460 220 {
lab=clka}
N 420 50 460 50 {
lab=#net3}
N 320 50 360 50 {
lab=#net2}
N 180 10 180 50 {
lab=#net1}
N 180 10 250 10 {
lab=#net1}
N 320 10 320 50 {
lab=#net2}
N 320 10 390 10 {
lab=#net2}
N 460 50 500 50 {
lab=#net3}
N 560 50 600 50 {
lab=vout}
N 600 50 610 50 {
lab=vout}
N 610 50 610 140 {
lab=vout}
N 610 200 610 230 {
lab=GND}
N 610 50 690 50 {
lab=vout}
N 460 10 530 10 {
lab=#net3}
N 460 10 460 50 {
lab=#net3}
N 220 50 250 50 {
lab=#net1}
N 360 50 390 50 {
lab=#net2}
N 80 50 110 50 {
lab=VDD}
N 500 50 530 50 {
lab=#net3}
C {devices/gnd.sym} -260 200 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} -320 100 0 0 {name=p2 lab=clk}
C {devices/opin.sym} 690 50 0 0 {name=p1 lab=vout}
C {sky130_fd_pr/pfet3_01v8.sym} -280 50 0 0 {name=M1
L=0.15
W=1.5
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -280 150 0 0 {name=M3
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -160 100 0 0 {name=p4 sig_type=std_logic lab=clka}
C {devices/gnd.sym} -90 200 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -110 50 0 0 {name=M2
L=0.15
W=1.5
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -110 150 0 0 {name=M4
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -40 100 0 0 {name=p5 sig_type=std_logic lab=clkb}
C {devices/vdd.sym} -260 0 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} -90 0 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 460 170 2 0 {name=C3 model=cap_mim_m3_1 W=50 L=100 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 110 30 1 0 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} 40 0 0 0 {name=l6 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 170 2 0 {name=C1 model=cap_mim_m3_1 W=50 L=100 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 180 220 3 0 {name=p3 sig_type=std_logic lab=clka}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 250 30 1 0 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 30 1 0 {name=M7
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 320 170 2 0 {name=C2 model=cap_mim_m3_1 W=50 L=100 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 320 220 3 0 {name=p6 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 460 220 3 0 {name=p7 sig_type=std_logic lab=clka}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 530 30 1 0 {name=M8
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 610 170 2 0 {name=C4 model=cap_mim_m3_1 W=100 L=100 MF=1 spiceprefix=X}
C {devices/gnd.sym} 610 230 0 0 {name=l7 lab=GND}
C {devices/title.sym} -220 370 0 0 {name=l2 author="Uri Shaked"}