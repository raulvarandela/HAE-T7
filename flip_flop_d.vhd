library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_flop_d is
	port(clk, reset, d: in std_logic;
		q: out std_logic);
end flip_flop_d;

architecture flip_flop_d of flip_flop_d is
begin
	process(clk,reset)--tanto un cambio en clk como reset disparan el proceso
	begin
		if (reset='0') then -- el reset tiene prioridad al ser asíncrono
			q<='1';
		elsif (clk' event and clk='1') then-- si no existe un reset y el cambio de clk=1
			q<= not d;-- funcionamiento normal del ffd, en este caso invertido
		end if;
	end process;
end flip_flop_d;
