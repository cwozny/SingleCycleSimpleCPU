module TristateBuffer_16b(input [15:0] a, input sel, output [15:0] out);
	assign out = sel? 16'bz : a;
endmodule
