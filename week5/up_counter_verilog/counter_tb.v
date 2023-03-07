module test;
  reg clk, reset,en;
  wire [3:0] q,qn;
  
  up_counter cc(clk,reset,en,q,qn);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,test);
    en=1'b0;
    clk=1'b0;
    reset=1'b1;
    #10 reset = 1'b0;
    #100 en=1'b1;
    #200;
    reset=1'b1;
    #10 reset =1'b0;
    en=1'b0;
   
    #50;
     $finish;
  end
  always #5 clk=~clk;
endmodule

