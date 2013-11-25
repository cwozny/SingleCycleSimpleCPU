module InstructionMemory(input [15:0] abus, output reg [15:0] dbus);
	reg [15:0] mem [0:63];
	
	initial
	begin
		mem[0] = 16'hC00A; // ldi A
		mem[1] = 16'h2000; // sta $0
		mem[2] = 16'hC003; // ldi 4
		mem[3] = 16'h2001; // sta $1
		mem[4] = 16'hC001; // ldi 1
		mem[5] = 16'h2002; // sta $2
		mem[6] = 16'h0000; // lda $0
		mem[7] = 16'h4002; // add $2
		mem[8] = 16'h2000; // sta $0
		mem[9] = 16'h0001; // lda $1
		mem[10] = 16'h6002; // sub $2
		mem[11] = 16'h2001; // sta 1
		mem[12] = 16'hA00E; // jez E
		mem[13] = 16'h8006; // jmp 6
		mem[14] = 16'hE000; // hlt
	end
	
	always@(abus)
	begin
		dbus = mem[abus];
	end
endmodule
