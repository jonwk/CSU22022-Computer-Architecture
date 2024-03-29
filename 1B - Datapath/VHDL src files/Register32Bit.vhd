
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity reg32 is
    port ( D : in std_logic_vector(31 downto 0);
            load: in std_logic_vector(1 downto 0);
            Clk : in std_logic;
            Q : out std_logic_vector(31 downto 0));
end reg32;

architecture Behavioral of reg32 is
begin
process(Clk)
begin
    if (rising_edge(Clk)) then
        if load = "11" then
            Q<=D after 5 ns;
        end if;
    end if;
end process;
end Behavioral;
