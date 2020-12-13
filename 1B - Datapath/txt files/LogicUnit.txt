library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Logic_Unit is
    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
           B : in  STD_LOGIC_VECTOR(31 downto 0);
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           G : out  STD_LOGIC_VECTOR(31 downto 0));
end Logic_Unit;

architecture Behavioral of Logic_Unit is
-- Components
    -- MUX 4 to 1
    COMPONENT MUX_4_32Bit
        PORT(   IN0 : in  STD_LOGIC_VECTOR(31 downto 0);
                IN1 : in  STD_LOGIC_VECTOR(31 downto 0);
                IN2 : in  STD_LOGIC_VECTOR(31 downto 0);
                IN3 : in  STD_LOGIC_VECTOR(31 downto 0);
                S : in  STD_LOGIC_VECTOR(1 downto 0);
                Z : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    signal AandB, AorB, AxorB, notA: STD_LOGIC_VECTOR(31 downto 0);
begin
-- Port maps
    -- signals
    AandB <= A and B;
    AorB <= A or B;
    AxorB <= A xor B;
    notA <= not A;
    
    -- MUX
    MUX: MUX_4_32Bit PORT MAP(
        IN0 => AandB,
        IN1 => AorB,
        IN2 => AxorB,
        IN3 => notA,
        S => S,
        Z => G
        );
        
end Behavioral;
