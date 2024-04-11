// Two-bit greater-than circuit: Conditional model                  // 1
// See Figure 2-27 for logic diagram                                // 2
module comparator_greater_than_conditional(A, B, A_greater_than_B); // 3
    input [1:0] A, B;                                               // 4
    output A_greater_than_B;                                        // 5
    assign A_greater_than_B = (A == 2'b00) ? 1'b0 :                 // 6
        (A == 2'b01) ? ~(B[1] | B[0]) :                             // 7
        (A == 2'b10) ? ~B[1] :                                      // 8
        (A == 2'b11) ? ~(B[1] & B[0]):                              // 9
        1'bx;                                                       // 10
endmodule                                                           // 11
