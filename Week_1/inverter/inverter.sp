.subckt inverter GND Vdd Vin Vout
X0 Vout Vin GND GND sky130_fd_pr__nfet_01v8  l=150n w=420n
X1 Vout Vin Vdd Vdd sky130_fd_pr__pfet_01v8  l=150n w=840n
.ends inverter
