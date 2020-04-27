library ieee; 
use ieee.std_logic_1164.all;

entity sumador_1bit is
port(a,b,ci : in std_logic;
	s,co:out std_logic);
end sumador_1bit;

architecture sumador_1bit of sumador_1bit is
begin
	s <= ci xor (b xor ci);
	co <= (b and ci) or (a and ci) or (a and b);
end sumador_1bit;
