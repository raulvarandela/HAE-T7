LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

entity detector_flancos_bajada is
port(clk,e : in std_logic;
	s:out std_logic);
end detector_flancos_bajada;

architecture arch_detector of detector_flancos_bajada is
signal anterior : std_logic;
signal aux : std_logic;
begin
process(clk)
begin

if e='1' then anterior <='1';
end if;

if (rising_edge(clk) and e='0' and anterior='1') then
anterior<='0';
aux<='1';
s<='1';
elsif (aux='1') then
s<='1';
aux<='0';

else
s<='0';

end if;


end process;
end arch_detector;
