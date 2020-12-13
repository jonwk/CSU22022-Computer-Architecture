library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY MUX3_1Bit_TB IS
END MUX3_1Bit_TB;
 
ARCHITECTURE behavior OF MUX3_1Bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_3_1Bit
    Port(
        In0, In1, In2 : in STD_LOGIC;
        S0, S1 : in STD_LOGIC;
        Z : out STD_LOGIC
    );
    END COMPONENT;
    

   --Inputs
   signal S0, S1 : std_logic := '0';
   signal In0, In1, In2 : std_logic := '0';

 	--Outputs
   signal Z : std_logic := '0';
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_3_1Bit PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          S0 => S0,
          S1 => S1, 
          Z => Z
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100ns;
		In0 <= '1';
		In1 <= '0';
		In2 <= '1';
		
		wait for 100ns;
		S0 <= '0';
		S1 <= '0';
		
		wait for 100ns;
		S0 <= '0';
		S1 <= '1';
		
		wait for 100ns;
		S0 <= '1';
		S1 <= '0';
		
		wait for 100ns;
		S0 <= '1';
		S1 <= '1';
		
		wait for 100ns;
		In0 <= '0';
		In1 <= '1';
		In2 <= '0';
		
		wait for 100ns;
		S0 <= '0';
		S1 <= '0';
		
		wait for 100ns;
		S0 <= '0';
		S1 <= '1';
		
		wait for 100ns;
		S0 <= '1';
		S1 <= '0';
		
		wait for 100ns;
		S0 <= '1';
		S1 <= '1';
		
   end process;

END;
