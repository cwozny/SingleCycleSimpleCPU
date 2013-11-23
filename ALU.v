module ALU(input add, input sub, input [12:0] a,b, output reg [12:0] out);
	always@(a or b or add or sub)
	begin
		if(add)
		begin
			out = a+b;
		end
		else if(sub)
		begin
			out = a-b;
		end
	end
endmodule
