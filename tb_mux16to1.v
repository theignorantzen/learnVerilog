module muxtest();
reg [15:0]A; reg[3:0]S; wire F;
mux16to1 M(.in(A), .sel(S), .out(F));
initial
begin
	$dumpfile("mux16to1.vcd");
	$dumpvars(0,muxtest);
	$monitor($time,"s: A=%h, S=%h, F=%b",A,S,F);
	A=16'h 3f01; S=4'h0; #1;
	S=4'h1; #1;
	S=4'h6; #1;
	S=4'hc; #1;
	$finish;
end
endmodule