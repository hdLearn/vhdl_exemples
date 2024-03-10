library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity compteur_tb is
    -- Generic ();
    -- Port ();
end compteur_tb;

architecture behavioral of compteur_tb is

    component compteur is
        port (
            clock : in STD_LOGIC;
            reset : in STD_LOGIC;
            res : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;
    
    signal clk : std_logic;
    signal rst : std_logic := '0';
    signal count : std_logic_vector(3 downto 0);
  
begin
  uut : compteur
  port map (
    clock => clk,
    reset => rst,
    res => count
  );

  clk_gen : process
  begin
    for i in 1 to 20 loop
      clk <= '1';
      wait for 5 ns;
      clk <= '0';
      wait for 5 ns;
    end loop;
    wait;
  end process;
  
end behavioral;

