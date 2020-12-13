library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2_32bit is
    port (  In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic;
            Z : out std_logic_vector(31 downto 0));
end mux2_32bit;

architecture Behavioral of mux2_32bit is
begin
    process (s,In0,In1)
		begin
		case  s is
			when '0' => Z <= In0;
			when '1' => Z <= In1;
			when others => Z <= "00000000000000000000000000000000";
		end case;
	end process;
end Behavioral;