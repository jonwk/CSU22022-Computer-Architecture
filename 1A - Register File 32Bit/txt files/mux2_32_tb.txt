
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux2_32_tb IS
END mux2_32_tb;
 
ARCHITECTURE behavior OF mux2_32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_32bit
    PORT(
            In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic;
            Z : out std_logic_vector(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(31 downto 0):= (others => '0');
   signal In1 : std_logic_vector(31 downto 0):= (others => '0');
   signal s :  std_logic := '0';
--   signal Clk : std_logic := '0';

         
 	--Outputs
   signal  Z : std_logic_vector(31 downto 0):= (others => '0');

   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
uut: mux2_32bit PORT MAP (
   In0 => In0,
   In1 => In1,
   s => s,
   Z => Z
        );


--   Clk <= not Clk after 5ns;    
   stim_proc: process 
   begin        
       In0 <= "00010001000100010001000100010001";
       In1 <= "10001000100010001000100010001000";
       wait for 10 ns;      
       s <= '0'; 
       wait for 10 ns;  
       s <= '1'; 
   end process;

END;
