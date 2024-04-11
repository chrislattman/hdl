-- Positive-Edge-Triggered D Flip-Flop with Reset:
-- VHDL Process Description
library ieee;
use ieee.std_logic_1164.all;
entity dff is
    port(
        CLK, RESET, D: in std_logic;
        Q: out std_logic
    );
end dff;

architecture pet_pr of dff is
-- Implements positive-edge-triggered bit state storage
-- with asynchronous reset.
begin
process (CLK, RESET)
    begin
        if (RESET = '1') then
            Q <= '0';
        elsif (CLK'event and CLK = '1') then
            Q <= D;
        end if;
    end process;
end pet_pr;
