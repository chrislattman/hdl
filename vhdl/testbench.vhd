-- Testbench for VHDL two-bit greater-than comparator               -- 1
library ieee;                                                       -- 2
use ieee.std_logic_1164.all, ieee.std_logic_unsigned.all;           -- 3
                                                                    -- 4
entity greater_testbench is                                         -- 5
end greater_testbench;                                              -- 6
                                                                    -- 7
architecture testbench of greater_testbench is                      -- 8
signal A, B: std_logic_vector (1 downto 0);                         -- 9
signal struct_out: std_logic;                                       -- 10
    component comparator_greater_than_structural is                 -- 11
    port (
        A: in std_logic_vector(1 downto 0);                         -- 12
        B: in std_logic_vector(1 downto 0);                         -- 13
        A_greater_than_B: out std_logic
    );                                                              -- 14
    end component;                                                  -- 15
begin                                                               -- 16
u1: comparator_greater_than_structural port map(A,B, struct_out);   -- 17
tb: process                                                         -- 18
begin                                                               -- 19
    A <= "10";                                                      -- 20
    B <= "00";                                                      -- 21
    wait for 10 ns;                                                 -- 22
    B <= "01";                                                      -- 23
    wait for 10 ns;                                                 -- 24
    B <= "10";                                                      -- 25
    wait for 10 ns;                                                 -- 26
    B <= "11";                                                      -- 27
    wait; -- halt the process                                       -- 28
end process;                                                        -- 29
end testbench;                                                      -- 30
