.subckt buffer_test_stage vin vout vdd vss
XM1 vout vin vss vss sky130_fd_pr__nfet_01v8 L=150n W=420n nf=10 m=1
XM2 vout vin vdd vdd sky130_fd_pr__pfet_01v8 L=150n W=840n nf=10 m=1
.ends

.subckt ring_osc vout vss vdd
xi1 vout net2 vdd vss buffer_test_stage
xi2 net2 net3 vdd vss buffer_test_stage
xi3 net3 vout vdd vss buffer_test_stage
.ends
