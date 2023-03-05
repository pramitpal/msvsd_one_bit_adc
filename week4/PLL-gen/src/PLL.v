module PLL(
    input Vref,
    output wire Vout
);

wire div_by_8;
wire vco_in,vco_out;
wire UP,DN;
assign Vout = vco_out;
PFD pfd0(.Vref(Vref),.Vout(div_by_8),.UP(UP),.DN(DN));
VCO vco0(.VCtrl(vco_in),.Clk_Out(vco_out));
CP cp0(.Up(UP),.Down(DN),.Out(vco_in));
FD fd0(.clk(vco_out),.out(div_by_8));
endmodule
