module tb_counter4bit();
	reg clk, rst;
	wire [3:0]out;
	counter4bit dut(.clk(clk), .rst(rst), .out(out));
	//#define clock
	always
		#5 clk=~clk;
	initial
	clk = 1'b0;
	initial
	begin
		$monitor ($time, "ns: clk=%b, rst=%b, out=%b",clk,rst,out);
		$dumpfile ("example.vcd");
		$dumpvars (0, tb_counter4bit);
		rst=1;#10;
		rst=0;#60;
		$finish;
	end
endmodule