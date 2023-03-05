# PLL Generator
This page gives an overview of how the PLL Generator (PLL-gen) works internally in OpenFASoC.

## Working and Block diagram
-----------------------------
A Phase locked loop(PLL) mainly consists of the following four blocks:-
```
1. Phase Detector(PD)
2. Charge Pump (CP)
3. Voltage Controlled Oscillator (VCO)
4. Frequency Divider (FD)
```
**1. Phase Detector:-**
                Phase detector produces two DC voltages namely UP and DOWN, which is proportional to the phase difference between the input signal(Vref) and feedback (output) signal(Vout). If the Vref phase is lagging with respect to Vout then UP signal remains high to the duration of their phase difference and the DOWN signal remains low. If the Vref phase is leading with respect to Vout then DOWN signal remains high to the duration of their phase difference and the UP signal remains low.
                The Phase detector is constructed using two negative edge triggered D Flip-Flops and a AND gate, which makes it a digital block.
                
<img width="445" alt="Screenshot 2022-11-21 at 7 25 32 PM" src="https://user-images.githubusercontent.com/110079631/203073018-1c06be90-d496-4347-851c-4c3b80aae57c.png">

- Lagging Condition shown below:-

<img width="589" alt="Screenshot 2022-11-21 at 7 26 24 PM" src="https://user-images.githubusercontent.com/110079631/203073555-9091d92f-1198-4d12-86f2-4ea532928ddf.png">

**2. Charge Pump:-**
                Charge Pump is used to convert the digital measure of the phase difference done in the Phase Detector into a analog control signal, which is used to control the Voltage Controlled Oscillator in the next stage.
                In the construction of the Charge Pump we use a current steering model which makes it a Analog block. Here when the UP signal is high the current flows from Vdd to output which charges the load capacitance. When the DOWN signal is high the current flows from load capacitance to ground which is discharging of the current.

<img width="336" alt="Screenshot 2022-11-21 at 5 43 39 PM" src="https://user-images.githubusercontent.com/110079631/203073124-c2d463ae-6064-4208-9792-2ce74ebab4af.png">

```
Avg Active time of UP   > Avg Active time of DOWN = Charging of Capacitance     [0-->1]--> Speeds up the VCO
Avg Active time of DOWN > Avg Active time of UP   = Dis-Charging of Capacitance [1-->0]--> Slows down the VCO
```

<img width="346" alt="Screenshot 2022-11-21 at 5 41 39 PM" src="https://user-images.githubusercontent.com/110079631/203073306-3ec3e940-5bbc-4895-82d6-011fe26713cf.png">

**3. Voltage Controlled Oscillator:-**
                  The Output of the Charge Pump acts as a Control signal to the Voltage Controlled Oscillator.The VCO generates a DC signal, the amplitude of which is proportional to the amplitude of output of Charge Pump Control Signal. Here the adjustment in the output frequency/phase of VCO is made until it shows equivalency with the input signal frequency/phase. 
                  The VCO is contructed using two current mirrors and a ring Oscillator which makes it a Analog block. The control signal is used as an input to these current source(mirrors) to control the current supply which in turn control the delay of the circuit. By controlling the delay we are basically controlling the frequency of the Oscillator which makes it frequency flexible.
    
<img width="568" alt="Screenshot 2022-11-21 at 7 30 50 PM" src="https://user-images.githubusercontent.com/110079631/203073888-bce2a8db-3aff-4842-a218-147715ec789a.png">

**4. Frequency Divider:-**
                  Frequency Divider is used to divide the frequency which is otherwise a multiplier in time of the Output voltage from the Voltage Controlled Oscillator and is feedback as an input to the Phase Detector, which is then compared with the Vref input signal in the Phase Detector stage.
                  The Frequency Divider is constructed using a series of Toggle Flip-Flops, which makes it a complete Digital block.

<img width="394" alt="Screenshot 2022-11-21 at 7 26 57 PM" src="https://user-images.githubusercontent.com/110079631/203073982-c36fa793-bf28-4de6-9e77-74e61333a34f.png">

## OpenFASoc PLL Generation
---------------------------
**1. Setup:-**
- Gitclone the repository and copy the `PLL-gen` folder into the generators directory of the `OpenFasoc Tool`(Checkout the References below for the openfasoc tool).
```
git clone https://github.com/vinayrayapati/OpenFaSoc.git
```

**2. Verilog Generation:-**
- Open the terminal in the PLL-gen directory and do `make sky130hd_pll_verilog` to generate the Verilog files.

<img width="569" alt="Screenshot 2022-11-21 at 7 40 05 PM" src="https://user-images.githubusercontent.com/110079631/203075792-da9840e3-14f6-48b3-98e8-25b530f60660.png">

<img width="570" alt="Screenshot 2022-11-21 at 7 43 39 PM" src="https://user-images.githubusercontent.com/110079631/203076541-99377cb7-5204-4e88-856d-2f70cefedcca.png">

- The Generated verilog files reside in the /PLL-gen/flow/design/src/PLL folder.

<img width="516" alt="Screenshot 2022-11-21 at 7 45 33 PM" src="https://user-images.githubusercontent.com/110079631/203076964-07813918-86e6-4be8-b4e4-8b135ab1be21.png">

**3. Synthesis to PNR flow:-**
- Run the command `make sky130hd_pll` to run the verilog generation, Synthesis, Place and Route.

<img width="568" alt="Screenshot 2022-11-21 at 7 46 59 PM" src="https://user-images.githubusercontent.com/110079631/203078222-5fc987bd-c24f-4cfa-94fa-3e1fc1eba957.png">

- Verilog Generated:

<img width="564" alt="Screenshot 2022-11-21 at 7 48 06 PM" src="https://user-images.githubusercontent.com/110079631/203077534-afc49ff2-3962-4798-9e36-94285a44659f.png">

- Synthesis Finished:

<img width="564" alt="Screenshot 2022-11-21 at 7 49 03 PM" src="https://user-images.githubusercontent.com/110079631/203077745-ded9e31a-c77c-4601-a5dc-a5008155620f.png">

- The Synthesised Verilog Files are stored in the /PLL-gen/flow/results/sky130hd/PLL folder.

- Running Flooorplan:

<img width="568" alt="Screenshot 2022-12-06 at 11 46 26 PM" src="https://user-images.githubusercontent.com/110079631/205991123-8d686f01-c693-4c01-8971-3e2600712476.png">

- Floorplan Power Report:

<img width="561" alt="Screenshot 2022-12-06 at 11 46 43 PM" src="https://user-images.githubusercontent.com/110079631/205991441-df3ca183-cb45-4309-aa15-9ca3d5dc0d77.png">

- Macros Identification in Floorplan:

<img width="572" alt="Screenshot 2022-12-06 at 11 47 10 PM" src="https://user-images.githubusercontent.com/110079631/205991582-eab00b04-82a7-4b99-86fb-0de45c228425.png">

- Floorplan Finished:

<img width="572" alt="Screenshot 2022-12-06 at 11 47 23 PM" src="https://user-images.githubusercontent.com/110079631/205991642-043e1842-b777-4291-8dac-7a8938dacfb5.png">

- Running Placement:

<img width="571" alt="Screenshot 2022-12-06 at 11 47 33 PM" src="https://user-images.githubusercontent.com/110079631/205991745-6c2327ab-24d4-4bdf-8652-66bc40479a23.png">

- Placement Analysis Report:

<img width="566" alt="Screenshot 2022-12-06 at 11 48 02 PM" src="https://user-images.githubusercontent.com/110079631/205991841-7ced150b-ceec-48fb-9f9f-8e8034a3bd78.png">

- Detailed Placement Power Report:

<img width="567" alt="Screenshot 2022-12-06 at 11 48 14 PM" src="https://user-images.githubusercontent.com/110079631/205991955-68720d24-b589-4aec-b9b0-fac83264c83d.png">

- Placement Finished:

<img width="568" alt="Screenshot 2022-12-06 at 11 48 24 PM" src="https://user-images.githubusercontent.com/110079631/205992018-c4d70a23-27b4-4e51-829e-21e34b277f82.png">

- Run Routing:

<img width="571" alt="Screenshot 2022-12-06 at 11 48 34 PM" src="https://user-images.githubusercontent.com/110079631/205992110-6cd9ae0f-fb0c-4eea-a2fd-5dcadc3d58a1.png">

- Global Route Power Report:

<img width="569" alt="Screenshot 2022-12-06 at 11 48 56 PM" src="https://user-images.githubusercontent.com/110079631/205992226-6688782a-cda7-44fc-a22c-7ddd62ad29f7.png">

- Optimization Iterations in Routing:

<img width="568" alt="Screenshot 2022-12-06 at 11 49 21 PM" src="https://user-images.githubusercontent.com/110079631/205992467-acb5ef4c-fe62-436a-b13e-07a13955702e.png">

- PNR Finished and final.gds Generated:

<img width="568" alt="Screenshot 2022-12-06 at 11 50 40 PM" src="https://user-images.githubusercontent.com/110079631/205992583-66334602-d2d7-478d-a864-b936dd215019.png">

- Final Gds Layout:   It is left for future work to rectify the incorrect placement/routing of the two macro cells as can be observed in the layout below.This is explained in the FUTURE WORK below.

<img width="847" alt="Screenshot 2022-12-01 at 7 51 32 PM" src="https://user-images.githubusercontent.com/110079631/205996238-3a3a6b7b-8d89-4475-9782-7ce71b1c6c95.png">

## Future Work
---------------
- Verification of the custom_placement under detail_placement is required.
- A few of the errors faced in routing are bypassed(by not creating a routable net for VIN,removing path to create_routable_power_net.tcl in pre_global_route.tcl) ,which is resulting in the incorrect routing of the macro cells which can be clearly seen in the final.gds layout. Need to rectify the errors and run the flow.
- Routing is crashing, which is bypassed by removing the path to create_routable_power_net.tcl as mentioned above. Rectification and identification of the cause for the crash is needed.
- Warnings are generated in routing for missing connections. Need to verify whether this is due to the errors bypassed in the routing or any new issue.
- Model File updation for more cases is required to achieve the pll generation for different input requirements that achieves best performance.
- Need for constraints according to the model file created.

## INPUT LINKS
- **For details on the GDS and LEF file generation for the aux cells [CLICK HERE](https://github.com/sanampudig/OpenFASoC/tree/main/AUXCELL)**

### Author
 - **Vinay Rayapati**

### Contributors
 - Vinay Rayapati
 - Kunal Ghosh

### Acknowledgments
 - Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.
 - Dr.Madhav Rao, ECE Department, IIIT Bangalore.
 - Dr.Murali, Co-ordinator(M.Tech), IIIT Bangalore.

### References
 - OpenFASOC https://github.com/idea-fasoc/OpenFASOC.git

### Contact Information
 - Vinay Rayapati,Post-Graduate student,International Institute of Information Technology Bangalore,vinayrayapati@outlook.com
 - Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.,kunalghosh@gmail.com
 - Dr.Madhav Rao, ECE Department, IIIT Bangalore,mr@iiitb.ac.in
 - Dr.Murali, Co-ordinator(M.Tech), IIIT Bangalore,coordinator-mtech@iiitb.ac.in
