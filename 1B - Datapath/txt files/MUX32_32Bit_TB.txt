library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MUX32_32Bit_TB IS
END MUX32_32Bit_TB;
 
ARCHITECTURE behavior OF MUX32_32Bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_32_32Bit
    PORT(  In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31 : in std_logic_vector(31 downto 0);
            S0, S1, S2, S3, S4 : in std_logic;
            Z : out std_logic_vector(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31 : std_logic_vector(31 downto 0) := (others => '0');
   signal S0, S1, S2, S3, S4 : STD_LOGIC:= '0';
 	--Outputs
   signal Z : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_32_32Bit PORT MAP (
          In0 => In0,
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
          In30 => In30,
          In31 => In31,
          
          S0 => S0,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          S4 => S4,
          Z => Z );
		  
   -- Stimulus process
   stim_proc: process
   begin		
--      wait for 10ns;1930 3445
		In0 <= x"11111111";
		In1 <= x"22222222";
		In2 <= x"33333333";
		In3 <= x"44444444";
		In4 <= x"55555555";
		In5 <= x"66666666";
		In6 <= x"77777777";
		In7 <= x"88888888";
		In8 <= x"99999999";
		In9 <= x"10101010";
		In10 <= x"11001100";
		In11 <= x"12121212";
		In12 <= x"13131313";
		In13 <= x"14141414";
		In14 <= x"15151515";
		In15 <= x"16161616";
		In16 <= x"17171717";
		In17 <= x"18181818";
		In18 <= x"19191919";
		In19 <= x"20202020";
		In20 <= x"21212121";
		In21 <= x"22002200";
		In22 <= x"23232323";
		In23 <= x"24242424";
		In24 <= x"25252525";
		In25 <= x"26262626";
		In26 <= x"27272727";
		In27 <= x"28282828";
		In28 <= x"29292929";
		In29 <= x"30303030";
		In30 <= x"31313131";
		In31 <= x"32323232";
		
		
		wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
       
--      - 00001
       wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';
       
--      - 00010 
       wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '0';
       
--      - 00011
       wait for 31ns; 
       S0 <= '0';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';
       
--      - 00100 
       wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
       
 --     - 00101
       wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 00110
       wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
       
--      - 00111
        wait for 31ns;
       S0 <= '0';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';

--      - 01000
       wait for 31ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
      
--      - 01001 
       wait for 31ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';
       
--      - 01010 
       wait for 31ns; 
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '1';
       S4 <= '0';
       
--      - 01011
       wait for 31ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';
       
--      - 01100 
       wait for 31ns;  
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
       
--      - 01101 
       wait for 31ns; 
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 01110   
       wait for 31ns;
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
       
 --     - 01111
       wait for 31ns;   
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';
       
--      - 10000
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
       
--     - 10001 
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';

--      - 10010
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '0';
      
--      - 10011 
       wait for 31ns; 
       S0 <= '1';
       S1 <= '0';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';
       
--      - 10100 
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
       
--     - 10101
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 10110
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
       
--       - 10111
       wait for 31ns;
       S0 <= '1';
       S1 <= '0';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';
       
--      - 11000
       wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '0';
       
 --    - 11001
        wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3 <= '0';
       S4 <= '1';
       
--      - 11010
       wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3<= '1';
       S4 <= '0';
       
--     - 11011 
       wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '0';
       S3 <= '1';
       S4 <= '1';

--      - 11100
       wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '0';
      
--      - 11101
       wait for 31ns;   
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '0';
       S4 <= '1';
       
--      - 11110 
       wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '0';
      
--      - 11111
       wait for 31ns;
       S0 <= '1';
       S1 <= '1';
       S2 <= '1';
       S3 <= '1';
       S4 <= '1';
		
   end process;

END;
