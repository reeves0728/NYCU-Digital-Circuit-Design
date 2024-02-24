module D_ff_AR(input D,clock,reset,output Q);
    reg Q;
    always @(posedge clock,negedge reset)
        if(reset == 0) Q <= 1'b0;
        else Q <=D;
endmodule