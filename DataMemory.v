module DataMemory(input clk, read, write, input [15:0] abus, dbus_in, input rst, output [15:0] dbus_out);
	reg [15:0] mem [0:63];
	integer i;
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
		if(rst)
		begin
			for(i = 0; i < 64; i=i+1 )
			begin
				mem[i] = 0;
			end
		end
		else if(write)
		begin
			mem[abus] = dbus_in;
		end
	end
	
	assign dbus_out = (read)? mem[abus] : 16'bz;
endmodule
