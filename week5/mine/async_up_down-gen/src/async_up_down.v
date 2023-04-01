module async_up_down(
    input wire in_bias,
    input wire in_inn,
    output wire  out_adc
);

wire ring_adc;

RING_OSCILLATOR ring_osc(
    .INP(ring_adc)
);

COMPARATOR one_bit_adc(
    .INP(ring_adc),
    .INN(in_inn),
    .BIAS(in_bias),
    .OUT(out_adc)
);

endmodule

