library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux4_32bit is
    Port ( In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31 : in std_logic_vector(31 downto 0);
            S0, S1, S2, S3, S4 : in std_logic;
            Z : out std_logic_vector(31 downto 0));
end mux4_32bit;

architecture Behavioral of mux4_32bit is
begin
Z <= In0 after 5 ns when S0='0' and S1='0' and S2='0' and S3='0' and S4='0'  else
    In1 after 5 ns when S0='0' and S1='0' and S2='0' and S3='0' and S4='1'  else
    In2 after 5 ns when S0='0' and S1='0' and S2='0' and S3='1' and S4='0'  else
    In3 after 5 ns when S0='0' and S1='0' and S2='0' and S3='1' and S4='1'  else
    In4 after 5 ns when S0='0' and S1='0' and S2='1' and S3='0' and S4='0'  else
    In5 after 5 ns when S0='0' and S1='0' and S2='1' and S3='0' and S4='1'  else
    In6 after 5 ns when S0='0' and S1='0' and S2='1' and S3='1' and S4='0'  else
    In7 after 5 ns when S0='0' and S1='0' and S2='1' and S3='1' and S4='1'  else
    In8 after 5 ns when S0='0' and S1='1' and S2='0' and S3='0' and S4='0'  else
    In9 after 5 ns when S0='0' and S1='1' and S2='0' and S3='0' and S4='1'  else
    In10 after 5 ns when S0='0' and S1='1' and S2='0' and S3='1' and S4='0'  else
    In11 after 5 ns when S0='0' and S1='1' and S2='0' and S3='1' and S4='1'  else
    In12 after 5 ns when S0='0' and S1='1' and S2='1' and S3='0' and S4='0'  else
    In13 after 5 ns when S0='0' and S1='1' and S2='1' and S3='0' and S4='1'  else
    In14 after 5 ns when S0='0' and S1='1' and S2='1' and S3='1' and S4='0'  else
    In15 after 5 ns when S0='0' and S1='1' and S2='1' and S3='1' and S4='1'  else
    In16 after 5 ns when S0='1' and S1='0' and S2='0' and S3='0' and S4='0'  else
    In17 after 5 ns when S0='1' and S1='0' and S2='0' and S3='0' and S4='1'  else
    In18 after 5 ns when S0='1' and S1='0' and S2='0' and S3='1' and S4='0'  else
    In19 after 5 ns when S0='1' and S1='0' and S2='0' and S3='1' and S4='1'  else
    In20 after 5 ns when S0='1' and S1='0' and S2='1' and S3='0' and S4='0'  else
    In21 after 5 ns when S0='1' and S1='0' and S2='1' and S3='0' and S4='1'  else
    In22 after 5 ns when S0='1' and S1='0' and S2='1' and S3='1' and S4='0'  else
    In23 after 5 ns when S0='1' and S1='0' and S2='1' and S3='1' and S4='1'  else
    In24 after 5 ns when S0='1' and S1='1' and S2='0' and S3='0' and S4='0'  else
    In25 after 5 ns when S0='1' and S1='1' and S2='0' and S3='0' and S4='1'  else
    In26 after 5 ns when S0='1' and S1='1' and S2='0' and S3='1' and S4='0'  else
    In27 after 5 ns when S0='1' and S1='1' and S2='0' and S3='1' and S4='1'  else
    In28 after 5 ns when S0='1' and S1='1' and S2='1' and S3='0' and S4='0'  else
    In29 after 5 ns when S0='1' and S1='1' and S2='1' and S3='0' and S4='1'  else
    In30 after 5 ns when S0='1' and S1='1' and S2='1' and S3='1' and S4='0'  else
    In31 after 5 ns when S0='1' and S1='1' and S2='1' and S3='1' and S4='1'  else
    "00000000000000000000000000000000" after 5 ns;
end Behavioral;