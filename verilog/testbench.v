// Testbench for Verilog two-bit greater-than comparator        // 1
module comparator_testbench_verilog();                          // 2
    reg [1:0] A, B;                                             // 3
    wire struct_out;                                            // 4
    comparator_greater_than_structural U1(A, B, struct_out);    // 5
    initial                                                     // 6
    begin                                                       // 7
        A = 2'b10;                                              // 8
        B = 2'b00;                                              // 9
        #10; // means delay 10 time units                       // 10
        B = 2'b01;                                              // 11
        #10;                                                    // 12
        B = 2'b10;                                              // 13
        #10;                                                    // 14
        B = 2'b11;                                              // 15
    end                                                         // 16
endmodule                                                       // 17
