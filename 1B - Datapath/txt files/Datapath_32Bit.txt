library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datapath_32Bit is
    Port ( 
           CONTROL_WORD : in  STD_LOGIC_VECTOR(22 downto 0);
--           A_add : in std_logic_vector(4 downto 0); -- CONTROL_WORD(22 downto 18);
--           B_add : in std_logic_vector(4 downto 0); -- CONTROL_WORD(17 downto 13),
--           D_add : in std_logic_vector(4 downto 0); -- CONTROL_WORD(12 downto 8), 
--           F_Sel : in std_logic_vector(4 downto 0); -- CONTROL_WORD(7 downto 3),
--           load : in std_logic; -- CONTROL_WORD(0),
--           MB_Sel : in std_logic; -- CONTROL_WORD(1),
--           MD_Sel : in std_logic;
           CONST_IN : in  STD_LOGIC_VECTOR(31 downto 0);
           DATA_IN : in  STD_LOGIC_VECTOR(31 downto 0);
           CLK : in  STD_LOGIC;
           ADDR_OUT : out  STD_LOGIC_VECTOR(31 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR(31 downto 0);
           C : out  STD_LOGIC;
           V : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Datapath_32Bit;

architecture Behavioral of Datapath_32Bit is
-- Components
    -- Regfile
    COMPONENT Register_File
    PORT(   add_A, add_B, add_D : in std_logic_vector(4 downto 0);
            Clk : in std_logic;
            load : in std_logic;
            D_out_data : in std_logic_vector(31 downto 0);
            A_out, B_out: out std_logic_vector(31 downto 0));
    END COMPONENT;
    
    -- Function Unit
    COMPONENT Function_Unit
    PORT( A : in  STD_LOGIC_VECTOR(31 downto 0);
          B : in  STD_LOGIC_VECTOR(31 downto 0);
          FSel : in  STD_LOGIC_VECTOR(4 downto 0);
          C : out  STD_LOGIC;
          V : out  STD_LOGIC;
          N : out  STD_LOGIC;
          Z : out  STD_LOGIC;
          F : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    
    -- Mux2
    COMPONENT MUX_2_32Bit
    PORT( IN0 : in  STD_LOGIC_VECTOR(31 downto 0);
          IN1 : in  STD_LOGIC_VECTOR(31 downto 0);
          S : in  STD_LOGIC;
          Z : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    
    signal B_regfile_muxB, muxB_out, A_regfile_Function_Unit, Function_Unit_out, muxD_out: STD_LOGIC_VECTOR(31 downto 0); --:= (others => '0');
--     8
begin
-- Port Maps
-- MUXB
    MUXB: MUX_2_32Bit
    PORT MAP(   IN0 => B_regfile_muxB,
                IN1 => CONST_IN,
                S => CONTROL_WORD(1),
                Z => muxB_out);
  
--MUXD
    MUXD: MUX_2_32Bit
    PORT MAP(   IN0 => Function_Unit_out,
                IN1 => DATA_IN,
                S => CONTROL_WORD(2),
                Z => muxD_out);
   
                
-- Regfile
    REGFILE: Register_File
    PORT MAP(
                add_A => CONTROL_WORD(22 downto 18),
                add_B => CONTROL_WORD(17 downto 13),
                add_D => CONTROL_WORD(12 downto 8),
                CLK => CLK,
                load => CONTROL_WORD(0),
                D_out_data => muxD_out,
                A_out => A_regfile_Function_Unit,
                B_out => B_regfile_muxB
                );
                   
-- Function Unit
    FUNC_UNIT: Function_Unit
    PORT MAP(   A => A_regfile_Function_Unit,
                B => muxB_out,
                FSel => CONTROL_WORD(7 downto 3),
                C => C,
                V => V,
                N => N,
                Z => Z,
                F => Function_Unit_out);
                
-- Signals          
    ADDR_OUT <= A_regfile_Function_Unit;
    DATA_OUT <= muxB_out;          
   
           
end Behavioral;
