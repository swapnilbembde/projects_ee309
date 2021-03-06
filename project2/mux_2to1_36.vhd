--MUX 2 TO 1 , ONE SELECT, 34bits

library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_36 is
port(zero,one:in std_logic_vector(36 downto 0);
     output:out std_logic_vector(36 downto 0); 
     sel:in std_logic);
end entity;

architecture d_mux2to1_36 of mux2to1_36 is


begin
	
process(zero,one,sel)
variable temp: std_logic_vector(36 downto 0); 
begin

case sel is 
	when '0' =>
        temp:=zero;
    when '1' =>
        temp:=one;
    when others =>
        temp:="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end case;

output<= temp;

end process;

end;



 
