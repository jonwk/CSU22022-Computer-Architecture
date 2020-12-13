library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Function_Unit_TB IS
END Function_Unit_TB;
 
ARCHITECTURE behavior OF Function_Unit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Function_Unit
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         FSel : IN  std_logic_vector(4 downto 0);
         C : OUT  std_logic;
         V : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic;
         F : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal FSel : std_logic_vector(4 downto 0) := (others => '0');

    --Outputs
   signal C : std_logic;
   signal V : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
   signal F : std_logic_vector(31 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Function_Unit PORT MAP (
          A => A,
          B => B,
          FSel => FSel,
          C => C,
          V => V,
          N => N,
          Z => Z,
          F => F
        );

   -- Stimulus process
   stim_proc: process
   begin
        -- TRANSFER A
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00000";
        wait for 65ns; -- F = 0000 0001
        
        -- INCREMENT
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00001";
        wait for 65ns; -- F = 0000 0010
        
        -- ADD
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00010";
        wait for 65ns; -- F = 0000 0011
        
        -- ADD WITH CARRY
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00011";
        wait for 65ns; -- F = 0000 0100
        
        -- ADD WITH NOT B
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00100";
        wait for 65ns; -- F = 1111 1110
        
        -- SUBTRACT
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00101";
        wait for 65ns; -- F = 1111 1111
        
        -- DECREMENT
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00110";
        wait for 65ns; -- F = 0000 0000
        
        -- TRANSFER A
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "00111";
        wait for 65ns; -- F = 0000 0001
        
        -- AND
        
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "01000";
        wait for 65ns; -- F = 0000 0000
        
        -- OR
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "01010";
        wait for 65ns; -- F = 0000 0011
        
        -- XOR
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "01100";
        wait for 65ns; -- F = 0000 0011
        
        -- NOT
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "01110";
        wait for 65ns; -- F = 1111 1110
        
        -- TRANSFER B
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "10000";
        wait for 65ns; -- F = 0000 0010
        
        -- SHIFT RIGHT (also displays carry)
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "10100";
        wait for 65ns; -- F = 0000 0001
        
        -- SHIFT LEFT (also displays carry)
        A <= x"00000001";
        B <= x"00000002";
        FSel <= "11000";
        wait for 65ns; -- F = 0000 0100
   end process;

END;
