module Lab3_Sequence_Recognizer_structure (input x,clock,reset,output z);
    wire A,B,C,D;
    wire D1_in,D2_in,D3_in,D4_in;
    assign D1_in = A&(~C) | (~C)&x | A&(~x) | B&C&(~x);
    assign D2_in = A&C | B&C | C&x |B&(~x) | A&B;
    assign D3_in = (~A)&(~B)&(~x) | (~B)&(~C)&(~x) |(~A)&(~C)&(~x);
    assign z = (~A)&B&(~C)&(~x);
    D_ff_AR D1(D1_in,clock,reset,A);
    D_ff_AR D2(D2_in,clock,reset,B);
    D_ff_AR D3(D3_in,clock,reset,C);

endmodule