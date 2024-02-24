module t_Lab3_SR_Latch_gatelevel();
    wire t_Q,t_Qb;
    reg t_S,t_R;
    Lab3_SR_Latch_gatelevel M1(t_S,t_R,t_Q,t_Qb);
    initial #250 $finish;
    initial fork
            t_S=0;
            t_R=1;
        #30 t_S=1;
        #60 t_S=0;
        #90 t_S=1;
        #120 t_S=1;
        #170 t_S=0;
        #200 t_S=0;
        #30 t_R=0;
        #60 t_R=0;
        #90 t_R=0;
        #120 t_R=1;
        #170 t_R=0;
        #200 t_R=1;
    join

    initial begin
        $monitor("S = %b, R = %b, Q = %b, Qb = %b",t_S,t_R,t_Q,t_Qb);
    end
    initial begin
		$dumpfile("Lab3_SR_Latch_gatelevel.vcd");
		$dumpvars;
	end
endmodule