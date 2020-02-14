module Traffic_cntr(clk, rst, c, ts, tl, CurntSt, nxtSt, ST);
input clk, rst, c, ts, tl;
output ST, CurntSt, nxtSt;

reg[2:0] CurntSt;
reg[2:0] nxtSt;
reg out, ST;

localparam s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100, s5=3'b101, s6=3'b110, s7=3'b111;

always@ (negedge clk)

	if(rst)
		begin
			CurntSt <= s0;
			ST <= 0;
		end
	else
		begin
			CurntSt <= nxtSt;
			ST <= out;
	    end
	    
always@ (ts or tl or CurntSt)

	begin
	
		nxtSt <= CurntSt;
		
		case(CurntSt)
		
			s0:
				begin
				
					if (ts==0)
						begin
							nxtSt<=s0;
							out<=0;
						end
					else if (ts==1)
						begin
							nxtSt<=s1;
							out=1;
						end

				end
			
			s1:
				begin
				
					if (ts==0)
						begin
							nxtSt<=s1;
							out<=0;
						end
					else if(ts==1)
						begin
							nxtSt<=s2;
							out<=1;
						end

				end
			
			s2:
				begin
				
					if (tl==0)
						begin
							nxtSt<=s2;
							out<=0;
						end
					else if (tl==1)
						begin
							nxtSt<=s3;
							out=1;
						end
				end
			
			s3:
				begin
				
					if (ts==0)
						begin
							nxtSt<=s3;
							out<=0;
						end
					else if(ts==1)
						begin
							nxtSt<=s4;
							out<=1;
						end

				end
			
			s4:
				begin
				
					if (tl==0)
						begin
							nxtSt<=s4;
							out<=0;
						end
					else if(tl==1)
						begin
							nxtSt<=s5;
							out<=1;
						end
				end
				
			s5:
			
				begin
					
					if (ts==0)
						begin
							nxtSt<=s5;
							out<=0;
						end
					else if(ts==1 & c==0)
						begin
							nxtSt<=s0;
							out<=1;
						end
					else if(ts==1 & c==1)
						begin
							nxtSt<=s6;
							out<=1;
						end
				end
				
				s6:
			
				begin
					
					if(tl==0)
						begin
							nxtSt<=s6;
							out<=0;
						end
					else if(tl==1)
						begin
							nxtSt<=s7;
							out<=1;
						end
				end
				
				s7:
			
				begin
					
					if (ts==0)
						begin
							nxtSt<=s7;
							out<=0;
						end
					else if(ts==1)
						begin
							nxtSt<=s0;
							out<=1;
						end
				end

		endcase
	end
endmodule
