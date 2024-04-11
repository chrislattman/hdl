-- Two-bit greater-than circuit : Conditional VHDL Description      -- 1
-- using when-else (See Figure 2-27 for logic diagram)              -- 2
library ieee;                                                       -- 3
use ieee.std_logic_1164.all;                                        -- 4
                                                                    -- 5
entity comparator_greater_than_behavioral is                        -- 6
    port (
        A: in std_logic_vector(1 downto 0);                         -- 7
        B: in std_logic_vector(1 downto 0);                         -- 8
        A_greater_than_B: out std_logic
    );                                                              -- 9
end comparator_greater_than_behavioral;                             -- 10
                                                                    -- 11
architecture when_else of comparator_greater_than_behavioral is     -- 12
begin                                                               -- 13
    A_greater_than_B <= '1' when (A > B) else '0';                  -- 15
end when_else;                                                      -- 16
