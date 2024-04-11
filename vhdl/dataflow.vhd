-- Two-bit greater-than circuit : Datalow VHDL Description      -- 1
-- (See Figure 2-27 for logic diagram)                          -- 2
library ieee;                                                   -- 3
use ieee.std_logic_1164.all;                                    -- 4
                                                                -- 5
entity comparator_greater_than_dataflow is                      -- 6
    port (
        A: in std_logic_vector(1 downto 0);                     -- 7
        B: in std_logic_vector(1 downto 0);                     -- 8
        A_greater_than_B: out std_logic
    );                                                          -- 9
end comparator_greater_than_dataflow;                           -- 10
                                                                -- 11
architecture dataflow of comparator_greater_than_dataflow is    -- 12
signal B1_n, B0_n, and0_out, and1_out, and2_out: std_logic;     -- 13
begin                                                           -- 14
    B1_n <= not B(1);                                           -- 15
    B0_n <= not B(0);                                           -- 16
    and0_out <= A(1) and B1_n;                                  -- 17
    and1_out <= A(1) and A(0) and B0_n;                         -- 18
    and2_out <= A(1) and B1_n and B0_n;                         -- 19
    A_greater_than_B <= and0_out or and1_out or and2_out;       -- 20
end dataflow;                                                   -- 21

-- assignments are not evaluated in order of appearance
-- they are evaluated in order of changes of signals
