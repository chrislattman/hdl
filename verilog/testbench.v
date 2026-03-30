// Testbench for Verilog two-bit greater-than comparator        // 1
// This is used in behavioral simulation                        // 2
module comparator_testbench_verilog();                          // 3
    reg [1:0] A, B;                                             // 4
    wire struct_out;                                            // 5
    comparator_greater_than_structural U1(A, B, struct_out);    // 6

    initial begin                                               // 8
        // Newlines automatically appended                      // 9
        $display("This is a one-time message.");                // 10
        $monitor("This prints anytime A changes. A = %b", A);   // 11
        A = 2'b10;                                              // 12
        B = 2'b00;                                              // 13
        #10; // means delay 10 time units (nanoseconds)         // 14
        B = 2'b01;                                              // 15
        #10;                                                    // 16
        B = 2'b10;                                              // 17
        #10;                                                    // 18
        B = 2'b11;                                              // 19
    end // process halts by default                             // 20
endmodule                                                       // 21
