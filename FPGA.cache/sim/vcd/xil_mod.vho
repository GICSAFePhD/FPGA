component detector 
port(  
 Clock : in std_logic;
 r_data : in std_logic_vector(7 downto 0);
 r_available : in std_logic;
 led_rgb_1 : out std_logic_vector(2 downto 0);
 led_rgb_2 : out std_logic_vector(2 downto 0);
 packet : out std_logic_vector(84 downto 0);
 processing : in std_logic;
 processed : out std_logic;
 N : in std_logic;
 wr_uart : out std_logic;
 w_data : out std_logic_vector(7 downto 0);
 reset : in std_logic
);
end component; 

DUT : detector
port map (
 Clock=>Clock,
 r_data=>r_data,
 r_available=>r_available,
 led_rgb_1=>led_rgb_1,
 led_rgb_2=>led_rgb_2,
 packet=>packet,
 processing=>processing,
 processed=>processed,
 N=>N,
 wr_uart=>wr_uart,
 w_data=>w_data,
 reset=>reset
);
