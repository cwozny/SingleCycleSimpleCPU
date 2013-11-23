module DataMemory(input read, write, input [12:0] abus, dbus_in, output reg [12:0] dbus_out);
	reg [15:0] mem [0:63];
	
	initial
	begin
		mem[0] = 16'h0000;
	end
	
	always@(read or abus)
	begin
		dbus_out = mem[abus];
	end
	
	always@(write or abus or dbus_in)
	begin
		mem[abus] = dbus_in;
	end
endmodule
