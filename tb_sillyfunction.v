module tb_sillyfunction();
reg a,b,c;
wire y;
sillyfunction dut(.a(a), .b(b), .c(c), .y(y));
initial
begin
	$monitor ($time, "a=%b, b=%b, c=%b, y=%b", a,b,c,y);
	$dumpfile ("example.vcd");
	$dumpvars (0, tb_sillyfunction);
	a=0;b=0;c=0; #10;
	c=1; #10;
	b=1;c=0;#10;
	c=1;#10;
	a=1;b=0;c=0;#10;
	$finish;
end
endmodule