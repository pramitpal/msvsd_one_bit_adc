export DESIGN_NICKNAME = PLL
export DESIGN_NAME = PLL

export PLATFORM    = sky130hd

export VERILOG_FILES 		= $(sort $(wildcard ./design/src/$(DESIGN_NICKNAME)/*.v)) \
			  	  ../blocks/$(PLATFORM)/PLL.blackbox.v
export SDC_FILE    		= ./design/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export DIE_AREA   	 	= 0 0 200 200
export CORE_AREA   		= 15 15 180 180

# area of the smaller voltage domain
export VD1_AREA                 = 50 50 100 150

# power delivery network config file
export PDN_TCL 			= ../blocks/$(PLATFORM)/pdn.tcl

export ADDITIONAL_LEFS  	= ../blocks/$(PLATFORM)/lef/VCO.lef \
                        	  ../blocks/$(PLATFORM)/lef/CP.lef

export ADDITIONAL_GDS_FILES 	= ../blocks/$(PLATFORM)/gds/VCO.gds \
			      	  ../blocks/$(PLATFORM)/gds/CP.gds

# informs what cells should be placed in the smaller voltage domain
export DOMAIN_INSTS_LIST 	= ../blocks/$(PLATFORM)/pll_domain_insts.txt

# configuration for placement
#export MACRO_PLACE_HALO         = 1 1
#export MACRO_PLACE_CHANNEL      = 30 30
#export MACRO_PLACEMENT          = ../blocks/$(PLATFORM)/manual_macro.tcl

#export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 1
#export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 0
# don't run global place w/o IOs
export HAS_IO_CONSTRAINTS = 1
# don't run non-random IO placement (step 3_2)
export PLACE_PINS_ARGS = -random

export GPL_ROUTABILITY_DRIVEN = 1

# DPO optimization currently fails on the tempsense
export ENABLE_DPO = 0

#export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 4
#export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2

# configuration for routing

export PRE_GLOBAL_ROUTE = $(SCRIPTS_DIR)/openfasoc/pre_global_route.tcl

# informs any short circuits that should be forced during routing
export CUSTOM_CONNECTION 	= ../blocks/$(PLATFORM)/pll_custom_net.txt

# indicates with how many connections the VIN route from the HEADER cells connects to the VIN power ring
export VIN_ROUTE_CONNECTION_POINTS = 2
