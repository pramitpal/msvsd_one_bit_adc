.subckt ring_osc Y vdd gnd
XM1 net1 Y vdd vdd sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
XM2 net1 Y gnd gnd sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
XM3 net2 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
XM4 net2 net1 gnd gnd sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
XM5 Y net2 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
XM6 Y net2 gnd gnd sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
.ends
