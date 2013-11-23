module Mux_2to1_12b(input [12:0] a, b, input sel, output [12:0] out);
	assign out = sel? b : a;
endmodule
