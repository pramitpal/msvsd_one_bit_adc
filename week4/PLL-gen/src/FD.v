module FD(
    input clk,
    output wire out
);
wire q0,q1;
DFF d0(.clk(clk),.d(~q0),.q(q0));
DFF d1(.clk(q0),.d(~q1),.q(q1));
DFF d2(.clk(q1),.d(~out),.q(out));
endmodule