// Positive-Edge-Triggered D Flip-Flop with Reset:
// Verilog Process Description
module dff_v(CLK, RESET, D, Q);
    input CLK, RESET, D;
    output Q;
    reg Q;

always @(posedge CLK or posedge RESET)
begin
    if (RESET)
        Q <= 0;
    else
        Q <= D;
end
endmodule
