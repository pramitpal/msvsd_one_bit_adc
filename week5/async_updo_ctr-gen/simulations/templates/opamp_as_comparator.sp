.subckt opamp_as_comparator in1 in2 out vdd vss
XM1 net1 in1 net3 net3 sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM2 net3 net4 vss vss sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM3 out net4 vss vss sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM4 net2 in2 net3 net3 sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM5 net4 net4 vss vss sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM6 net2 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM7 net1 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM8 out net2 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
XM9 net4 net4 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
.ends opamp_as_comparator
