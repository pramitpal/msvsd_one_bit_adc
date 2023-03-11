v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -160 -20 -160 {
lab=VDD}
N -30 -190 -30 -160 {
lab=VDD}
N -30 -190 -20 -190 {
lab=VDD}
N -20 -190 110 -190 {
lab=VDD}
N -20 -130 -20 -10 {
lab=#net1}
N -20 50 -10 50 {
lab=#net2}
N -10 50 110 50 {
lab=#net2}
N 70 50 70 70 {
lab=#net2}
N 70 100 90 100 {
lab=GND}
N 90 100 90 130 {
lab=GND}
N 70 130 90 130 {
lab=GND}
N 110 -160 120 -160 {
lab=VDD}
N 120 -190 120 -160 {
lab=VDD}
N 110 -190 120 -190 {
lab=VDD}
N 20 -160 70 -160 {
lab=#net1}
N 20 -160 20 -130 {
lab=#net1}
N -20 -130 20 -130 {
lab=#net1}
N 110 -30 110 -10 {
lab=#net3}
N 110 -130 110 -30 {
lab=#net3}
N 100 20 110 20 {
lab=GND}
N -20 20 -10 20 {
lab=GND}
N 30 -130 30 100 {
lab=#net1}
N 20 -130 30 -130 {
lab=#net1}
N 110 -200 110 -190 {
lab=VDD}
N 70 130 70 150 {
lab=GND}
N 290 -80 290 -50 {
lab=OUT}
N 250 -110 250 -20 {
lab=#net3}
N 110 -70 250 -70 {
lab=#net3}
N 290 -190 290 -140 {
lab=VDD}
N 120 -190 290 -190 {
lab=VDD}
N 290 20 290 150 {
lab=GND}
N 70 150 290 150 {
lab=GND}
N 290 10 290 20 {
lab=GND}
N 290 -20 300 -20 {
lab=GND}
N 300 -20 300 30 {
lab=GND}
N 290 30 300 30 {
lab=GND}
N 290 -110 310 -110 {
lab=VDD}
N 310 -140 310 -110 {
lab=VDD}
N 290 -140 310 -140 {
lab=VDD}
N 290 -70 360 -70 {
lab=OUT}
N 560 120 560 150 {
lab=#net4}
N 520 90 520 180 {
lab=INP}
N 560 210 560 220 {
lab=GND}
N 560 180 570 180 {
lab=GND}
N 570 180 570 230 {
lab=GND}
N 560 230 570 230 {
lab=GND}
N 560 90 580 90 {
lab=VDD}
N 580 60 580 90 {
lab=VDD}
N 560 60 580 60 {
lab=VDD}
N 560 220 560 230 {
lab=GND}
N 680 120 680 150 {
lab=#net5}
N 640 90 640 180 {
lab=#net4}
N 680 210 680 220 {
lab=GND}
N 680 180 690 180 {
lab=GND}
N 690 180 690 230 {
lab=GND}
N 680 230 690 230 {
lab=GND}
N 680 90 700 90 {
lab=VDD}
N 700 60 700 90 {
lab=VDD}
N 680 60 700 60 {
lab=VDD}
N 680 220 680 230 {
lab=GND}
N 790 120 790 150 {
lab=INP}
N 750 90 750 180 {
lab=#net5}
N 790 210 790 220 {
lab=GND}
N 790 180 800 180 {
lab=GND}
N 800 180 800 230 {
lab=GND}
N 790 230 800 230 {
lab=GND}
N 790 90 810 90 {
lab=VDD}
N 810 60 810 90 {
lab=VDD}
N 790 60 810 60 {
lab=VDD}
N 790 220 790 230 {
lab=GND}
N 680 140 750 140 {
lab=#net5}
N 560 140 640 140 {
lab=#net4}
N 570 230 680 230 {
lab=GND}
N 690 230 790 230 {
lab=GND}
N 700 60 790 60 {
lab=VDD}
N 580 60 680 60 {
lab=VDD}
N 680 230 680 260 {
lab=GND}
N 470 120 520 120 {
lab=INP}
N 470 -10 470 120 {
lab=INP}
N 470 -10 870 -10 {
lab=INP}
N 870 -10 870 140 {
lab=INP}
N 800 140 870 140 {
lab=INP}
N 790 140 800 140 {
lab=INP}
N 680 50 680 60 {
lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 0 -160 0 1 {name=M1
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 130 20 0 1 {name=M2
L=0.15
W=1.05
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
C {sky130_fd_pr/pfet_01v8.sym} 90 -160 0 0 {name=M3
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} -40 20 0 0 {name=M4
L=0.15
W=0.84
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
C {devices/vdd.sym} 110 -200 0 0 {name=l1 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 50 100 0 0 {name=M11
L=0.15
W=0.84
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
C {devices/lab_pin.sym} -60 20 0 0 {name=p2 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 150 20 0 1 {name=p3 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 360 -70 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 720 -10 1 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/vsource.sym} -240 -140 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -240 -110 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -240 -170 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -150 -150 0 0 {name=V3 value=1}
C {devices/gnd.sym} -150 -120 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -150 -180 1 0 {name=p7 sig_type=std_logic lab=INN}
C {devices/code_shown.sym} -350 -450 0 0 {name=s1 only_toplevel=false value="
.lib /home/pramit/EDA_TOOLS/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt"}
C {devices/code_shown.sym} -350 -360 0 0 {name=s2 only_toplevel=false value="
.tran 0.1n 25n
.save all
.control

run
plot INP INN OUT
.endc"}
C {devices/gnd.sym} -10 20 3 0 {name=l2 lab=GND}
C {devices/gnd.sym} 100 20 1 1 {name=l6 lab=GND}
C {devices/gnd.sym} 70 150 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 270 -110 0 0 {name=M5
L=0.15
W=0.84
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 270 -20 0 0 {name=M6
L=0.15
W=0.84
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 540 90 0 0 {name=M7
L=1
W=3.15
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
C {sky130_fd_pr/nfet_01v8.sym} 540 180 0 0 {name=M8
L=1
W=3.15
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
C {sky130_fd_pr/pfet_01v8.sym} 660 90 0 0 {name=M9
L=1
W=3.15
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
C {sky130_fd_pr/nfet_01v8.sym} 660 180 0 0 {name=M10
L=1
W=3.15
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
C {sky130_fd_pr/pfet_01v8.sym} 770 90 0 0 {name=M12
L=1
W=3.15
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
C {sky130_fd_pr/nfet_01v8.sym} 770 180 0 0 {name=M13
L=1
W=3.15
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
C {devices/vdd.sym} 680 50 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 680 250 0 0 {name=l9 lab=GND}
