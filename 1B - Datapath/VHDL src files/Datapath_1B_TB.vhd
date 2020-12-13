library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datapath_32B_TB is
end Datapath_32B_TB;

architecture Behavioral of Datapath_32B_TB is

COMPONENT Datapath_32Bit
    PORT(
          CONTROL_WORD : in  STD_LOGIC_VECTOR(22 downto 0);
--           A_add : in std_logic_vector(4 downto 0); -- CONTROL_WORD(22 downto 18);
--           B_add : in std_logic_vector(4 downto 0); -- CONTROL_WORD(17 downto 13),
--           D_add : in std_logic_vector(4 downto 0); -- CONTROL_WORD(12 downto 8), 
--           F_Sel : in std_logic_vector(4 downto 0); -- CONTROL_WORD(7 downto 3),
--           load : in std_logic; -- CONTROL_WORD(0),
--           MB_Sel : in std_logic; -- CONTROL_WORD(1),
--           MD_Sel : in std_logic; -- CONTROL_WORD(2),
           CONST_IN : in  STD_LOGIC_VECTOR(31 downto 0);
           DATA_IN : in  STD_LOGIC_VECTOR(31 downto 0);
           CLK : in  STD_LOGIC;
           ADDR_OUT : out  STD_LOGIC_VECTOR(31 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR(31 downto 0);
           C : out  STD_LOGIC;
           V : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal CONST_IN : std_logic_vector(31 downto 0) := (others => '0');
   signal DATA_IN : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal CONTROL_WORD : STD_LOGIC_VECTOR(22 downto 0) := (others => '0');
--   signal A_add : std_logic_vector(4 downto 0):= (others => '0');
--   signal B_add : std_logic_vector(4 downto 0):= (others => '0');
--   signal D_add : std_logic_vector(4 downto 0):= (others => '0');
--   signal F_Sel : std_logic_vector(4 downto 0):= (others => '0');
--   signal load :  std_logic := '0';
--   signal MB_Sel : std_logic := '0';
--   signal MD_Sel : std_logic := '0';

    --Outputs
   signal ADDR_OUT : std_logic_vector(31 downto 0);
   signal DATA_OUT : std_logic_vector(31 downto 0);
   signal C : std_logic;
   signal V : std_logic;
   signal N : std_logic;
   signal Z : std_logic;

   -- Clock period definitions
--   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Datapath_32Bit PORT MAP (
          CONTROL_WORD => CONTROL_WORD,
--           A_add => A_add,
--           B_add => B_add,
--           D_add => D_add, 
--           F_Sel => F_Sel,
--           load => load,
--           MB_Sel => MB_Sel,
--           MD_Sel => MD_Sel,
          CONST_IN => CONST_IN,
          DATA_IN => DATA_IN,
          CLK => CLK,
          ADDR_OUT => ADDR_OUT,
          DATA_OUT => DATA_OUT,
          C => C,
          V => V,
          N => N,
          Z => Z
        );
 
CLK <= not CLK after 5ns; 
   -- Stimulus process
   stim_proc: process
   begin
   
       
     CONST_IN <= x"00000023";      
--      A_add = 00000 , B_add = 00000 , D_add = 00000 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00000
--      R0 = DATA_IN
      CONTROL_WORD <= "00000000000000000000111";
      DATA_IN <= x"00000001";
      wait for 35ns; 
      
--      A_add = 00000 , B_add = 00000 , D_add = 00001 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00001
--      R1 = R0 + 1
      CONTROL_WORD <= "00000000000000100001111";
      wait for 35ns;
      
--      loading R1 to Data_out
--      A_add = 00000 , B_add = 00001 , D_add = 00010 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 00010
      CONTROL_WORD <= "00000000010000100000001";
      wait for 35ns;
--      wait;
            
 --      A_add = 00000 , B_add = 00001 , D_add = 00001 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00000
      CONTROL_WORD <= "00000000010000100000111";
--      R1 = DATA_IN = 2
      DATA_IN <= x"00000002";
      wait for 35ns;
      
     ---- R2 = R0 + R1
--      A_add = 00001 , B_add = 00000 , D_add = 00010 , MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 00010
      CONTROL_WORD <= "00001000000001000010001";
      wait for 35ns;
      
 -- loading R2 to  Data_Out
      --      A_add = 00000 , B_add = 00010 , D_add = 00010 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000000100001000000001";
      wait for 35ns;
      
      ---- R3 = R0 + R1 + 1
--      A_add = 00000 , B_add = 00001 , D_add = 00011 , MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00011
      CONTROL_WORD <= "00000000010001100011111";
      wait for 35ns;
      
       -- loading R3 to  Data_Out
      --      A_add = 00000 , B_add = 00011 , D_add = 00011 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000000110001110000001";
      wait for 35ns;
      
      -- R4 = R1 + (R2 Bar)
      --      A_add = 00001 , B_add = 00010 , D_add = 00100 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00100
      CONTROL_WORD <= "00001000100010000100111";
      wait for 35ns;
      
      -- loading R4 to  Data_Out
      --      A_add = 00000 , B_add = 00100 , D_add = 00100 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000001000010010000001";
      wait for 35ns;
      
      -- R5 = R1 + (R2 Bar) + 1
      --      A_add = 00001 , B_add = 00010 , D_add = 00101 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00101
      CONTROL_WORD <= "00001000100010100101111";
      wait for 35ns;
      
      -- loading R5 to  Data_Out
      --      A_add = 00000 , B_add = 00101 , D_add = 00101 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000001010010110000001";
      wait for 35ns;
      
      -- R6 = R1 - 1
      --      A_add = 00000 , B_add = 00001 , D_add = 00110 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00110

      CONTROL_WORD <= "00000000010011000110111";
      wait for 35ns;
      
      -- loading R6 to  Data_Out
      --      A_add = 00000 , B_add = 00110 , D_add = 00101 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000001100011010000001";
      wait for 35ns;
      
      -- R7 = R1
      --      A_add = 00000 , B_add = 00001 , D_add = 00111 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 00111

      CONTROL_WORD <= "00000000010011100111111";
      wait for 35ns;
      
      -- loading R7 to  Data_Out
      --      A_add = 00000 , B_add = 00111 , D_add = 00111 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000001110011110000001";
      wait for 35ns;
      
--      G = A ? B F_Sel=01000 And
    -- R8 = R1 ^ R2 
      --      A_add = 00001 , B_add = 00010 , D_add = 01000 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 01000
      CONTROL_WORD <= "00001000100100001000111";
      wait for 35ns;
      
      -- loading R8 to  Data_Out
      --      A_add = 00000 , B_add = 01000 , D_add = 01000 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000010000100010000001";
      wait for 35ns;
      
--      G = A ? B F_Sel = 01010 OR
    -- R9 = R1 v R2 
      --      A_add = 00001 , B_add = 00010 , D_add = 01001 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 01010
      CONTROL_WORD <= "00001000100100101010111";
      wait for 35ns;
      
      -- loading R9 to  Data_Out
      --      A_add = 00000 , B_add = 01001 , D_add = 01001 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000010010100110000001";
      wait for 35ns;
      
--      G = A xor B F_Sel = 01100 XOR
    -- R10 = R1 xor R2 
      --      A_add = 00001 , B_add = 00010 , D_add = 01010 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 01100
      CONTROL_WORD <= "00001000100101001100111";
      wait for 35ns;
      
      -- loading R10 to  Data_Out
      --      A_add = 00000 , B_add = 01010 , D_add = 01010 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000010100101010000001";
      wait for 35ns;
      
--      R11 =  - R0
--      A_add = 00000 , B_add = 00001 , D_add = 01011 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000 
      CONTROL_WORD <= "00000000010101101110111";
      wait for 35ns;
      
      -- loading R11 to  Data_Out
      --      A_add = 00000 , B_add = 01011 , D_add = 01011 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000010110101110000001";
      wait for 35ns;
      
--      R12 =  R1
--      A_add = 00000 , B_add = 00001 , D_add = 01100 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000 
      CONTROL_WORD <= "00000000010110010000111";
      wait for 35ns;
      
      -- loading R12 to  Data_Out
      --      A_add = 00000 , B_add = 01100 , D_add = 01100 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000011000110010000001";
      wait for 35ns;
      
      --      R13 =  sr R1
--      A_add = 00000 , B_add = 00001 , D_add = 01101 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 10100 
      CONTROL_WORD <= "00000000010110110100111";
      wait for 35ns;
      
      -- loading R13 to  Data_Out
      --      A_add = 00000 , B_add = 01101 , D_add = 01101 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000011010110110000001";
      wait for 35ns;
      
--      R14 =  sl R1
--      A_add = 00000 , B_add = 00001 , D_add = 01110 MB_Sel =1, MD_sel =1, Load = 1 F_Sel = 11000 
      CONTROL_WORD <= "00000000010111011000111";
      wait for 35ns;
      
      -- loading R14 to  Data_Out
      --      A_add = 00000 , B_add = 01101 , D_add = 01101 MB_Sel =0, MD_sel =0, Load = 1 F_Sel = 10000
      CONTROL_WORD <= "00000011100111010000001";
      wait for 35ns;
  
--      wait;
 
   end process;

END;

