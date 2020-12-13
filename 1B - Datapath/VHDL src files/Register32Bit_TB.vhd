LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY reg32_tb IS
END reg32_tb;
 
ARCHITECTURE behavior OF reg32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg32
    PORT(   D : in std_logic_vector(31 downto 0);
            load : in std_logic_vector(1 downto 0); 
            Clk : in std_logic;
            Q : out std_logic_vector(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(31 downto 0):= (others => '0');
   signal load : std_logic_vector(1 downto 0):= (others => '0');
   signal Clk : std_logic := '0';
            

 	--Outputs
   signal Q : std_logic_vector(31 downto 0);
   
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
uut: reg32 PORT MAP (
   D => D,
   load => load,
   Clk => Clk,
   Q => Q
        );


   Clk <= not Clk after 5ns;    
   stim_proc: process
   begin
       
        wait for 200 ns;     
        load(0) <= '1';
        load(1) <= '1';
        D <= x"ABCDEFFF";
 
        
        wait for 200 ns;
        load(0) <= '0';
        load(1) <= '0';
        D <= x"11111111";
                
        
        wait for 200 ns;  
        load(0) <= '1';
        load(1) <= '1';
        D <= x"19303445";  
         
       
        wait for 100 ns;  
        load(0) <= '1';
        load(1) <= '1';
        D <= x"ffffffff"; 
   end process;

END;
