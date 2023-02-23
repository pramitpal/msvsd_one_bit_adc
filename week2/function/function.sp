.subckt function A B C D E F VN VP Y
XM1 Y E net2 VP sky130_fd_pr__pfet_01v8 L=180n W=420n nf=2
XM2 Y F net2 VP sky130_fd_pr__pfet_01v8 L=180n W=420n nf=2
XM3 net2 C net1 VP sky130_fd_pr__pfet_01v8 L=180n W=420n nf=2
XM4 net2 D net3 VP sky130_fd_pr__pfet_01v8 L=180n W=420n nf=2
XM5 net1 A VP VP sky130_fd_pr__pfet_01v8 L=180n W=420n nf=2
XM6 net3 B VP VP sky130_fd_pr__pfet_01v8 L=180n W=420n nf=2
XM7 Y A net5 net5 sky130_fd_pr__nfet_01v8 L=180n W=420n nf=2
XM8 net5 B VN VN sky130_fd_pr__nfet_01v8 L=180n W=420n nf=2
XM9 Y C net5 VN sky130_fd_pr__nfet_01v8 L=180n W=420n nf=2
XM10 net5 D VN VN sky130_fd_pr__nfet_01v8 L=180n W=420n nf=2
XM11 Y E net4 VN sky130_fd_pr__nfet_01v8 L=180n W=420n nf=2
XM12 net4 F VN VN sky130_fd_pr__nfet_01v8 L=180n W=420n nf=2
.ends
