import argparse
import csv
import glob
import json
import os
import re
import sys
import time

import matplotlib.pyplot as plt
import pandas as pd
from numpy.polynomial import Polynomial

# ------------------------------------------------------------------------------
# Parse the command line arguments
# ------------------------------------------------------------------------------
print("#----------------------------------------------------------------------")
print("# Parsing command line arguments...")
print("#----------------------------------------------------------------------")
print(sys.argv)

genDir = os.path.join(os.path.dirname(os.path.relpath(__file__)), "../")

parser = argparse.ArgumentParser(description="PLL design generator")
parser.add_argument(
    "--specfile",
    required=True,
    help="File containing the specification for the generator",
)
parser.add_argument(
    "--outputDir", required=True, help="Output directory for generator results"
)
parser.add_argument(
    "--platform", required=True, help="PDK/process kit for cadre flow (.e.g tsmc16)"
)
parser.add_argument(
    "--mode",
    required=True,
    help="Specify the outputs to be generated: verilog, macro, full (includes PEX extraction)",
)
parser.add_argument("--ninv", required=False, help="Number of target inverters")
parser.add_argument("--pex", action="store_true", help="Simulate PEX")
parser.add_argument("--prepex", action="store_true", help="Simulate pre PEX")
parser.add_argument("--clean", action="store_true", help="Clean the workspace.")
args = parser.parse_args()


if not os.path.isfile(args.specfile):
    print("Error: specfile does not exist")
    print("File Path: " + args.specfile)
    sys.exit(1)


if args.platform != "sky130hd" and args.platform != "sky130hs":
    print("Error: only sky130hd and sky130hs platforms are supported as of now")
    sys.exit(1)

# Load json spec file
print("Loading specfile...")
try:
    with open(args.specfile) as file:
        jsonSpec = json.load(file)
except ValueError as e:
    print("Error occurred opening or loading json file.")
    print >> sys.stderr, "Exception: %s" % str(e)
    sys.exit(1)

if jsonSpec["generator"] != "PLL-gen":
    print('Error: Generator specification must be "PLL-gen".')
    sys.exit(1)


try:
    designName = jsonSpec["module_name"]
except KeyError as e:
    print("Error: Bad Input Specfile. 'module_name' variable is missing.")
    sys.exit(1)

try:
    Freqmin = jsonSpec["specifications"]["frequency"]["min"]
    Freqmax = jsonSpec["specifications"]["frequency"]["max"]
except KeyError as e:
    print(
        "Error: Bad Input Specfile. 'range o' value is missing under "
        + "'specifications'."
    )
    sys.exit(1)
except ValueError as e:
    print(
        "Error: Bad Input Specfile. Please use a float value for 'range ' "
        + "under 'specifications'."
    )
    sys.exit(1)


mFile1 = genDir + "/models/modelfile.csv"
mFilePublic1 = genDir + args.platform + ".model_PLL"

if not os.path.isfile(mFile1):
    if args.mode == "verilog":
        print(
            "Model file '"
            + mFile1
            + "' is not valid. "
        )
        sys.exit(1)

# store content in objects
Model = mFile1


# Get the design spec & parameters from spec file
designName = jsonSpec["module_name"]

Fmin = float(jsonSpec["specifications"]["frequency"]["min"])
Fmax = float(jsonSpec["specifications"]["frequency"]["max"])
if (Fmax > 12) or (Fmin < 5):
    print(
        "Error: Supported frequency must be inside the following range [5 to 12] MHz"
    )
    sys.exit(1)
if Fmax < Fmin:
    print(
        "Error: Supported frequency must be inside the following range [5 to 12] MHz"
    )
    sys.exit(1)
# read the data table (csv file)
df = pd.read_csv(Model, delimiter=",")
number_rows = 7

# get the closest new range of freq min
def get_new_freq_min():
    value = Fmin
    if value in [5]:
        return value
    else:
        result = df["Min frequency"].iloc[(df["Min frequency"] - value).abs().argsort()[:1]].tolist()
        return result[0]
# get the closest new range of freq min
def get_new_freq_max():
    value = Fmin
    if value in [12]:
        return value
    else:
        result = df["Max frequency"].iloc[(df["Max frequency"] - value).abs().argsort()[:1]].tolist()
        return result[0]





def main():
    # check model
    if Model == "":
        print("Model file is missing")
        exit()
    else:
        print("search_param----")
        inv = df["inv"]
        Freqmin = df["Min frequency"]
        Freqmax = df["Max frequency"]
        print("---number of inverters---:", inv)
        return Freqmin, Freqmax, inv


def check_search_done():
    file_present = glob.glob("search_result.csv")
    if file_present:
        print(
            "---check_search_done---- FILE IS PRESENT LETS CHECK IF SEARCH WAS ALREADY DONE"
        )
        df_search_all = pd.read_csv("search_result.csv", delimiter=",")
        search_param = (
            "Freqmin:"
            + str(Freqmin)
            + ","
            + "Freqmax:"
            + str(Freqmax)
            + ","
            + "Model:"
            + Model
        )
        print("---check_search_done---- search_param :   ", search_param)
        df_search_done = df_search_all[(df_search_all["search_param"] == search_param)]
        print("---check_search_done---- df_search_done :   ", df_search_done)
        if not df_search_done.empty:
            print("File present : SEARCH already done")
            print(
                "---check_search_done---- get old research results :   ",
                df_search_done["Min frequency"].iloc[0],
                df_search_done["Max frequency"].iloc[0],
                df_search_done["inv"].iloc[0],
                df_search_done["search_param"].iloc[0],
            )
            return (
                df_search_done["Min frequency"].iloc[0],
                df_search_done["Max frequency"].iloc[0],
                df_search_done["inv"].iloc[0],
                df_search_done["search_param"].iloc[0],
            )
        else:
            print("File present : NEW SEARCH")
            return main()
    else:
        return main()




# final result is put in these 3 variables that you can use in your
Fmin, Fmax, inv = main()

print("Inv : ", inv)



