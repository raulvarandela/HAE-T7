library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity doble_8bit is
port(a: in std_logic_vector (0 to 7);
	q: out std_logic_vector (0 to 4));
end doble_8bit;

architecture Behavioral of doble_8bit is

begin
process(a)
variable aux : unsigned (4 downto 0);
begin
aux := (others =>'0');
for i in 0 to 7  loop
if (a(i) = '1') then aux := aux + 2; 
end if;
end loop;
q <= std_logic_vector(aux);

end process;
end Behavioral;
