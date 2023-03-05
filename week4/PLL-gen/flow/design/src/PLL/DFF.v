module DFF(
    input clk,
    input d,
    output reg q
);

always@(negedge clk)begin
    q <= d;
end
endmodule
