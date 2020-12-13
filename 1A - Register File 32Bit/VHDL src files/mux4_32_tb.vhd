
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux4_32_tb IS
END mux4_32_tb;
 
ARCHITECTURE behavior OF mux4_32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4_32bit
    PORT(   In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31 : in std_logic_vector(31 downto 0);
            S0, S1, S2, S3, S4 : in std_logic;
            Z : out std_logic_vector(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31 : std_logic_vector(31 downto 0):= (others => '0');
   signal S0, S1, S2, S3, S4 : std_logic := '0';
  
 	--Outputs
   signal Z : std_logic_vector(31 downto 0):= (others => '0');
   
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
uut: mux4_32bit PORT MAP( In0 => In0,
                       In1 => In1,
                       In2 => In2,
                       In3 => In3,
                       In4 => In4,
                       In5 => In5,
                       In6 => In6,
                       In7 => In7,
                       In8 => In8,
                       In9 => In9,
                       In10 => In10,
                       In11 => In11,
                       In12 => In12,
                       In13 => In13,
                       In14 => In14,
                       In15 => In15,
                       In16 => In16,
                       In17 => In17,
                       In18 => In18,
                       In19 => In19,
                       In20 => In20,
                       In21 => In21,
                       In22 => In22,
                       In23 => In23,
                       In24 => In24,
                       In25 => In25,
                       In26 => In26,
                       In27 => In27,
                       In28 => In28,
                       In29 => In29,
                       In30 => In20,
                       In31 => In31,
                       S0 => S0,
                       S1 => S1,
                       S2 => S2,
                       S3 => S3,
                       S4 => S4,
                       Z => Z );


   stim_proc: process
   begin
       
          --      - 00000  
          
       In0 <= "10000000100000001000000010000000";
       In1 <= "10001000100010001000100010001000";
       In2 <= "10000000100000001000000010000000";
       In3 <= "10001000100010001000100010001000";
       In4 <= "10000000100000001000000010000000";
       In5 <= "10001000100010001000100010001000";
       In6 <= "10000000100000001000000010000000";
       In7 <= "10001000100010001000100010001000";
       In8 <= "10000000100000001000000010000000";
       In9 <= "10001000100010001000100010001000";
       In10 <= "10000000100000001000000010000000";
       In11 <= "10001000100010001000100010001000";
       In12 <= "10000000100000001000000010000000";
       In13 <= "10001000100010001000100010001000";
       In14 <= "10000000100000001000000010000000";
       In15 <= "10001000100010001000100010001000";
       In16 <= "10000000100000001000000010000000";
       In17 <= "10001000100010001000100010001000";
       In18 <= "10000000100000001000000010000000";
       In19 <= "10001000100010001000100010001000";
       In20 <= "10000000100000001000000010000000";
       In21 <= "10001000100010001000100010001000";
       In22 <= "10000000100000001000000010000000";
       In23 <= "10001000100010001000100010001000";
       In24 <= "10000000100000001000000010000000";
       In25 <= "10001000100010001000100010001000";
       In26 <= "10000000100000001000000010000000";
       In27 <= "10001000100010001000100010001000";
       In28 <= "10000000100000001000000010000000";
       In29 <= "10001000100010001000100010001000";
       In30 <= "10000000100000001000000010000000"; 
       In31 <= "10001000100010001000100010001000";
       
       wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
       
--      - 00001
       wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';
       
--      - 00010 
       wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '0';
       
--      - 00011
       wait for 10 ns; 
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';
       
--      - 00100 
       wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
       
 --     - 00101
       wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 00110
       wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
       
--      - 00111
        wait for 10 ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';

--      - 01000
       wait for 10 ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
      
--      - 01001 
       wait for 10 ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';
       
--      - 01010 
       wait for 10 ns; 
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '1';
       S4 <= '0';
       
--      - 01011
       wait for 10 ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';
       
--      - 01100 
       wait for 10 ns;  
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
       
--      - 01101 
       wait for 10 ns; 
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 01110   
       wait for 10 ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
       
 --     - 01111
       wait for 10 ns;   
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';
       
--      - 10000
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
       
--     - 10001 
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';

--      - 10010
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '0';
      
--      - 10011 
       wait for 10 ns; 
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';
       
--      - 10100 
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
       
--     - 10101
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 10110
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
       
--       - 10111
       wait for 10 ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';
       
--      - 11000
       wait for 10 ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
       
 --    - 11001
        wait for 10 ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';
       
--      - 11010
       wait for 10 ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3<= '1';
       S4 <= '0';
       
--     - 11011 
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';

--      - 11100
       wait for 10 ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
      
--      - 11101
       wait for 10 ns;   
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 11110 
       wait for 10 ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
      
--      - 11111
       wait for 10 ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';       


   end process;

END;