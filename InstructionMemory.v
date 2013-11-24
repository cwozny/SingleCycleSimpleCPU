module InstructionMemory(input [12:0] abus, output reg [15:0] dbus);
	reg [15:0] mem [0:63];
	
	initial
	begin
		mem[0] = 16'hC00A; // ldi A
		mem[1] = 16'h2000; // sta 0
		mem[2] = 16'hC005; // ldi 5
		mem[3] = 16'h2001; // sta 1
		mem[4] = 16'h0000; // lda 0
		mem[5] = 16'h4001; // add 1
		mem[6] = 16'h2000; // sta 0
		mem[7] = 16'h0001; // lda 1
		mem[8] = 16'h6001; // sub 1
		mem[9] = 16'h2001; // sta 1
		mem[10] = 16'hA000; // jez 0
		mem[11] = 16'h8004; // jmp 4
	end
	
	always@(abus)
	begin
		dbus = mem[abus];
	end
endmodule
