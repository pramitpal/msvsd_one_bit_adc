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
C {devices/vsource.sym} -250 10 0 0 {name=V1 value="sine(0.9 0.9 1Gig)"}
C {devices/gnd.sym} -250 40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -250 -20 1 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/vsource.sym} -240 -140 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -240 -110 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -240 -170 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -150 -150 0 0 {name=V3 value=1.2}
C {devices/gnd.sym} -150 -120 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -150 -180 1 0 {name=p7 sig_type=std_logic lab=INN}
C {devices/code_shown.sym} -350 -450 0 0 {name=s1 only_toplevel=false value="
.lib /home/pramit/EDA_TOOLS/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt"}
C {devices/code_shown.sym} -350 -360 0 0 {name=s2 only_toplevel=false value="
.tran 0.05n 4n
.save all
.control
*dc VPin 0 3 0.002 VNin 0 3 0.2
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
