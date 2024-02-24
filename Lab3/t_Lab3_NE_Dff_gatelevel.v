module t_Lab3_NE_Dff_gatelevel();
    wire t_Q,t_Qb;
    reg t_D,t_clock;
    Lab3_NE_Dff_gatelevel M1(t_D,t_clock,t_Q,t_Qb);
    initial #300 $finish;
    initial begin
        t_clock = 1'b0;
        forever #20 t_clock = ~t_clock;
    end
    initial fork
        t_D = 0;
        #55 t_D = 1;
        #97 t_D = 0;
        #137 t_D = 1;
        #165 t_D = 0;
        #195 t_D = 1;
        #255 t_D = 0;
        
    join
    initial begin
        $monitor("D = %b, clock = %b, Q = %b, Qb = %b",t_D,t_clock,t_Q,t_Qb);
    end
    initial begin
		$dumpfile("Lab3_NE_Dff_gatelevel.vcd");
		$dumpvars;
	end

endmodule