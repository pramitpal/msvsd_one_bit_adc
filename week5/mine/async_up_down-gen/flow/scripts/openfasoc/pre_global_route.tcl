# Create r_VIN net
source $::env(SCRIPTS_DIR)/openfasoc/create_routable_power_net.tcl
create_routable_power_net "VSS" $::env(VIN_ROUTE_CONNECTION_POINTS)
create_routable_power_net "VDD" $::env(VIN_ROUTE_CONNECTION_POINTS)

# NDR rules
source $::env(SCRIPTS_DIR)/openfasoc/add_ndr_rules.tcl

# Custom connections
source $::env(SCRIPTS_DIR)/openfasoc/create_custom_connections.tcl
if {[info exist ::env(GND_VSS_CONNECTION)]} {
  create_custom_connections $::env(GND_VSS_CONNECTION)
}
if {[info exist ::env(VDD_VDD_CONNECTION)]} {
  create_custom_connections $::env(VDD_VDD_CONNECTION)
}
