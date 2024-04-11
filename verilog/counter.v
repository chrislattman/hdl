// 4-bit Binary Counter with Reset
module count_4_r_v(CLK, RESET, EN, Q, CO);
    input CLK, RESET, EN;
    output [3:0] Q;
    output CO;
    reg [3:0] Q;
    assign CO = (count == 4'b1111 && EN == 1’b1) ? 1 : 0;

always @(posedge CLK or posedge RESET)
begin
    if (RESET)
        Q <= 4'b0000;
    else if (EN)
        Q <= Q + 4'b0001;
end
endmodule
