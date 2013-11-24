module ProgramCounter(input clk, rst, input [15:0] din, output reg [15:0] dout);
	always@(posedge clk)
	begin
		dout <= rst? 0 : din;
	end
endmodule
