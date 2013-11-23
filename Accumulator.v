module Accumulator(input clk, load, input [12:0] din, output reg [12:0] dout);
	always@(posedge clk)
	begin
		if(load)
		begin
			dout <= din;
		end
	end
endmodule
