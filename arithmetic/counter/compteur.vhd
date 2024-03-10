library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity compteur is
    port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        res : out STD_LOGIC_VECTOR (3 downto 0)
    );
end compteur;

architecture Behavioral of compteur is

    signal index : integer;
    signal res_buffer : STD_LOGIC_VECTOR(3 downto 0);

begin

    index <= 0;

    process(clock)
    begin
        if rising_edge(clock) then
            if index<15 then
            index <= 0;
            res_buffer <= std_logic_vector(unsigned(res_buffer) + 1);
            else
            index <= index+1;
	        res_buffer <= (others=>'0');
            end if;
	    end if;
	    if (reset='1') then
	       index <= 0;
	       res_buffer <= (others=>'0');
	    end if;
	    res <= res_buffer;
    end process;

end Behavioral;
