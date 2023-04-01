####################################
# global connections
####################################
add_global_connection -net VDD -inst_pattern {.*} -pin_pattern {VPWR|VPB} -power ;# default: VDD as power
add_global_connection -net VSS -inst_pattern {.*} -pin_pattern {VGND|VNB} -ground
global_connect
####################################
# voltage domains
####################################
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}

####################################
# standard cell grid
####################################
define_pdn_grid -name stdcell -pins met5 -starts_with POWER -voltage_domains CORE

## horizontal lines-----
add_pdn_stripe -grid {stdcell} -layer {met1} -width {0.48} -pitch {5} -offset {2.0} -extend_to_core_ring -followpins

add_pdn_ring -grid stdcell -layer {met4 met5} -widths {5.0 5.0} -spacings {2.0 2.0} -core_offsets {1.0 1.0}
##----vertical lines

add_pdn_stripe -grid {stdcell} -layer {met4} -width {0.48} -pitch {30} -offset {0.5} -extend_to_core_ring

add_pdn_connect -grid {stdcell} -layers {met1 met4}
add_pdn_connect -grid {stdcell} -layers {met4 met5}

