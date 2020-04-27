LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

ENTITY contador_3bit IS
PORT (E   : IN std_logic; 
    reset : IN std_logic; 
    alfa: IN std_logic; 
    Q : OUT std_logic_vector(3 DOWNTO 0)
);
END contador_3bit;

ARCHITECTURE contador_3bit OF contador_3bit IS
SIGNAL cnt : UNSIGNED(3 DOWNTO 0);

BEGIN

pSeq : PROCESS (E, reset) IS
BEGIN
IF reset = '0' THEN
cnt <= (others => '0');
ELSIF E'event AND E='1' AND alfa='1' THEN
    cnt <= cnt + 1;
END IF;
END PROCESS;

Q <= std_logic_vector(cnt);

END contador_3bit;
