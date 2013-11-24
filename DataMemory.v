module DataMemory(input clk, read, write, input [15:0] abus, dbus_in, output [15:0] dbus_out);
	reg [15:0] mem [0:63];
	/*
	always@(read or abus)
	begin
		if(read)
		begin
			dbus_out = mem[abus];
		end
	end
*/
	always@(posedge clk)
	begin
		if(write)
		begin
			mem[abus] = dbus_in;
		end
	end
	
	assign dbus_out = (read)? mem[abus] : 16'bz;
endmodule
