.subckt inverter vin vout vdd vss
XM2 vout vin vss vss sky130_fd_pr__nfet_01v8 L=150n W=420n nf=2
XM3 vout vin vdd vdd sky130_fd_pr__pfet_01v8 L=150n W=840n nf=2
.ends
