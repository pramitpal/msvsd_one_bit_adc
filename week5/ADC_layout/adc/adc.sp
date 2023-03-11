.subckt adc VDD GND INP INN OUT
XM1 net1 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=4 m=1
XM2 net3 INP net2 GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
XM3 net3 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=4 m=1
XM4 net1 INN net2 GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
XM5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
XM6 OUT net3 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=4 m=1
XM7 OUT net3 GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
XM8 net4 INP VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=4 m=1
XM9 net4 INP GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
XM10 net5 net4 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=4 m=1
XM11 net5 net4 GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
XM12 INP net5 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=4 m=1
XM13 INP net5 GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=4 m=1
C1 net4 GND sky130_fd_pr__cap_mim_m3_1 W=10000e-9 L=10000e-9 m=1
C2 net5 GND sky130_fd_pr__cap_mim_m3_1 W=10000e-9 L=10000e-9 m=1
C3 INP GND sky130_fd_pr__cap_mim_m3_1 W=10000e-9 L=10000e-9 m=1
.ends
