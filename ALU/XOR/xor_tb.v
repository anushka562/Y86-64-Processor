module xor_tb;
	reg [63:0] in1, in2;
	output [63:0] out;

	xor_ x1 (in1, in2, out);

	initial 
	begin
		$dumpfile("xor_tb.vcd");
		$dumpvars(0, xor_tb);

		$monitor($time, " in1 = %b\n\t\t     in2 = %b\n\t\t     out = %b\n", in1, in2, out);

		in1 = 64'b0; in2 = 64'b0;
		#20 in1 =  64'b100110; in2 =  64'b110001;
		#20 in1 =  64'b001110; in2 =  64'b101000;
		#20 in1 = -64'b101101; in2 =  64'b010101;
		#20 in1 = -64'b100001; in2 = -64'b100010;
		#20 in1 =  64'b101111; in2 =  64'b111001;

		$finish;
	end

endmodule