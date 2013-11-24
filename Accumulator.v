module Accumulator(input clk, load, input [15:0] din, output reg [15:0] dout);
	always@(posedge clk)
	begin
		if(load)
		begin
			dout <= din;
		end
	end
endmodule
