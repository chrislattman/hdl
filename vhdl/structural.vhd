-- Two-bit greater-than circuit : Structural VHDL Description           -- 1
-- (See Figure 2-27 for logic diagram)                                  -- 2
library ieee, lcdf_vhdl;                                                -- 3
use ieee.std_logic_1164.all, lcdf_vhdl.func_prims.all;                  -- 4
                                                                        -- 5
entity comparator_greater_than_structural is                            -- 6
    port (
        A: in std_logic_vector(1 downto 0);                             -- 7
        B: in std_logic_vector(1 downto 0);                             -- 8
        A_greater_than_B: out std_logic
    );                                                                  -- 9
end comparator_greater_than_structural;                                 -- 10
                                                                        -- 11
architecture structural of comparator_greater_than_structural is        -- 12
    component NOT1                                                      -- 14
        port(
            in1: in std_logic;                                          -- 15
            out1: out std_logic
        );                                                              -- 16
    end component;                                                      -- 17
    component AND2                                                      -- 18
        port(
            in1, in2: in std_logic;                                     -- 19
            out1: out std_logic
        );                                                              -- 20
    end component;                                                      -- 21
    component AND3                                                      -- 22
        port(
            in1, in2, in3: in std_logic;                                -- 23
            out1: out std_logic
        );                                                              -- 24
    end component;                                                      -- 25
    component OR3                                                       -- 26
        port(
            in1, in2, in3 : in std_logic;                               -- 27
            out1: out std_logic
        );                                                              -- 28
    end component;                                                      -- 29
signal B1_n, B0_n, and0_out, and1_out, and2_out: std_logic;         -- 30
begin                                                                   -- 31
    inv_0: NOT1 port map (B(0), B0_n);                                -- 32
    inv_1: NOT1 port map (B(1), B1_n);                                -- 33
    and_0: AND2 port map (A(1),B1_n, and0_out);                       -- 34
    and_1: AND3 port map (A(1),A(0),B0_n, and1_out);                  -- 35
    and_2: AND3 port map (A(1),B1_n,B0_n, and2_out);                -- 36
    or0: OR3 port map (and0_out,and1_out,and2_out, A_greater_than_B);   -- 37
end structural;

-- VHDL names are case-insensitive
