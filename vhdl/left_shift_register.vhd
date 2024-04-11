-- 4-Bit Left Shift Register with Reset
library ieee;
use ieee.std_logic_1164.all;

entity srg_4_r is
    port(
        CLK, RESET, SI: in std_logic;
        Q: out std_logic_vector(3 downto 0);
        SO: out std_logic
    );
end srg_4_r;

architecture behavioral of srg_4_r is
signal shift: std_logic_vector(3 downto 0);
begin
process (RESET, CLK)
    begin
        if (RESET = '1') then
            shift <= "0000";
        elsif (CLK’event and (CLK = '1')) then
            shift <= shift(2 downto 0) & SI;
        end if;
    end process;
    Q <= shift;
    SO <= shift(3);
end behavioral;
