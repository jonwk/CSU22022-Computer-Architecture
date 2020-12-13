library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity B_Input_Logic_TB is
--  Port ( );
end B_Input_Logic_TB;

architecture Behavioral of B_Input_Logic_TB is

COMPONENT B_Input_Logic
    PORT(
         B : in  STD_LOGIC_VECTOR(31 downto 0);
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           Y : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

    --Outputs
   signal Y : std_logic_vector(31 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: B_Input_Logic PORT MAP (
          B => B,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin        
      B <= x"F0F0F0F0";
        
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
