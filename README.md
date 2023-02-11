# msvsd32bitsram
# Index
- [Installation of Oracle Virtual Box with Ubuntu 22.04](#1-installation-of-oracle-virtual-box-with-ubuntu-2204)
- [Installation of Tools and SKY130 PDKs](#2-installation-of-tools-and-sky130-pdks)
  * [Magic](#2a-magic)
  * [Ngspice](#2b-ngspice)
  * [Netgen](#2c-netgen)
  * [Xschem](#2d-xschem)
  * [Open_PDKs](#2e-open_pdks)
  * [ALIGN Tool](#2f-align-tool)
- [WEEK 1](#week-1)
    * [Simulation of Inverter using Xschem and Ngspice](#3-simulation-of-inverter-using-xschem-and-ngspice)
        + [Pre-layout Simulation](#3a-pre-layout-simulation-using-xschem-and-ngspice)
            + [ DC Analaysis](#3ai-dc-analaysis-of-cmos-inverter)
            + [ Transient Analysis](#3aii-transient-analaysis-of-cmos-inverter)
    - [Simulation of Inverter Netlist (manually made) using Ngspice](#4-simulation-of-inverter-using-ngspice)
  * [Pre-layout Simulation (Netlist from Xschem)](#4a-pre-layout-simulation-of-inverter-using-ngspice)
  * [Post-layout Simulation (Netlist from Magic )](#4b-post-layout-simulation-of-inverter-using-ngspice)
  * [Comparison of pre-layout and post-layout timing parameters](#4c-comparison-of-pre-layout-and-post-layout-timing-parameters-for-inverter)
  * [LVS Report](#4d-lvs-report)
  

  - [Simulation of a function *Fn= [(B+D).(A+C)+E.F]'* using Magic and Ngspice](#simulation-of-a-function-using-magic-and-ngspice)
    * [Pre-layout Simulation]()
    * [Post-layout Simulation]()
    * [Comparison of results]()
    * [LVS Report]()

- [WEEK 2]()
  
# 1. Installation of Oracle Virtual Box with Ubuntu 22.04

1. Create a new directory **Opensourcetoolinstall** in D: Drive. Make sure there is atleast 150 GB disk space in the drive.
2. Go to [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
3. Under VirtualBox 7.0.6 platform packages, click on **Windows hosts** save the .exe file in **Opensourcetoolinstall** folder.
4. Install the VirtualBox.
5. Download **Ubuntu 22.04.1 LTS** from [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop) and save the .exe file in **Opensourcetoolinstall** folder.
6. Install Ubuntu 22.04.1 LTS in the virtualbox.

# 2. Installation of Tools and SKY130 PDKs
## 2.a. Magic
Magic is an open-source VLSI layout tool.
Install magic and its dependencies using the following commands. The dependencies can also be installed using Synaptic Manager. Synaptic manager can be first installed using `sudo apt install synaptic`.\

```
# Ipdate your system
    $sudo apt update
    $sudo apt install -y git
# Install build-essential tools
    $sudo apt install -y build-essential
# Install csh
    $sudo apt install -y csh
# Install x11
    $sudo apt install -y x11-apps
# Install X11
    $sudo apt install -y x11-xserver-utils
# Install OpenGL
    $sudo apt install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev
# Cnstall Tcl/Tk
    $sudo apt install -y tcl-dev tk-dev
# Change to the work directory
    $cd ~/VSD_8TSRAM
# Clone the git repo
    $git clone git://opencircuitdesign.com/magic
# Change into the magic directory
    $cd magic
# Configure magic
    $./configure
# Build magic
    $make
# Install magic
    $sudo make install
```
## 2.b. Ngspice
Ngspice is the open source spice simulator for electric and electronic circuits. 
Download ngspice-39 tarball `ngspice-39.tar.gz`from [https://ngspice.sourceforge.io/download.html](https://ngspice.sourceforge.io/download.html) into the work directory. Install ngspice and all its dependicies using the following commands. 
```
# Home directory
    $cd ~/VSD_8TSRAM
    $tar -xzvf ngspice-39.tar.gz
    $mkdir release
    $cd release 
# Update the system
    $sudo apt-get update
# Install Xaw library
    $sudo apt-get -y install libxaw7-dev
# Install xterm
    $sudo apt-get -y install xterm
# Install bison
    $sudo apt-get -y install bison
# Install flex
    $sudo apt-get -y install flex
# Install readlines library
    $sudo apt-get -y install libreadlines6-dev
# Run configuration
    $../configure  --with-x --with-readline=yes --disable-debug
# Build
    $make 
# Install 
    $sudo make install
```
## 2.c. Netgen
Netgen is a tool for comparing netlists, a process known as LVS, which stands for "Layout vs. Schematic". Install netgen and all its dependicies using the following commands. 

```
# Home directory
cd ~/VSD_8TSRAM
# Install GNU m4
sudo apt-get install -y m4
# Clone the repository
git clone git://opencircuitdesign.com/netgen
cd netgen
# Configure the package
./configure
# Compile the package
make
# Install the package
sudo make install
```
## 2.d. Xschem
Xschem is a schematic capture program, it allows creation of hierarchical representation of circuits with a top down approach. Install xschem and all its dependicies using the following commands. 

```
# Home directory
    $cd ~/VSD_8TSRAM
# Update the system
    $sudo apt-get update 
# Install flex and bison
    $sudo apt-get install -y flex bison
# Install libjpeg-dev 
    $sudo apt-get -y install libjpeg-dev
# Install xcb
    $sudo apt-get -y install xcb
# Clone the repository
    $git clone https://github.com/StefanSchippers/xschem.git xschem-src
    $cd xschem-src
# Configure the installation
    $./configure
# Compile the source
    $make
# Install the software
    $sudo make install
```

## 2.e. Open_PDKs
Open_PDKs is distributed with files that support the Google/SkyWater sky130 open process description https://github.com/google/skywater-pdk. Open_PDKs will set up an environment for using the SkyWater sky130 process with open-source EDA tools and tool flows such as magic, qflow, openlane, netgen, klayout, etc.More information can be found on [http://opencircuitdesign.com/open_pdks/](http://opencircuitdesign.com/open_pdks/).
Install open_pdks using the following commands.

```
# Home directory
    $cd ~/VSD_8TSRAM
# Install setup-tools
    $sudo apt-get -y install python3-setuptools
# Clone the Open PDK repository
    $git clone git://opencircuitdesign.com/open_pdks
    $cd open_pdks
# Configure Open PDK to use Sky130 libraries
    $./configure --enable-sky130-pdk
# Compile the PDK
    $make 
# Install the PDK
    $sudo make install
```
## 2.f. ALIGN Tool
ALIGN is an open source automatic layout generator for analog circuits. Install ALIGN and all its dependencies using the following commands.

```
# Home directory
    $cd ~/VSD_8TSRAM
# Clone the ALIGN source
    $git clone https://github.com/ALIGN-analoglayout/ALIGN-public
    $cd ALIGN-public
# Install virtual environment for python
    $sudo apt -y install python3.8-venv
# Install the latest pip
    $sudo apt-get -y install python3-pip
# Create python virtual envronment
    $python3 -m venv general
    $source general/bin/activate
    $python3 -m pip install pip --upgrade
    $pip install align
    $pip install pandas
    $pip install scipy
    $pip install nltk
    $pip install gensim
    $pip install setuptools wheel pybind11 scikit-build cmake ninja
# Install ALIGN as a user
    $pip install -v .
# Install ALIGN  as a developer
    $pip install -e .
    $pip install -v -e .[test] --no-build-isolation
    $pip install wheel setuptools pip --upgrade
    $pip3 install wheel setuptools pip --upgrade
    $pip install -v --no-build-isolation -e . --no-deps --install-option='-DBUILD_TESTING=ON'
```
#### Making ALIGN Portable to Sky130 tehnology
Clone the following Repository inside ALIGN-public directory
```
    $git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-sky130
```
Move SKY130_PDK folder to ~/VSD_8TSRAM/ALIGN-public/pdks.
Everytime we start the tool in new terminal, run the following commands.

```
# Running ALIGN TOOL
    $python -m venv general
    $source general/bin/activate
```
Commands to run ALIGN (goto ALIGN-public directory)
```
    $mkdir work
    $cd work
```
General syntax to give inputs
```
schematic2layout.py <NETLIST_DIR> -p <PDK_DIR> -c
EXAMPLE 1:
schematic2layout.py ../examples/telescopic_ota -p ../pdks/FinFET14nm_Mock_PDK/
EXAMPLE 2:
schematic2layout.py ../ALIGN-pdk-sky130/examples/five_transistor_ota -p ../pdks/SKY130_PDK/
```
# WEEK 1
# 3. Simulation of Inverter using Xschem and Ngspice
Invoke Xschem by typing `xschem` as shown
```
xschem --rcfile /home/pramit/work/open_pdks/sky130/sky130A/libs.tech/xschem/xschemrc
```

![image](images/xschem_inverter_sim_error_width_setting.jpg)


## 3.a Pre-layout Simulation using Xschem and Ngspice

## 3.a.i. DC Analaysis of CMOS inverter
Create the schematic for inverter in Xschem. The TT_MODELS contain the process corner details for PMOS and NMOS. The contents of TT_MODELS will be
```
name= TT_MODELS1
only_toplevel=true
format="tcleval(@value)"
** opencircuitdesign pdks install
.lib /home/pramit/work/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"
spice_ignore=false
```
DC analysis is done by using the `.dc` command using `code_shown.sym` from components.
```
.dc Vin 0 1.8 0.01
.save all
```
The schematic is as shown.

![image](images/xschem_inverter_sim_error_width_setting.jpg)

Click on `Netlist` from the menu to generate a spice file for the schematic created. Then click on `Simulate` to run the simulation and obtain the voltage-transfer characteristic(VTC) for the inverter.

![image](images/simulation.png)

From the VTC, we get the values of the following parameters.

$V_{OL}$= 0 V, $V_{IL}$= 750 mV, $V_{IH}$= 926.2 mV, $V_{OH}$= 1.8 V

The obtained values can be used to calculate noise margins.

NML = $V_{IL}$ - $V_{OL}$= 750 mV


NMH = $V_{OH}$ - $V_{IH}$= 874 mV


## 3.a.ii. Transient Analaysis of CMOS inverter
The transient analysis of the inverter can be obtained by adding `.tran ` in the `code_shown.sym` block.

![image](images/transient_schem.png)
Click on `Netlist` from the menu to generate a spice file for the schematic created. Click on `Simulate` to run the simulation and obtain the out vs time and in vs time.

![image](images/transient_response.png)
The graph shows the input and output variations with time. Timing parameters can be calculated from the graph below.

![image](images/prelayout_sim_ngspice_trans.png)

The timing parameters are calculated as

Rise time = **time(@80 % of Vout)** - **time(@20% of Vout)**

Fall time = **time(@20 % of Vout)** - **time(@80% of Vout)**

Cell Rise Delay =**time taken by output to rise to its 50% value** - **time taken by the input to fall to its 50% value**

Cell Fall Delay =**time taken by output to fall to its 50% value** - **time taken by the input to rise to its 50% value**

The timing parameters obtained from pre-layout simulations is tabulated below.

| Parameter    | Value| 
|----------|-----|
|Rise Time|51.85 ps|
|Fall Time|51.85 ps|
|Cell Rise Delay|301.6 ps|
|Cell Fall Delay|379.3 ps|


# 4. Simulation of Inverter using Ngspice

The tech file ['sky130A.tech']() and model file used from [$PDK_ROOT/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice]() has been for simulation of inverter and boolean function in the next section.

## 4.a. Pre-layout Simulation of Inverter using Ngspice
The pre-layout netlist of the inverter for simulation using ngspice.

![image](images/prelayout_sim_ngspice_sky130.png)

Transient response for pre-layout simulation.
![image](images/prelayout_sim_ngspice_trans.png)

## 4.b. Post-layout Simulation of Inverter using Ngspice
The layout  'inverter_manual.mag' was drawn in Magic as shown using sky130A pdk.

![image](images/inverter_manual_layout.png)

Extracting the netlist from the layout using
```
extract all
ext2spice rthesh 0 cthresh 0
ext2spice
```
Spice file extracted from magic after modifications. 

```
* SPICE3 file created from inverter_manual.ext - technology: sky130A
.lib /home/pramit/work/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.subckt inverter_manual Vin Vout Vdd GND
X0 Vout Vin GND GND sky130_fd_pr__nfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=1e+06u
X1 Vout Vin Vdd Vdd sky130_fd_pr__pfet_01v8 ad=2.436e+11p pd=2.26e+06u as=2.436e+11p ps=2.26e+06u w=840000u l=1e+06u
C0 Vout Vdd 0.14fF
C1 Vin Vdd 0.42fF
C2 Vout Vin 0.17fF
C3 Vout GND 0.30fF
C4 Vin GND 0.64fF
C5 Vdd GND 0.71fF
*.ends
Vin Vin GND pulse(0 1.8 1n 1n 1n 4n 10n)
V2 Vdd GND 1.8


.tran 0.01n 60n
.control
run
.endc
.end
```

Use `ngspice inverter_manual.spice`and `plot Vout Vin` to get the following plot.

![image](images/post_layout_sim.png)

From the transient response it can be clearly seen that due to manual layout, a lot of parasitics have been introduced which are cousing the output waveform to have overshoots and undershoots. By proper placement and routing this can be minimized if not avoided completely.

The timing parameters are calculated as

Rise time = **time(@80 % of Vout)** - **time(@20% of Vout)**

Fall time = **time(@20 % of Vout)** - **time(@80% of Vout)**

Cell Rise Delay =**time taken by output to rise to its 50% value ** - **time taken by the input to fall to its 50% value**

Cell Fall Delay =**time taken by output to fall to its 50% value** - **time taken by the input to rise to its 50% value**

The timing parameters obtained from pre-layout simulations is tabulated below.

| Parameter    | Value| 
|----------|-----|
|Rise Time|125.64 ps|
|Fall Time|91.56 ps|
|Cell Rise Delay|484.88 ps|
|Cell Fall Delay|212.3 ps|

## 4.c. Comparison of Pre-layout and Post-layout timing parameters for inverter.

| Parameter    | Value from Pre-layout Simulation| Value from Post-layout Simulation|
|----------|-----|-----|
|Rise Time|51.85 ps|125.64 ps|
|Fall Time|51.85 ps|91.56 ps|
|Cell Rise Delay|301.6 ps|484.88 ps|
|Cell Fall Delay|379.3 ps|212.3 ps|

From this comparison it can be understood clearly about the importance of good placement and layout of the inverter so that the `timing parameters can be improved further significantly`.


## 4.d LVS Report
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. 
However if we manually remove the parasitic capacitances introduced in the extracted netlist then the LVS matches both the spice files uniquely.
The report `comp.out` is obtained using Netgen by typing the following command.
```
netgen -batch lvs inverter_ngspice_pre.spice inverter_manual.spice
```
The content of the report is as shown.

Subcircuit summary:
Circuit 1: inverter_ngspice_pre.spice                   |Circuit 2: inverter_manual.spice
-------------------------------------------|-------------------------------------------
nmos (1)                                   |nmos (1)
pmos (1)                                   |pmos (1)
vsrc (2)                                   |vsrc (2)
Number of devices: 4                       |Number of devices: 4 
Number of nets: 4                          |Number of nets: 4

From `comp.out` file, the net result of the lvs is shown below
```

Circuit 1 cell sky130_fd_pr__nfet_01v8 and Circuit 2 cell sky130_fd_pr__nfet_01v8 are black boxes.
Equate elements:  no current cell.
Device classes sky130_fd_pr__nfet_01v8 and sky130_fd_pr__nfet_01v8 are equivalent.

Circuit 1 cell sky130_fd_pr__pfet_01v8 and Circuit 2 cell sky130_fd_pr__pfet_01v8 are black boxes.
Equate elements:  no current cell.
Device classes sky130_fd_pr__pfet_01v8 and sky130_fd_pr__pfet_01v8 are equivalent.

Subcircuit summary:
Circuit 1: inverter_manual.spice           |Circuit 2: inverter_ngspice_pre.spice      
-------------------------------------------|-------------------------------------------
sky130_fd_pr__nfet_01v8 (1)                |sky130_fd_pr__nfet_01v8 (1)                
sky130_fd_pr__pfet_01v8 (1)                |sky130_fd_pr__pfet_01v8 (1)                
vsrc (2)                                   |vsrc (2)                                   
Number of devices: 4                       |Number of devices: 4                       
Number of nets: 4                          |Number of nets: 4                          
---------------------------------------------------------------------------------------
Netlists match uniquely with property errors.
sky130_fd_pr__pfet_01v8:1 vs. sky130_fd_pr__pfet_01v8:M2:
 l circuit1: 1   circuit2: 0.15   (delta=148%, cutoff=0%)
 w circuit1: 0.84   circuit2: 1   (delta=17.4%, cutoff=0%)
sky130_fd_pr__pfet_01v8:1 vs. sky130_fd_pr__pfet_01v8:M2:
Property ps in circuit1 has no matching property in circuit2
sky130_fd_pr__pfet_01v8:1 vs. sky130_fd_pr__pfet_01v8:M2:
Property as in circuit1 has no matching property in circuit2
sky130_fd_pr__pfet_01v8:1 vs. sky130_fd_pr__pfet_01v8:M2:
Property pd in circuit1 has no matching property in circuit2
sky130_fd_pr__pfet_01v8:1 vs. sky130_fd_pr__pfet_01v8:M2:
Property ad in circuit1 has no matching property in circuit2
sky130_fd_pr__nfet_01v8:0 vs. sky130_fd_pr__nfet_01v8:M1:
 l circuit1: 1   circuit2: 0.15   (delta=148%, cutoff=0%)
 w circuit1: 0.42   circuit2: 1   (delta=81.7%, cutoff=0%)
sky130_fd_pr__nfet_01v8:0 vs. sky130_fd_pr__nfet_01v8:M1:
Property ps in circuit1 has no matching property in circuit2
sky130_fd_pr__nfet_01v8:0 vs. sky130_fd_pr__nfet_01v8:M1:
Property as in circuit1 has no matching property in circuit2
sky130_fd_pr__nfet_01v8:0 vs. sky130_fd_pr__nfet_01v8:M1:
Property pd in circuit1 has no matching property in circuit2
sky130_fd_pr__nfet_01v8:0 vs. sky130_fd_pr__nfet_01v8:M1:
Property ad in circuit1 has no matching property in circuit2
Cells have no pins;  pin matching not needed.
Device classes inverter_manual.spice and inverter_ngspice_pre.spice are equivalent.

Final result: Circuits match uniquely.
Property errors were found.

The following cells had property errors:
 inverter_manual.spice
```
It can be seen that there are some property errors present in `inverter_manual.spice` file, which is postlayout, extracted netlist.
Next step can be to prevent the property error arising in the post layout netlist.

## References
http://opencircuitdesign.com/magic/  
http://opencircuitdesign.com/open_pdks/
https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html
https://sourceforge.net/p/ngspice/discussion/




