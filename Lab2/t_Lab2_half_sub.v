module	t_Lab2_half_sub();
    wire t_diff, t_bout;
    reg t_a, t_b;
    
    Lab2_half_sub_gatelevel M1(t_a,t_b,t_diff,t_bout);

    initial begin
        t_a=1'b0; t_b=1'b0;
        #10 t_a=1'b0; t_b=1'b1;
        #10 t_a=1'b1; t_b=1'b0;
        #10 t_a=1'b1; t_b=1'b1;
    end
    
    initial #40 $finish;

    // initial begin
    //     $display("A B diff bout");
    //     $monitor("%d %d %d %d", t_a,t_b,t_diff,t_bout);
    // end

    initial begin
		$dumpfile("Lab2_half_sub.vcd");
		$dumpvars;
	end
endmodule