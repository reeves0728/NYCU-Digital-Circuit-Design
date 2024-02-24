module	t_Lab1();
	wire	F;
	reg		A, B, C, D;
	
	//instantiate device under test
	//Simple_Circuit	M1(A, B, C, D1, E1);
	Lab1_gatelevel M1(F,A,B,C,D);
	Lab1_dataflow M2(F,A,B,C,D);
	Lab1_gatelevel_UDP M3(F,A,B,C,D);
	
	//apply inputs one at a time
	initial	begin
		A=1'b0; B=1'b0; C=1'b0; D=1'b0;
		#100 A=1'b0; B=1'b0; C=1'b0; D=1'b1;
        #100 A=1'b0; B=1'b0; C=1'b1; D=1'b0;
        #100 A=1'b0; B=1'b0; C=1'b1; D=1'b1;
        #100 A=1'b0; B=1'b1; C=1'b0; D=1'b0;
        #100 A=1'b0; B=1'b1; C=1'b0; D=1'b1;
        #100 A=1'b0; B=1'b1; C=1'b1; D=1'b0;
        #100 A=1'b0; B=1'b1; C=1'b1; D=1'b1;
        #100 A=1'b1; B=1'b0; C=1'b0; D=1'b0;
        #100 A=1'b1; B=1'b0; C=1'b0; D=1'b1;
        #100 A=1'b1; B=1'b0; C=1'b1; D=1'b0;
        #100 A=1'b1; B=1'b0; C=1'b1; D=1'b1;
        #100 A=1'b1; B=1'b1; C=1'b0; D=1'b0;
        #100 A=1'b1; B=1'b1; C=1'b0; D=1'b1;
        #100 A=1'b1; B=1'b1; C=1'b1; D=1'b0;
        #100 A=1'b1; B=1'b1; C=1'b1; D=1'b1;
	end
	initial #1600 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab1.vcd");
		$dumpvars;
	end
endmodule