----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 22:15:27
-- Design Name: 
-- Module Name: Additionneur4bits_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Additionneur4bits_tb is
--  Port ( );
end Additionneur4bits_tb;

architecture Behavioral of Additionneur4bits_tb is

    component Additionneur4bits is port
            (
            cin : in STD_LOGIC;
            a : in STD_LOGIC_VECTOR (3 downto 0);
            b : in STD_LOGIC_VECTOR (3 downto 0);
            s : out STD_LOGIC_VECTOR (3 downto 0);
            cout : out STD_LOGIC
            );
    end component;
    
    signal cin, cout : std_logic;
    signal a,b,s : std_logic_vector(3 downto 0);

begin

    uut : Additionneur4bits port map
    (
        cin => cin,
        cout => cout,
        a => a,
        b => b,
        s => s
    );

    process
    begin
        cin <= '0'; a <= "1101"; b <= "0110";
        wait for 100ns;
        cin <= '1'; a <= "0001"; b <= "0110";
        wait for 100ns;
    end process;

end Behavioral;
