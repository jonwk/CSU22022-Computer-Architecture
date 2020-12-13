library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MUX4_32Bit_TB IS
END MUX4_32Bit_TB;
 
ARCHITECTURE behavior OF MUX4_32Bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_4_32Bit
    PORT(  In0 : in  STD_LOGIC_VECTOR(31 downto 0);
           In1 : in  STD_LOGIC_VECTOR(31 downto 0);
           In2 : in  STD_LOGIC_VECTOR(31 downto 0);
           In3 : in  STD_LOGIC_VECTOR(31 downto 0);
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           Z : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');
   signal In2 : std_logic_vector(31 downto 0) := (others => '0');
   signal In3 : std_logic_vector(31 downto 0) := (others => '0');
   signal S : STD_LOGIC_VECTOR(1 downto 0):= (others => '0');
 	--Outputs
   signal Z : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_4_32Bit PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          S => S,
          Z => Z
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
--      wait for 10ns;
		In0 <= x"19303445";
		In1 <= x"29303445";
		In2 <= x"39303445";
		In3 <= x"49303445";
		
		
		S(0) <= '0';
		S(1) <= '0';
		wait for 200ns;
		
		S(0) <= '0';
		S(1) <= '1';
		wait for 200ns;
		
		S(0) <= '1';
		S(1) <= '0';
		wait for 200ns;
		
		S(0) <= '1';
		S(1) <= '1';
		wait for 200ns;
		
   end process;

END;
