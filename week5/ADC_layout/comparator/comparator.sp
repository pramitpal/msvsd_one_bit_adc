.subckt comparator VDD GND INP INN OUT
XM1 net1 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=2 m=1
XM2 net3 INP net2 GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
XM3 net3 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=2 m=1
XM4 net1 INN net2 GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
XM5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
XM6 OUT net3 VDD VDD sky130_fd_pr__pfet_01v8 L=150n W=840n nf=2 m=1
XM7 OUT net3 GND GND sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
.ends
