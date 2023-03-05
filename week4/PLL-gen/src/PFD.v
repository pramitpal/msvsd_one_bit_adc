module PFD(
    input Vref,
    input Vout,
    output reg UP,
    output reg DN
);
wire clear;

assign clear = UP & DN;
always@(negedge Vref)begin
    if(clear==1)begin
        UP<=1'b0;
    end
    else begin
        UP<=1'b1;
    end
end

always@(negedge Vout)begin
    if(clear==1)begin
        DN<=1'b0;
    end
    else begin
        DN<=1'b1;
    end
end
endmodule
