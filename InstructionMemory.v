module InstructionMemory(input [12:0] abus, output reg [15:0] dbus);
	reg [15:0] mem [0:63];
	
	initial
	begin
		mem[0] = 16'b0000000000000000; // lda 0
		mem[1] = 16'b0100000000000101; // add 5
		mem[2] = 16'b0110000000000010; // sub 2
		mem[3] = 16'b0010000000000000; // sta 0
		mem[4] = 16'b1000000000000000; // jmp 0
	end
	
	always@(abus)
	begin
		dbus = mem[abus];
	end
endmodule
