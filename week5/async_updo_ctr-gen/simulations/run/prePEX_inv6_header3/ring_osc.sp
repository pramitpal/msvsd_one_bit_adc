.subckt ring_osc Vout VDD GND
XM1 net1 Vout VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2
XM2 net2 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2
XM3 Vout net2 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2
XM4 net1 Vout GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2
XM5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2
XM6 Vout net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2
.ends ring_osc
