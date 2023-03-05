#!/usr/bin/tclsh
# run with openroad -no_init -exit dbtodef.tcl

# read a database file provided the input name set to from_oprd_ in env
  read_db /Users/vinayrayapati/Desktop/Vinay/RISC-V/Tools/OpenFASOC/openfasoc/generators/PLL-gen/flow/results/sky130hd/PLL/5_route.odb
# write the database file provided the output name set to to_oprd_ in env
  write_def /Users/vinayrayapati/Desktop/Vinay/RISC-V/Tools/OpenFASOC/openfasoc/generators/PLL-gen/flow/results/sky130hd/PLL/5_route.def
