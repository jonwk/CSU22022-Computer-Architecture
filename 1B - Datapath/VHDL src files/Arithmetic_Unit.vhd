library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Arithmetic_Unit is
    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
           B : in  STD_LOGIC_VECTOR(31 downto 0);
           Cin : in  STD_LOGIC;
           SelB : in  STD_LOGIC_VECTOR(1 downto 0);
           G : out  STD_LOGIC_VECTOR(31 downto 0);
           Cout : out  STD_LOGIC;
           V_out : out  STD_LOGIC);
end Arithmetic_Unit;

architecture Behavioral of Arithmetic_Unit is
-- Components
    -- B Input Logic
    COMPONENT B_Input_Logic
    PORT ( B : in  STD_LOGIC_VECTOR(31 downto 0);
          S : in  STD_LOGIC_VECTOR(1 downto 0);
          Y : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    
    -- 16 bit Ripple Adder
    COMPONENT Ripple_Adder
    PORT (A, B : in STD_LOGIC_VECTOR(31 downto 0);
        Cin : in STD_LOGIC;
        Cout, V_out : out STD_LOGIC;
        G_out : out STD_LOGIC_VECTOR(31 downto 0)
    );
    END COMPONENT;
    
    signal blogic_to_adder, adder_to_G_output: STD_LOGIC_VECTOR(31 downto 0):= (others => '0');
begin
-- Port Maps
    -- B Logic
    BLOGIC: B_Input_Logic PORT MAP(
                    B => B,
                    S => SelB,
                    Y => blogic_to_adder
                    );
                    
    -- Ripple Adder
    RA: Ripple_Adder PORT MAP(
                    A => A,
                    B => blogic_to_adder,
                    Cin => Cin,
                    V_out => V_out,
                    Cout => Cout,
                    G_out => adder_to_G_output
                    );

    G <= adder_to_G_output after 2ns;
end Behavioral;