import subprocess, sys, re

drc_filename = "flow/reports/sky130hd/async_up_down/6_final_drc.rpt"
num_lines = sum(1 for line in open(drc_filename))

if num_lines > 3:
    print("DRC failed!")
else:
    print("DRC is clean!")


# LVS Bypassed

#lvs_filename = "flow/reports/sky130hd/async_up_down/6_final_lvs.rpt"
#lvs_line = subprocess.check_output(["tail", "-1", lvs_filename]).decode(
#    sys.stdout.encoding
#)
#
#regex = r"Netlists do not match"
#match = re.search(regex, lvs_line)
#
#if match != None:
#    raise ValueError("LVS failed!")
#else:
#    print("LVS is clean!")
#