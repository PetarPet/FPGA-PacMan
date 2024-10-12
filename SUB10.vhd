library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SUB10 is
    Port ( NUM1 : in  STD_LOGIC_VECTOR (9 downto 0) := "1111111111";
           NUM2 : in  STD_LOGIC_VECTOR (9 downto 0) := "1111111111";
           SUM  : out STD_LOGIC_VECTOR (9 downto 0));
end SUB10;

architecture Behavioral of SUB10 is
    signal A :  STD_LOGIC_VECTOR (9 downto 0);
    signal B :  STD_LOGIC_VECTOR (9 downto 0);
    signal X :  STD_LOGIC_VECTOR (9 downto 0);
begin
    
    X <= A - B;
    
    -- compensate for inverting inputs and outputs
    A <= not NUM1;
    B <= not NUM2;
    SUM <= not X;
    
end Behavioral;