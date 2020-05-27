module counter4bit(input clk, rest, output reg[3:0]out);
always@(posedge clk)
begin
	if(rst)
		out <= 0;
	else
		out = out + 4'b0001;
end
endmodule