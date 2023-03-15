module asynchronous_up_down_Inst
(
input in2,
input vdd,
input vss,

output out,
);

wire Vout_ADC_in1;


Ring_Osc_Analog RO(.VDD(vdd),
            .VSS(vss),
            .VOUT(Vout_ADC_in1));

one_Bit_ADC opampADC(.INP1(Vout_ADC_in1),
                     .INP2(in2),
                     .vdd(vdd),
                     .VSS(vss),
                     .OUT(out));



endmodule
