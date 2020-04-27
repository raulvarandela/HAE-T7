library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador is 
port (a,b,c,d: in std_logic_vector(0 to 1);
	o:out std_logic_vector(0 to 1));
end comparador;

architecture aquitectura of comparador is
signal temp1: std_logic_vector (0 to 1);
signal temp2: std_logic_vector (0 to 1);
signal temp3: std_logic_vector (0 to 1);
begin
process(a,b,c,d)
begin

if a>b then temp1<=a;
elsif a<b then temp1<=b;
else temp1<=a;
end if;

if c>d then temp2<=c;
elsif c<d then temp2<=d;
else temp2<=c;
end if;

if temp1>temp2 then temp3<= temp1;
elsif temp1<temp2 then temp3<= temp2;
else temp3<= temp1;
end if;


o<= std_logic_vector(temp3);

end process;
end aquitectura;