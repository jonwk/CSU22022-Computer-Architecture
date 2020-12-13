library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY MUX2_32Bit_TB IS
END MUX2_32Bit_TB;
 
ARCHITECTURE behavior OF MUX2_32Bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_2_32Bit
    PORT(
         In0 : IN  std_logic_vector(31 downto 0);
         In1 : IN  std_logic_vector(31 downto 0);
         s : IN  std_logic;
         Z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic := '0';
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_2_32Bit PORT MAP (
          In0 => In0,
          In1 => In1,
          s => s,
          Z => Z
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
--      wait for 10ns;
		In0 <= x"19303445";
		In1 <= x"34451930";
		
		wait for 10ns;
		s <= '1';
		
		wait for 10ns;
		s <= '0';
		
   end process;

END;
