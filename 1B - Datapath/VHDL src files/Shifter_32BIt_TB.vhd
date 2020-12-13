library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Shifter_32Bit_TB IS
END Shifter_32Bit_TB;
 
ARCHITECTURE behavior OF Shifter_32Bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shifter_32Bit
    PORT(
         B : IN  std_logic_vector(31 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         IR : IN  std_logic;
         IL : IN  std_logic;
         H : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal IR : std_logic := '0';
   signal IL : std_logic := '0';

    --Outputs
   signal H : std_logic_vector(31 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Shifter_32Bit PORT MAP (
          B => B,
          S => S,
          IR => IR,
          IL => IL,
          H => H
        );

   -- Stimulus process
   stim_proc: process
   begin
    -- B pass through i.e no change
      B <= x"ffffffff";
        S(0) <= '0';
        S(1) <= '0';
        wait for 100ns;
        
        -- B right shift <<
        B <= x"ffffffff";
        S(0) <= '1';
        S(1) <= '0';
        wait for 100ns;
        
        -- B left shift >>
        B <= x"0000000f";
        S(0) <= '0';
        S(1) <= '1';
        wait for 100ns;
        
        -- B right shift with input on IR
        B <= x"0000000f";
        S(0) <= '1';
        S(1) <= '0';
        IL <= '0';
        IR <= '1';
        wait for 100ns;
        
        -- B left shift with input on IL
        B <= x"0000000f";
        S(0) <= '0';
        S(1) <= '1';
        IL <= '1';
        IR <= '0';
        wait for 100ns;

        IL <= '0';
        IR <= '0';
        
        
        wait;
   end process;

END;
