module up_counter(input clk, reset,en, output[3:0] counter,countern);
  
	reg [3:0] counter_up;

// up counter
  always @(posedge clk or posedge reset) begin
		if(reset)
 			counter_up <= 4'd0;
    	else if(en)
 			counter_up <= counter_up + 4'd1;
	end 
  
	assign counter = counter_up;
	assign countern = ~counter_up;
endmodule
