library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity RippleAdder_32Bit_TB is
end RippleAdder_32Bit_TB;

architecture Behavioral of RippleAdder_32Bit_TB is

COMPONENT Ripple_Adder
    PORT(
          A, B : in STD_LOGIC_VECTOR(31 downto 0);
        Cin : in STD_LOGIC;
        Cout, V_out : out STD_LOGIC;
        G_out : out STD_LOGIC_VECTOR(31 downto 0)
    );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

    --Outputs
    signal V_out : std_logic;
   signal Cout : std_logic;
   signal G_out : std_logic_vector(31 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Ripple_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          V_out => V_out,
          Cout => Cout,
          G_out => G_out
        );

   -- Stimulus process
   stim_proc: process
   begin        
        A <= x"11112222";
        B <= x"22221111";
        Cin <= '0';
        wait for 100ns;
        
        A <= x"33334444";
        B <= x"44443333";
        Cin <= '1';
        wait for 100ns;
        
        A <= x"ffffffff";
        B <= x"ffffffff";
        Cin <= '0';
        wait for 100ns;
        
        A <= x"01010101";
        B <= x"10101010";
        Cin <= '1';
        wait for 100ns;
   end process;

END;

