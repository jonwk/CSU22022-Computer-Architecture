library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder_5to32 is
    Port (  A0 : in std_logic;
            A1 : in std_logic;
            A2 : in std_logic;
            A3 : in std_logic;
            A4 : in std_logic;
            
            Q0 : out std_logic;
            Q1 : out std_logic;
            Q2 : out std_logic;
            Q3 : out std_logic;
            Q4 : out std_logic;
            Q5 : out std_logic;
            Q6 : out std_logic;
            Q7 : out std_logic;
            Q8 : out std_logic;
            Q9 : out std_logic;
            Q10 : out std_logic;
            Q11 : out std_logic;
            Q12 : out std_logic;
            Q13 : out std_logic;
            Q14 : out std_logic;
            Q15 : out std_logic;
            Q16 : out std_logic;
            Q17 : out std_logic;
            Q18 : out std_logic;
            Q19 : out std_logic;
            Q20 : out std_logic;
            Q21 : out std_logic;
            Q22 : out std_logic;
            Q23 : out std_logic;
            Q24 : out std_logic;
            Q25 : out std_logic;
            Q26 : out std_logic;
            Q27 : out std_logic;
            Q28 : out std_logic;
            Q29 : out std_logic;
            Q30 : out std_logic;
            Q31 : out std_logic);
            
end decoder_5to32;

architecture Behavioral of decoder_5to32 is

begin

Q0<= ((not A0) and (not A1) and (not A2) and (not A3) and (not A4)) after 5 ns; --00000
Q1<= ((not A0) and (not A1) and (not A2) and (not A3) and (    A4)) after 5 ns; --00001
Q2<= ((not A0) and (not A1) and (not A2) and (    A3) and (not A4)) after 5 ns; --00010
Q3<= ((not A0) and (not A1) and (not A2) and (    A3) and (    A4)) after 5 ns; --00011
Q4<= ((not A0) and (not A1) and (    A2) and (not A3) and (not A4)) after 5 ns; --00100
Q5<= ((not A0) and (not A1) and (    A2) and (not A3) and (    A4)) after 5 ns; --00101
Q6<= ((not A0) and (not A1) and (    A2) and (    A3) and (not A4)) after 5 ns; --00110
Q7<= ((not A0) and (not A1) and (    A2) and (    A3) and (    A4)) after 5 ns; --00111
Q8<= ((not A0) and (    A1) and (not A2) and (not A3) and (not A4)) after 5 ns; --01000
Q9<= ((not A0) and (    A1) and (not A2) and (not A3) and (    A4)) after 5 ns; --01001
Q10<= ((not A0) and (    A1) and (not A2) and (    A3) and (not A4)) after 5 ns; --01010
Q11<= ((not A0) and (    A1) and (not A2) and (    A3) and (    A4)) after 5 ns; --01011
Q12<= ((not A0) and (    A1) and (    A2) and (not A3) and (not A4)) after 5 ns; --01100
Q13<= ((not A0) and (    A1) and (    A2) and (not A3) and (    A4)) after 5 ns; --01101
Q14<= ((not A0) and (    A1) and (    A2) and (    A3) and (not A4)) after 5 ns; --01110
Q15<= ((not A0) and (    A1) and (    A2) and (    A3) and (    A4)) after 5 ns; --01111
Q16<= ((    A0) and (not A1) and (not A2) and (not A3) and (not A4)) after 5 ns; --10000
Q17<= ((    A0) and (not A1) and (not A2) and (not A3) and (    A4)) after 5 ns; --10001
Q18<= ((    A0) and (not A1) and (not A2) and (    A3) and (not A4)) after 5 ns; --10010
Q19<= ((    A0) and (not A1) and (not A2) and (    A3) and (    A4)) after 5 ns; --10011
Q20<= ((    A0) and (not A1) and (    A2) and (not A3) and (not A4)) after 5 ns; --10100
Q21<= ((    A0) and (not A1) and (    A2) and (not A3) and (    A4)) after 5 ns; --10101
Q22<= ((    A0) and (not A1) and (    A2) and (    A3) and (not A4)) after 5 ns; --10110
Q23<= ((    A0) and (not A1) and (    A2) and (    A3) and (    A4)) after 5 ns; --10111
Q24<= ((    A0) and (    A1) and (not A2) and (not A3) and (not A4)) after 5 ns; --11000
Q25<= ((    A0) and (    A1) and (not A2) and (not A3) and (    A4)) after 5 ns; --11001
Q26<= ((    A0) and (    A1) and (not A2) and (    A3) and (not A4)) after 5 ns; --11010
Q27<= ((    A0) and (    A1) and (not A2) and (    A3) and (    A4)) after 5 ns; --11011
Q28<= ((    A0) and (    A1) and (    A2) and (not A3) and (not A4)) after 5 ns; --11100
Q29<= ((    A0) and (    A1) and (    A2) and (not A3) and (    A4)) after 5 ns; --11101
Q30<= ((    A0) and (    A1) and (    A2) and (    A3) and (not A4)) after 5 ns; --11110
Q31<= ((    A0) and (    A1) and (    A2) and (    A3) and (    A4)) after 5 ns; --11111

end Behavioral;