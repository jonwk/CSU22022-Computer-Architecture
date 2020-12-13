library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Register_File_TB IS
END Register_File_TB;
 
ARCHITECTURE behavior OF Register_File_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_File
    PORT(   add_A, add_B, add_D : in std_logic_vector(4 downto 0);
            Clk : in std_logic;
            load : in std_logic;
            D_out_data : in std_logic_vector(31 downto 0);
            A_out, B_out: out std_logic_vector(31 downto 0));
            
            END COMPONENT;
   --Inputs
    signal add_A, add_B, add_D : std_logic_vector(4 downto 0):= (others => '0'); 
    signal Clk : std_logic := '0';
    signal load :  std_logic := '0';
    signal D_out_data :  std_logic_vector(31 downto 0):= (others => '0');

        --Outputs
    signal A_out, B_out: std_logic_vector(31 downto 0);
--     constant Clk_period : time := 10 ns;
     
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
uut: Register_File PORT MAP ( 
   add_A => add_A,
   add_B => add_B,
   add_D => add_D,
   Clk => Clk,
   load => load,
   D_out_data => D_out_data,
   A_out => A_out,
   B_out => B_out);
--     

Clk <= not Clk after 5ns; 

--   CLK_process :process
--   begin
--        CLK <= '0';
--        wait for CLK_period/2;
--        CLK <= '1';
--        wait for CLK_period/2;
--   end process;

   stim_proc: process
   begin		   
        
       D_out_data <= x"ffffffff";
       load <= '1';
                
       add_D <= "00000";
       add_A <="00000";
       add_B <="00000";
       
       
       wait for 200 ns;
        
       D_out_data <= x"AAAAAAAA";
       load <= '1';
                
       add_D <= "00001";
       add_A <="00001";
       add_B <="00001";
       
       wait for 200 ns;

       D_out_data <= x"BBBBBBBB";
       load <= '1';
                
       add_D <= "10001";
       add_A <="10001";
       add_B <="10001";
       
       wait for 200 ns;
       
       D_out_data <= x"CCCCCCCC";
       load <= '1';
                
       add_D <= "10101";
       add_A <="10101";
       add_B <="10101";
       
       wait for 200 ns;
       
       D_out_data <= x"11223344";
       load <= '1';
                
       add_D <= "00001";
       add_A <="10001";
       add_B <="10001";
       
       wait for 200 ns;
       
--      wait;

   end process;

END;
