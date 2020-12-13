library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_3_1Bit is
    Port(
    In0, In1, In2 : in STD_LOGIC;
    S0, S1 : in STD_LOGIC;
    Z : out STD_LOGIC
    );
end MUX_3_1Bit;

architecture Behavioral of MUX_3_1Bit is
begin
    Z <= In0 after 1ns when S0 = '0' and S1 = '0' else
        In1 after 1ns when S0 = '0' and S1 = '1' else
        In2 after 1ns when S0 = '1' and S1 = '0' else
        '0' after 1ns;
end Behavioral;
