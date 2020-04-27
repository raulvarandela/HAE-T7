library ieee; 
use ieee.std_logic_1164.all;

entity comparador_4bit is 
port (P,Q : in std_logic_vector (0 to 3);
	S : out std_logic);
end comparador_4bit;

architecture comparador_4bit of comparador_4bit is
begin
	S<= '0' when P=Q else
	    '1'	;
end comparador_4bit;
