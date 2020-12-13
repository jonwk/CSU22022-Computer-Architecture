LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY register_file_tb IS
END register_file_tb;
 
ARCHITECTURE behavior OF register_file_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(   src_s0 : in std_logic;
            src_s1 : in std_logic;
            src_s2 : in std_logic;
            src_s3 : in std_logic;
            src_s4 : in std_logic;
            
            des_A0 : in std_logic;
            des_A1 : in std_logic;
            des_A2 : in std_logic;
            des_A3 : in std_logic;
            des_A4 : in std_logic;
            
            Clk : in std_logic;
            data_src : in std_logic;
            data : in std_logic_vector(31 downto 0);
            
            reg0 : out std_logic_vector(31 downto 0);
            reg1 : out std_logic_vector(31 downto 0);
            reg2 : out std_logic_vector(31 downto 0);
            reg3 : out std_logic_vector(31 downto 0);
            reg4 : out std_logic_vector(31 downto 0);
            reg5 : out std_logic_vector(31 downto 0);
            reg6 : out std_logic_vector(31 downto 0);
            reg7 : out std_logic_vector(31 downto 0);
            reg8 : out std_logic_vector(31 downto 0);
            reg9 : out std_logic_vector(31 downto 0);
            reg10 : out std_logic_vector(31 downto 0);
            reg11 : out std_logic_vector(31 downto 0);
            reg12 : out std_logic_vector(31 downto 0);
            reg13 : out std_logic_vector(31 downto 0);
            reg14 : out std_logic_vector(31 downto 0);
            reg15 : out std_logic_vector(31 downto 0);
            reg16 : out std_logic_vector(31 downto 0);
            reg17 : out std_logic_vector(31 downto 0);
            reg18 : out std_logic_vector(31 downto 0);
            reg19 : out std_logic_vector(31 downto 0);
            reg20 : out std_logic_vector(31 downto 0);
            reg21 : out std_logic_vector(31 downto 0);
            reg22 : out std_logic_vector(31 downto 0);
            reg23 : out std_logic_vector(31 downto 0);
            reg24 : out std_logic_vector(31 downto 0);
            reg25 : out std_logic_vector(31 downto 0);
            reg26 : out std_logic_vector(31 downto 0);
            reg27 : out std_logic_vector(31 downto 0);
            reg28 : out std_logic_vector(31 downto 0);
            reg29 : out std_logic_vector(31 downto 0);
            reg30 : out std_logic_vector(31 downto 0);
            reg31 : out std_logic_vector(31 downto 0));
            
            END COMPONENT;
   --Inputs
    signal src_s0 :  std_logic;
    signal src_s1 :  std_logic;
    signal src_s2 :  std_logic;
    signal src_s3 :  std_logic;
    signal src_s4 :  std_logic;
      
    signal des_A0 :  std_logic;
    signal des_A1 :  std_logic;
    signal des_A2 :  std_logic;
    signal des_A3 :  std_logic; 
    signal des_A4 :  std_logic; 
       
    signal Clk : std_logic := '0';
    signal data_src :  std_logic;
    signal data :  std_logic_vector(31 downto 0):= (others => '0');

        --Outputs
    signal reg0 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg1 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg2 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg3 :std_logic_vector(31 downto 0) := (others => '0');
    signal reg4 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg5 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg6 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg7 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg8 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg9 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg10 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg11 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg12 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg13 :std_logic_vector(31 downto 0) := (others => '0');
    signal reg14 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg15 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg16 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg17 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg18 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg19 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg20 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg21 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg22 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg23 :std_logic_vector(31 downto 0) := (others => '0');
    signal reg24 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg25 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg26 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg27 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg28 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg29 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg30 : std_logic_vector(31 downto 0) := (others => '0');
    signal reg31 : std_logic_vector(31 downto 0) := (others => '0');

     constant Clk_period : time := 10 ns;
     
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
uut: register_file PORT MAP ( 
   src_s0 => src_s0,
   src_s1 => src_s1,
   src_s2 => src_s2,
   src_s3 => src_s3,
   src_s4 => src_s4,
   des_A0 => des_A0,
   des_A1 => des_A1,
   des_A2 => des_A2,
   des_A3 => des_A3,
   des_A4 => des_A4,
   Clk => Clk,
   data_src => data_src,
   data => data,
   reg0 => reg0,
   reg1 => reg1,
   reg2 => reg2,
   reg3 => reg3,
   reg4 => reg4,
   reg5 => reg5,
   reg6 => reg6,
   reg7 => reg7,
   reg8 => reg8,
   reg9 => reg9,
   reg10 => reg10,
   reg11 => reg11,
   reg12 => reg12,
   reg13 => reg13,
   reg14 => reg14,
   reg15 => reg15,
   reg16 => reg16,
   reg17 => reg17,
   reg18 => reg18,
   reg19 => reg19,
   reg20 => reg20,
   reg21 => reg21,
   reg22 => reg22,
   reg23 => reg23,
   reg24 => reg24,
   reg25 => reg25,
   reg26 => reg26,
   reg27 => reg27,
   reg28 => reg28,
   reg29 => reg29,
   reg30 => reg30,
   reg31 => reg31);
--      32 - 00000000000000000000000000000000
--       0 - 00000001001001101000110000010101 - 19303445
--       1 - 00000001001001101000110000010100 - 19303444
--       2 - 00000001001001101000110000010011 - 19303443
--       3 - 00000001001001101000110000010010 - 19303442
--       4 - 00000001001001101000110000010001 - 19303441
--       5 - 00000001001001101000110000010000 - 19303440
--       6 - 00000001001001101000110000001111 - 19303439
--       7 - 00000001001001101000110000001110 - 19303438
--       8 - 00000001001001101000110000001101 - 19303437
--       9 - 00000001001001101000110000001100 - 19303436
--      10 - 00000001001001101000110000001011 - 19303435
--      11 - 00000001001001101000110000001010 - 19303434
--      12 - 00000001001001101000110000001001 - 19303433
--      13 - 00000001001001101000110000001000 - 19303432
--      14 - 00000001001001101000110000000111 - 19303431
--      15 - 00000001001001101000110000000110 - 19303430
--      16 - 00000001001001101000110000000101 - 19303429
--      17 - 00000001001001101000110000000100 - 19303428
--      18 - 00000001001001101000110000000011 - 19303427
--      19 - 00000001001001101000110000000010 - 19303426
--      20 - 00000001001001101000110000000001 - 19303425
--      21 - 00000001001001101000110000000000 - 19303424
--      22 - 00000001001001101000101111111111 - 19303423
--      23 - 00000001001001101000101111111110 - 19303422
--      24 - 00000001001001101000101111111101 - 19303421
--      25 - 00000001001001101000101111111100 - 19303420
--      26 - 00000001001001101000101111111011 - 19303419
--      27 - 00000001001001101000101111111010 - 19303418
--      28 - 00000001001001101000101111111001 - 19303417
--      29 - 00000001001001101000101111111000 - 19303416
--      30 - 00000001001001101000101111110111 - 19303415
--      31 - 00000001001001101000101111110110 - 19303414

Clk <= not Clk after 5ns; 
   stim_proc: process
   begin		   
       data_src <= '0'; 
       
--     reg0 - 00000  
       wait for 10 ns; 
       data <= "00000001001001101000110000010101";         des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '0';
       
--     reg1 - 00001
       wait for 10 ns;
       data <= "00000001001001101000110000010100";    
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg2 - 00010 
       wait for 10 ns;
       data <= "00000001001001101000110000010011";    
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '0';
       
--     reg3 - 00011
       wait for 10 ns; 
       data <= "00000001001001101000110000010010";    
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '1';
       
--     reg4 - 00100 
       wait for 10 ns;
       data <= "00000001001001101000110000010001";
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '0';
       
 --    reg5 - 00101
       wait for 10 ns;
       data <= "00000001001001101000110000010000";
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg6 - 00110
       wait for 10 ns;
       data <= "00000001001001101000110000001111";
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '0';
       
--     reg7 - 00111
        wait for 10 ns;
       data <= "00000001001001101000110000001110";
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '1';

--     reg8 - 01000
       wait for 10 ns;
       data <= "00000001001001101000110000001101";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '0';
      
--     reg9 - 01001 
       wait for 10 ns;
       data <= "00000001001001101000110000001100";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg10 - 01010 
       wait for 10 ns; 
       data <= "00000001001001101000110000001011";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '0';
       
--     reg11 - 01011
       wait for 10 ns;
       data <= "00000001001001101000110000001010";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '1';
       
--     reg12 - 01100 
       wait for 10 ns;  
       data <= "00000001001001101000110000001001";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '0';
       
--     reg13 - 01101 
       wait for 10 ns; 
       data <= "00000001001001101000110000001000";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg14 - 01110   
       wait for 10 ns;
       data <= "00000001001001101000110000000111";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '0';
       
 --    reg15 - 01111
        wait for 10 ns;   
       data <= "00000001001001101000110000000110";
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '1';
       
--     reg16 - 10000
       wait for 10 ns;
       data <= "00000001001001101000110000000101";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '0';
       
--     reg17 - 10001 
       wait for 10 ns;
       data <= "00000001001001101000110000000100";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '1';

--     reg18 - 10010
       wait for 10 ns;
       data <= "00000001001001101000110000000011";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '0';
      
--     reg19 - 10011 
       wait for 10 ns; 
       data <= "00000001001001101000110000000010";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '1';
       
--     reg20 - 10100 
       wait for 10 ns;
       data <= "00000001001001101000110000000001";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '0';
       
--     reg21 - 10101
       wait for 10 ns;
       data <= "00000001001001101000110000000000";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg22 - 10110
       wait for 10 ns;
       data <= "00000001001001101000101111111111";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '0';
       
--     reg23  - 10111
       wait for 10 ns;
       data <= "00000001001001101000101111111110";
       des_A0 <= '1';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '1';
       
--     reg24 - 11000
       wait for 10 ns;
       data <= "00000001001001101000101111111101";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '0';
       
 --    reg25 - 11001
        wait for 10 ns;
       data <= "00000001001001101000101111111100";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg26 - 11010
       wait for 10 ns;
       data <= "00000001001001101000101111111011";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '0';
       
--     reg27 - 11011 
       wait for 10 ns;
       data <= "00000001001001101000101111111010";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '1';

--     reg28 - 11100
       wait for 10 ns;
       data <= "00000001001001101000101111111001";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '0';
      
--     reg29 - 11101
       wait for 10 ns;   
       data <= "00000001001001101000101111111000";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '1';
       
--     reg30 - 11110 
       wait for 10 ns;
       data <= "00000001001001101000101111110111";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '0';
       
--     reg31 - 11111
       wait for 10 ns;
       data <= "00000001001001101000101111110110";
       des_A0 <= '1';
       des_A1 <= '1';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '1';       
       
--       part b. example-1
       wait for 10 ns;
       data <= reg1;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '0';
       
--       part b. example-2
       wait for 10 ns;
       data <= reg2;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '1';
       
--       part b. example-3
       wait for 10 ns;
       data <= reg3;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '0';

--       part b. example-4 
       wait for 10 ns;
       data <= reg4;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '0';
       des_A3 <= '1';
       des_A4 <= '1';
       
--       part b. example-5
       wait for 10 ns;
       data <= reg5;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '0';
       
--       part b. example-6
       wait for 10 ns;
       data <= reg6;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '0';
       des_A4 <= '1';
       
--       part b. example-7
       wait for 10 ns;
       data <= reg7;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '0';
       
--       part b. example-8
       wait for 10 ns;
       data <= reg8;
       des_A0 <= '0';
       des_A1 <= '0';
       des_A2 <= '1';
       des_A3 <= '1';
       des_A4 <= '1';
       
--       part b. example-9
       wait for 10 ns;
       data <= reg9;
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '0';
       
--     part b. example-10
       wait for 10 ns;
       data <= reg10;
       des_A0 <= '0';
       des_A1 <= '1';
       des_A2 <= '0';
       des_A3 <= '0';
       des_A4 <= '1';
       
        
      wait;

   end process;

END;
