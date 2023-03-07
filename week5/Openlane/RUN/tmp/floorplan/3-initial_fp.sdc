###############################################################################
# Created by write_sdc
# Tue Mar  7 13:57:15 2023
###############################################################################
current_design up_counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {en}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {counter[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {countern[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {countern[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {countern[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {countern[3]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {counter[3]}]
set_load -pin_load 0.0334 [get_ports {counter[2]}]
set_load -pin_load 0.0334 [get_ports {counter[1]}]
set_load -pin_load 0.0334 [get_ports {counter[0]}]
set_load -pin_load 0.0334 [get_ports {countern[3]}]
set_load -pin_load 0.0334 [get_ports {countern[2]}]
set_load -pin_load 0.0334 [get_ports {countern[1]}]
set_load -pin_load 0.0334 [get_ports {countern[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {en}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
