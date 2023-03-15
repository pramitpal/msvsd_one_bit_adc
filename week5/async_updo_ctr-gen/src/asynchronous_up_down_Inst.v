module asynchronous_up_down_Inst
(
input in2,

output out,
);

wire Vout_ADC_in1;


Ring_Osc_Analog RO(.VOUT(Vout_ADC_in1));

one_Bit_ADC opampADC(.INP1(Vout_ADC_in1),
                     .INP2(in2),
                     .OUT(out));



endmodule
