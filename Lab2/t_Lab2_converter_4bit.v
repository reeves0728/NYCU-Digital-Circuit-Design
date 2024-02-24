module	t_Lab2_converter_4bit();
    wire [3:0] t_B1,t_B2,t_B3;
    wire t_v1,t_v2,t_v3;
    reg [3:0] t_E;

    Lab2_converter_4bit_gatelevel M1(t_E,t_B1,t_v1);
    Lab2_converter_4bit_dataflow M2(t_E,t_B2,t_v2);
    Lab2_converter_4bit_behavioral M3(t_E,t_B3,t_v3);

    initial begin
        t_E = 4'b0000;
        repeat(15)
        #10 t_E = t_E + 4'b0001;
    end

    initial #160 $finish;

    initial begin
        $monitor("E = %b, B = %b, v= %b",t_E,t_B1,t_v1);
        $monitor("E = %b, B = %b, v= %b",t_E,t_B2,t_v2);
        $monitor("E = %b, B = %b, v= %b",t_E,t_B3,t_v3);
    end


    initial begin
		$dumpfile("Lab2_converter_4bit.vcd");
		$dumpvars;
	end

endmodule