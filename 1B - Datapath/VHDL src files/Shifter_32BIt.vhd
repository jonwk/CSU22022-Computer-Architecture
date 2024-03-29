library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Shifter_32Bit is
    Port(
        B : in STD_LOGIC_VECTOR(31 downto 0);
        S : in STD_LOGIC_VECTOR(1 downto 0);
        IL, IR : in STD_LOGIC;
        H : out STD_LOGIC_VECTOR(31 downto 0)
        );
end Shifter_32Bit;

architecture Behavioral of Shifter_32Bit is
--3 to 1 mux
    Component MUX_3_1Bit
        Port(
            In0, In1, In2, S0, S1 : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    End Component;
begin
    mux00: MUX_3_1Bit PORT MAP(
        In0 => B(0),
        In1 => B(1),
        In2 => IL,
        S0 => S(0),
        S1 => S(1),
        Z => H(0)
    );
    
    mux01: MUX_3_1Bit PORT MAP(
        In0 => B(1),
        In1 => B(2),
        In2 => B(0),
        S0 => S(0),
        S1 => S(1),
        Z => H(1)
    );
    
    mux02: MUX_3_1Bit PORT MAP(
        In0 => B(2),
        In1 => B(3),
        In2 => B(1),
        S0 => S(0),
        S1 => S(1),
        Z => H(2)
    );
    
    mux03: MUX_3_1Bit PORT MAP(
        In0 => B(3),
        In1 => B(4),
        In2 => B(2),
        S0 => S(0),
        S1 => S(1),
        Z => H(3)
    );
    
    mux04: MUX_3_1Bit PORT MAP
    (
        In0 => B(4),
        In1 => B(5),
        In2 => B(3),
        S0 => S(0),
        S1 => S(1),
        Z => H(4)
    );
    
    mux05: MUX_3_1Bit PORT MAP
    (
        In0 => B(5),
        In1 => B(6),
        In2 => B(4),
        S0 => S(0),
        S1 => S(1),
        Z => H(5)
    );
    
    mux06: MUX_3_1Bit PORT MAP
    (
        In0 => B(6),
        In1 => B(7),
        In2 => B(5),
        S0 => S(0),
        S1 => S(1),
        Z => H(6)
    );
    
    mux07: MUX_3_1Bit PORT MAP
    (
        In0 => B(7),
        In1 => B(8),
        In2 => B(6),
        S0 => S(0),
        S1 => S(1),
        Z => H(7)
    );
    
    mux08: MUX_3_1Bit PORT MAP
    (
        In0 => B(8),
        In1 => B(9),
        In2 => B(7),
        S0 => S(0),
        S1 => S(1),
        Z => H(8)
    );
    
    mux09: MUX_3_1Bit PORT MAP
    (
        In0 => B(9),
        In1 => B(10),
        In2 => B(8),
        S0 => S(0),
        S1 => S(1),
        Z => H(9)
    );
    
    mux10: MUX_3_1Bit PORT MAP
    (
        In0 => B(10),
        In1 => B(11),
        In2 => B(9),
        S0 => S(0),
        S1 => S(1),
        Z => H(10)
    );
    
    mux11: MUX_3_1Bit PORT MAP
    (
        In0 => B(11),
        In1 => B(12),
        In2 => B(10),
        S0 => S(0),
        S1 => S(1),
        Z => H(11)
    );
    
    mux12: MUX_3_1Bit PORT MAP
    (
        In0 => B(12),
        In1 => B(13),
        In2 => B(11),
        S0 => S(0),
        S1 => S(1),
        Z => H(12)
    );
    
    mux13: MUX_3_1Bit PORT MAP
    (
        In0 => B(13),
        In1 => B(14),
        In2 => B(12),
        S0 => S(0),
        S1 => S(1),
        Z => H(13)
    );
    
    mux14: MUX_3_1Bit PORT MAP
    (
        In0 => B(14),
        In1 => B(15),
        In2 => B(13),
        S0 => S(0),
        S1 => S(1),
        Z => H(14)
    );
    
    mux15: MUX_3_1Bit PORT MAP
    (
        In0 => B(15),
        In1 => B(16),
        In2 => B(14),
        S0 => S(0),
        S1 => S(1),
        Z => H(15)
    );
    
    mux16: MUX_3_1Bit PORT MAP
    (
        In0 => B(16),
        In1 => B(17),
        In2 => B(15),
        S0 => S(0),
        S1 => S(1),
        Z => H(16)
    );
    
    mux17: MUX_3_1Bit PORT MAP
    (
        In0 => B(17),
        In1 => B(18),
        In2 => B(16),
        S0 => S(0),
        S1 => S(1),
        Z => H(17)
    );
    
    mux18: MUX_3_1Bit PORT MAP
    (
        In0 => B(18),
        In1 => B(19),
        In2 => B(17),
        S0 => S(0),
        S1 => S(1),
        Z => H(18)
    );
    
    mux19: MUX_3_1Bit PORT MAP
    (
        In0 => B(19),
        In1 => B(20),
        In2 => B(18),
        S0 => S(0),
        S1 => S(1),
        Z => H(19)
    );
    
    mux20: MUX_3_1Bit PORT MAP
    (
        In0 => B(20),
        In1 => B(21),
        In2 => B(19),
        S0 => S(0),
        S1 => S(1),
        Z => H(20)
    );
    
    mux21: MUX_3_1Bit PORT MAP
    (
        In0 => B(21),
        In1 => B(22),
        In2 => B(20),
        S0 => S(0),
        S1 => S(1),
        Z => H(21)
    );
    
    mux22: MUX_3_1Bit PORT MAP
    (
        In0 => B(22),
        In1 => B(23),
        In2 => B(21),
        S0 => S(0),
        S1 => S(1),
        Z => H(22)
    );
    
    mux23: MUX_3_1Bit PORT MAP
    (
        In0 => B(23),
        In1 => B(24),
        In2 => B(22),
        S0 => S(0),
        S1 => S(1),
        Z => H(23)
    );
    
    mux24: MUX_3_1Bit PORT MAP
    (
        In0 => B(24),
        In1 => B(25),
        In2 => B(23),
        S0 => S(0),
        S1 => S(1),
        Z => H(24)
    );
    
    mux25: MUX_3_1Bit PORT MAP
    (
        In0 => B(25),
        In1 => B(26),
        In2 => B(24),
        S0 => S(0),
        S1 => S(1),
        Z => H(25)
    );
    
    mux26: MUX_3_1Bit PORT MAP
    (
        In0 => B(26),
        In1 => B(27),
        In2 => B(25),
        S0 => S(0),
        S1 => S(1),
        Z => H(26)
    );
    
    mux27: MUX_3_1Bit PORT MAP
    (
        In0 => B(27),
        In1 => B(28),
        In2 => B(26),
        S0 => S(0),
        S1 => S(1),
        Z => H(27)
    );
    
    mux28: MUX_3_1Bit PORT MAP
    (
        In0 => B(28),
        In1 => B(29),
        In2 => B(27),
        S0 => S(0),
        S1 => S(1),
        Z => H(28)
    );
    
    mux29: MUX_3_1Bit PORT MAP
    (
        In0 => B(29),
        In1 => B(20),
        In2 => B(28),
        S0 => S(0),
        S1 => S(1),
        Z => H(29)
    );
    
    mux30: MUX_3_1Bit PORT MAP
    (
        In0 => B(30),
        In1 => B(31),
        In2 => B(29),
        S0 => S(0),
        S1 => S(1),
        Z => H(30)
    );
    
    mux31: MUX_3_1Bit PORT MAP
    (
        In0 => B(31),
        In1 => IR,
        In2 => B(30),
        S0 => S(0),
        S1 => S(1),
        Z => H(31)
    );

end Behavioral;
