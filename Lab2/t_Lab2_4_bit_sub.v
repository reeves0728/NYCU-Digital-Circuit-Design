module	t_Lab2_4_bit_BLS_gatelevel();
    wire [3:0] t_D1, t_D2, t_D3,t_D4;
    wire t_bout1,t_bout2,t_bout3,t_bout4;
    reg [3:0] t_A, t_B;
    reg t_bin;
    
    Lab2_4_bit_BLS_gatelevel M1(t_A,t_B,t_bin,t_D1,t_bout1);
    Lab2_4_bit_BLS_dataflow M2(t_A,t_B,t_bin,t_D2,t_bout2);
    Lab2_4_bit_BLS_behavioral M3(t_A,t_B,t_bin,t_D3,t_bout3);
    Lab2_4_bit_RBS M4(t_A,t_B,t_bin,t_D4,t_bout4);


    initial begin
        t_A=4'b0000; t_B=4'b1100;t_bin=1'b1;
        #100 t_A=4'b0001; t_B=4'b0010;t_bin=1'b1;
        #100 t_A=4'b0011; t_B=4'b0110;t_bin=1'b1;
        #100 t_A=4'b0101; t_B=4'b1011;t_bin=1'b0;
        #100 t_A=4'b0111; t_B=4'b1010;t_bin=1'b1;
        #100 t_A=4'b1000; t_B=4'b0001;t_bin=1'b0;
        #100 t_A=4'b1011; t_B=4'b0110;t_bin=1'b0;
        #100 t_A=4'b1111; t_B=4'b1111;t_bin=1'b1;
    end
    
    initial #800 $finish;
    
    initial begin
        $monitor("A = %b, B = %b, bin = %b, D = %b, bout = %b",t_A,t_B,t_bin,t_D1,t_bout1);
        $monitor("A = %b, B = %b, bin = %b, D = %b, bout = %b",t_A,t_B,t_bin,t_D2,t_bout2);
        $monitor("A = %b, B = %b, bin = %b, D = %b, bout = %b",t_A,t_B,t_bin,t_D3,t_bout3);
        $monitor("A = %b, B = %b, bin = %b, D = %b, bout = %b",t_A,t_B,t_bin,t_D4,t_bout4);
    end
    
    initial begin
		$dumpfile("Lab2_4_bit_BLS.vcd");
		$dumpvars;
	end
endmodule