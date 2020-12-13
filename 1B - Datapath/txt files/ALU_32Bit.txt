library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_32bit is
    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
           B : in  STD_LOGIC_VECTOR(31 downto 0);
           GSel : in  STD_LOGIC_VECTOR(3 downto 0);
           C : out  STD_LOGIC;
           V : out  STD_LOGIC;
           G : out  STD_LOGIC_VECTOR(31 downto 0));
end ALU_32bit;

architecture Behavioral of ALU_32bit is
-- Components
    -- Arithmetic Circuit
    COMPONENT Arithmetic_Unit
        PORT( A : in  STD_LOGIC_VECTOR(31 downto 0);
              B : in  STD_LOGIC_VECTOR(31 downto 0);
              Cin : in  STD_LOGIC;
              SelB : in  STD_LOGIC_VECTOR(1 downto 0);
              G : out  STD_LOGIC_VECTOR(31 downto 0);
              Cout : out  STD_LOGIC;
              V_out : out  STD_LOGIC);
    END COMPONENT;
    
    -- Logic Circuit
    COMPONENT Logic_Unit
        PORT(A : in  STD_LOGIC_VECTOR(31 downto 0);
             B : in  STD_LOGIC_VECTOR(31 downto 0);
             S : in  STD_LOGIC_VECTOR(1 downto 0);
             G : out  STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    
    -- Select Arithmetic or Logic MUX
    COMPONENT MUX_2_32Bit
        PORT(S : in  STD_LOGIC;
             IN0 : in  STD_LOGIC_VECTOR (31 downto 0);
             IN1 : in  STD_LOGIC_VECTOR (31 downto 0);
             Z : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    
    signal Cin, C_out, V_out: STD_LOGIC;
    signal FSel: STD_LOGIC_VECTOR(2 downto 0);
    signal AUtoMUX, LUtoMUX: STD_LOGIC_VECTOR(31 downto 0);
begin
-- Port Maps
    -- Signals
    Cin <= GSel(0);
    FSel <= GSel(3 downto 1);
            
    -- Arithmetic Unit
    AU: Arithmetic_Unit PORT MAP(
        A => A,
        B => B,
        Cin => Cin,
        SelB(0) => FSel(0),
        SelB(1) => FSel(1),
        G => AUtoMUX,
        Cout => C_out,
        V_out => V_out);
        
    -- Logic Unit
    LU: Logic_Unit PORT MAP(
        A => A,
        B => B,
        S(0) => FSel(0),
        S(1) => FSel(1),
        G => LUtoMUX );
        
    -- MUX
    ALUMUX: MUX_2_32Bit PORT MAP(
        S => FSel(2),
        IN0 => AUtoMUX,
        IN1 => LUtoMUX,
        Z => G );
        
    -- Control Flags
    C <= C_out when FSel(2) = '0' else '0';
    V <= V_out when FSel(2) = '0' else '0';
end Behavioral;

