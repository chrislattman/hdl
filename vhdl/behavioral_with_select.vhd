-- Two-bit greater-than circuit : Conditional VHDL Description      -- 1
-- using with-select (See Figure 2-27 for logic diagram)            -- 2
library ieee;                                                       -- 3
use ieee.std_logic_1164.all, ieee.std_logic_unsigned.all;           -- 4
                                                                    -- 5
entity comparator_greater_than_behavioral2 is                       -- 6
    port (
        A: in std_logic_vector(1 downto 0);                         -- 7
        B: in std_logic_vector(1 downto 0);                         -- 8
        A_greater_than_B: out std_logic
    );                                                              -- 9
end comparator_greater_than_behavioral2;                            -- 10
                                                                    -- 11
architecture with_select of comparator_greater_than_behavioral2 is  -- 12
begin                                                               -- 13
    with A select                                                   -- 14
    A_greater_than_B <= '0' when "00",                              -- 15 when A = "00" set A_greater_than_B to 0
        B(0) nor B(1) when "01",                                    -- 16 when A = "01" set A_greater_than_B to NOR(B0, B1) (e.g. NOR(0, 0) = 1)
        not B(1) when "10",                                         -- 17 when A = "10" set A_greater_than_B to ~B(1)
        B(0) nand B(1) when "11",                                   -- 18 when A = "11" set A_greater_than_B to NAND(B(0), B(1)) (e.g. NAND(1, 1) = 0)
        'X' when others;                                            -- 19 when A is undefined
end with_select;                                                    -- 20
