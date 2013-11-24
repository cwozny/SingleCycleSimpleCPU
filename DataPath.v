module DataPath(input [15:0] instr, output [2:0] opcode, output [15:0] addr);
	assign opcode = instr[15:13];
	assign addr = {3'b000,instr[12:0]};
endmodule
