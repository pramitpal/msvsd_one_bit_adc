v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 20 50 40 {
lab=#net1}
N 50 -10 60 -10 {
lab=VDD}
N 60 -40 60 -10 {
lab=VDD}
N 50 -40 60 -40 {
lab=VDD}
N 50 70 60 70 {
lab=GND}
N 60 70 60 100 {
lab=GND}
N 50 100 60 100 {
lab=GND}
N 10 -10 10 70 {
lab=Y}
N 170 20 170 40 {
lab=#net2}
N 170 -10 180 -10 {
lab=VDD}
N 180 -40 180 -10 {
lab=VDD}
N 170 -40 180 -40 {
lab=VDD}
N 170 70 180 70 {
lab=GND}
N 180 70 180 100 {
lab=GND}
N 170 100 180 100 {
lab=GND}
N 130 -10 130 70 {
lab=#net1}
N 290 20 290 40 {
lab=Y}
N 290 -10 300 -10 {
lab=VDD}
N 300 -40 300 -10 {
lab=VDD}
N 290 -40 300 -40 {
lab=VDD}
N 290 70 300 70 {
lab=GND}
N 300 70 300 100 {
lab=GND}
N 290 100 300 100 {
lab=GND}
N 250 -10 250 70 {
lab=#net2}
N 50 30 130 30 {
lab=#net1}
N 170 30 250 30 {
lab=#net2}
N -20 30 10 30 {
lab=Y}
N -20 30 -20 140 {
lab=Y}
N -20 140 370 140 {
lab=Y}
N 370 30 370 140 {
lab=Y}
N 290 30 370 30 {
lab=Y}
N 180 100 290 100 {
lab=GND}
N 60 100 170 100 {
lab=GND}
N 60 -40 170 -40 {
lab=VDD}
N 180 -40 290 -40 {
lab=VDD}
N 180 -70 190 -70 {
lab=VDD}
N 180 -70 180 -40 {
lab=VDD}
N 180 100 180 110 {
lab=GND}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 30 -10 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 30 70 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 150 -10 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 150 70 0 0 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 270 -10 0 0 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 270 70 0 0 {name=M6
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
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 190 -70 0 0 {name=p1 lab=VDD}
C {gnd.sym} 180 110 0 0 {name=l1 lab=GND}
C {iopin.sym} 370 30 0 0 {name=p2 lab=Y}
C {code_shown.sym} -140 -150 0 0 {name=s1 only_toplevel=false value=
"
.lib /home/pramit/EDA_TOOLS/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
"}
C {code_shown.sym} 410 -50 0 0 {name=s2 only_toplevel=false value=
"
.tran 10p 2n
.save all
"}
C {vsource.sym} -90 -40 0 0 {name=V1 value=1.8}
C {gnd.sym} -90 -10 0 0 {name=l2 lab=GND}
C {iopin.sym} -90 -70 0 0 {name=p3 lab=VDD}
