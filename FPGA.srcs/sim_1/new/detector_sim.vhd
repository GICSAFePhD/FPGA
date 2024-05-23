----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2024 20:24:54
-- Design Name: 
-- Module Name: detector_sim - Behavioral
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

entity detector_sim is
--  Port ( );
end detector_sim;

architecture Behavioral of detector_sim is

    component detector is
		port(
			Clock : in std_logic;
			r_data : in std_logic_vector(8-1 downto 0);
			r_available : in std_logic;
			led_rgb_1 : out std_logic_vector(3-1 downto 0);
			led_rgb_2 : out std_logic_vector(3-1 downto 0);
			packet : out std_logic_vector(85-1 downto 0);
			processing : in std_logic;
			processed : out std_logic;
			N : in integer;
			wr_uart : out std_logic;
			w_data : out std_logic_vector(8-1 downto 0);
			reset : in std_logic
		);
	end component;

    signal a : std_logic := '0';
    signal b : std_logic_vector(8-1 downto 0);
    signal c : std_logic := '0';
    signal d : std_logic := '0';
    signal e : integer := 0;
    signal f : std_logic := '0';

begin

        x : detector port map(
            Clock => a,
            r_data => b,
            r_available => c,
            processing => d,
            N => e,
            reset => f,
        );

        process
        begin
            wait for 100 ns;
            a <= '0';
            wait for 100 ns;
            a <= '1';
         end process;


end Behavioral;
