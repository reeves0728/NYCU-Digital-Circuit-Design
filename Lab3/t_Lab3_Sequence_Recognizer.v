module t_Lab3_Sequence_Recognizer();
    wire t_z_d,t_z_s;
    reg t_x,t_clock,t_reset;
    Lab3_Sequence_Recognizer_state_diagram M_d(t_x,t_clock,t_reset,t_z_d);
    Lab3_Sequence_Recognizer_structure M_s(t_x,t_clock,t_reset,t_z_s);

    initial #350 $finish;
    initial begin
        t_clock = 1'b0;
        forever #10 t_clock = ~t_clock;
    end
    initial fork
        t_x=0;
        t_reset = 0;
        #20 t_reset = 1;
        #240 t_reset = 0;
        #245 t_reset =1;
        #40 t_x=1;
        #55 t_x=0;
        #75 t_x=1;
        #115 t_x=0;
        #155 t_x=1;
        #175 t_x=0;
        #215 t_x=1;
        #235 t_x=0;
        #275 t_x=1;
        #295 t_x=0;
        

    join

    initial begin
        // $monitor("x = %b, clock = %b, reset = %b, z_structure = %b",t_x,t_clock,t_reset,t_z_s);
        // $monitor("x = %b, clock = %b, reset = %b, z_diagram = %b",t_x,t_clock,t_reset,t_z_d);
    end
    initial begin
		$dumpfile("Lab3_Sequence_Recognizer.vcd");
		$dumpvars;
	end




endmodule