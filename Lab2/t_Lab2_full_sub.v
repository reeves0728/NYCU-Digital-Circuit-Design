module	t_Lab2_full_sub();
    wire t_diff, t_bout;
    reg t_a, t_b, t_bin;
    
    Lab2_full_sub M1(t_a,t_b,t_bin,t_diff,t_bout);

    initial begin
        t_a=1'b0; t_b=1'b0;t_bin=1'b0;
        #10 t_a=1'b0; t_b=1'b0;t_bin=1'b1;
        #10 t_a=1'b0; t_b=1'b1;t_bin=1'b0;
        #10 t_a=1'b0; t_b=1'b1;t_bin=1'b1;
        #10 t_a=1'b1; t_b=1'b0;t_bin=1'b0;
        #10 t_a=1'b1; t_b=1'b0;t_bin=1'b1;
        #10 t_a=1'b1; t_b=1'b1;t_bin=1'b0;
        #10 t_a=1'b1; t_b=1'b1;t_bin=1'b1;
    end
    
    initial #80 $finish;

    initial begin
		$dumpfile("Lab2_full_sub.vcd");
		$dumpvars;
	end
endmodule