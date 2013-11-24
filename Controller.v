module Controller(input [2:0] opcode, input [15:0] ac, output reg rd_mem, wr_mem, ac_src, ld_ac, pc_src, alu_add, alu_sub, ld_imm);
	always@(opcode)
	begin
		rd_mem = 1'b0;
		wr_mem = 1'b0;
		ac_src = 1'b0;
		ld_ac = 1'b0;
		ld_imm = 1'b0;
		pc_src = 1'b0;
		alu_add = 1'b0;
		alu_sub = 1'b0;
		
		case(opcode)
			3'b000 : // LDA (Load Accumulator)
				begin
					rd_mem = 1'b1;
					ac_src = 1'b1;
					ld_ac = 1'b1;
				end
			3'b001 : // STA (Store Accumulator)
				begin
					wr_mem = 1'b1;
				end
			3'b010 : // ADD (Add Addressed Memory with Accumulator
				begin
					alu_add = 1'b1;
					ld_ac = 1'b1;
				end
			3'b011 : // SUB (Subtract Addressed Memory from Accumulator)
				begin
					alu_sub = 1'b1;
					ld_ac = 1'b1;
				end
			3'b100 : // JMP (Unconditional Direct Jump)
				begin
					pc_src = 1'b1;
				end
			3'b101 : // JEZ (Direct jump when Acc is equal to 0)
				begin
					if(ac == 0)
					begin
						pc_src = 1'b1;
					end
				end
			3'b110 : // LDI (Load Accumulator Immediate, sign extend)
				begin
					ld_imm = 1'b1;
					ld_ac = 1'b1;
				end
			3'b111 : // HLT (Halt, no more fetching until a new start)
				begin
					
				end
		endcase
	end
endmodule
