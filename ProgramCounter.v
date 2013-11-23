module ProgramCounter(input clk, rst, input [12:0] din, output reg [12:0] dout);
	always@(posedge clk)
	begin
		dout <= rst? 0 : din;
	end
endmodule
