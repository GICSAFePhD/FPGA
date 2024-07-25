--  railwaySignal_16.vhdl : Automatically generated using ACG
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
--Declare the package
use work.my_package.all;
	entity railwaySignal_16 is
		port(
			clock : in std_logic;
			reset : in std_logic;
			R3_command : in routeCommands;
			--Ocupation level 0
			track_ne15 : in hex_char;
			correspondence_T06 : out hex_char;
			correspondence_C29 : in hex_char;
			--Ocupation level 2
			track_ne1 : in hex_char;
			track_ne9 : in hex_char;
			correspondence_L07 : in hex_char;
			Sw04_state : in hex_char;
			Sw07_state : in hex_char;
			indication : in hex_char;
			command : out hex_char
		);
	end entity railwaySignal_16;
architecture Behavioral of railwaySignal_16 is
	component flipFlop is
		port(
			clock : in std_logic := '0';
			reset : in std_logic := '0';
			Q : out std_logic := '0'
		);
	end component flipFlop;
	signal restart : std_logic := '1';
	signal Q : std_logic_vector(30 downto 0) := (others => '0');
	signal clock_in : std_logic_vector(30 downto 0) := (others => '0');
	signal timeout : std_logic := '0';
	signal commandState : routeCommands := RELEASE;
	signal lockStateIn : objectLock := RELEASED;
	signal lockStateOut : objectLock := RELEASED;
	signal aspectStateIn : signalStates := RED;
	signal aspectStateOut : signalStates := RED;
	signal correspondenceState : signalStates := RED;
	signal path : integer := 0;
	signal C29_aspect : signalStates;
	signal C29_lock : objectLock := RELEASED;
	--Ocupation level 2
	signal ne1_state : nodeStates := FREE;
	signal ne1_lock : objectLock := RELEASED;
	signal ne9_state : nodeStates := FREE;
	signal ne9_lock : objectLock := RELEASED;
	signal L07_aspect : signalStates;
	signal L07_lock : objectLock := RELEASED;
	signal Sw04_position : singleSwitchStates := NORMAL;
	signal Sw07_position : singleSwitchStates := NORMAL;
	signal Sw04_lock : objectLock := RELEASED;
	signal Sw07_lock : objectLock := RELEASED;
begin
	clock_in(0) <= clock;
	lockStateIn <= objectLock'val(to_integer(unsigned(hex_to_slv(indication)(0 to 1))));
	aspectStateIn <= signalStates'val(to_integer(unsigned(hex_to_slv(indication)(2 to 3))));
	command <= slv_to_hex(std_logic_vector(to_unsigned(objectLock'pos(lockStateOut), 2) & to_unsigned(signalStates'pos(aspectStateOut), 2)));
	correspondence_T06 <= slv_to_hex(std_logic_vector(to_unsigned(objectLock'pos(lockStateOut), 2) & to_unsigned(signalStates'pos(correspondenceState), 2)));
	C29_aspect <= signalStates'val(to_integer(unsigned(hex_to_slv(correspondence_C29)(2 to 3))));
	C29_lock <= objectLock'val(to_integer(unsigned(hex_to_slv(correspondence_C29)(0 to 1))));
	--Ocupation level 2
	ne1_state <= nodeStates'val(to_integer(unsigned(hex_to_slv(track_ne1)(2 to 3))));
	ne1_lock <= objectLock'val(to_integer(unsigned(hex_to_slv(track_ne1)(0 to 1))));
	ne9_state <= nodeStates'val(to_integer(unsigned(hex_to_slv(track_ne9)(2 to 3))));
	ne9_lock <= objectLock'val(to_integer(unsigned(hex_to_slv(track_ne9)(0 to 1))));
	L07_aspect <= signalStates'val(to_integer(unsigned(hex_to_slv(correspondence_L07)(2 to 3))));
	L07_lock <= objectLock'val(to_integer(unsigned(hex_to_slv(correspondence_L07)(0 to 1))));
	Sw04_position <= singleSwitchStates'val(to_integer(unsigned(hex_to_slv(Sw04_state)(2 to 3))));
	Sw07_position <= singleSwitchStates'val(to_integer(unsigned(hex_to_slv(Sw07_state)(2 to 3))));
	Sw04_lock <= objectLock'val(to_integer(unsigned(hex_to_slv(Sw04_state)(0 to 1))));
	Sw07_lock <= objectLock'val(to_integer(unsigned(hex_to_slv(Sw07_state)(0 to 1))));
	gen : for i in 0 to 29 generate
		inst: flipFlop port map(Q(i),restart,Q(i+1));
	end generate;

	process(timeout,R3_command)
	begin
		if (timeout = '1') then
			commandState <= RELEASE;
		else
			if (R3_command = RELEASE) then
				commandState <= RELEASE;
			end if;
			if (R3_command = RESERVE) then
				commandState <= RESERVE;
			end if;
			if (R3_command = LOCK) then
				commandState <= LOCK;
			end if;
		end if;
	end process;

	process(commandState)
	begin
		case commandState is
			when RELEASE => -- AUTOMATIC
				lockStateOut <= RELEASED;
			when RESERVE => -- DONT CHANGE
				lockStateOut <= RESERVED;
			when LOCK => -- DONT CHANGE
				lockStateOut <= LOCKED;
			when others =>
				lockStateOut <= LOCKED;
		end case;
	end process;

	process(commandState,Sw04_position,Sw07_position)
	begin
		case commandState is
			when RELEASE =>
				if ((Sw04_position = REVERSE and Sw07_position = NORMAL)) then
					if (Sw04_position = REVERSE and Sw07_position = NORMAL) then
						path <= 1;
					end if;
				else
					path <= 0;
				end if;
			when RESERVE =>
				path <= 2;
			when LOCK =>
				path <= 0;
			when others =>
				path <= 0;
		end case;
	end process;

	process(path,C29_aspect)
	begin
		case path is
			when 0 =>
				aspectStateOut <= RED;
			when 1 =>
				if (C29_aspect = RED) then
					aspectStateOut <= DOUBLE_YELLOW;
				end if;
				if (C29_aspect = DOUBLE_YELLOW) then
					aspectStateOut <= YELLOW;
				end if;
				if (C29_aspect = YELLOW) then
					aspectStateOut <= GREEN;
				end if;
				if (C29_aspect = GREEN) then
					aspectStateOut <= GREEN;
				end if;
			when 2 =>
				aspectStateOut <= GREEN;
			when others =>
				aspectStateOut <= RED;
		end case;
	end process;

	process(clock,reset,Q,restart)
	begin
		if (reset = '1' or Q = "011010000100111011100001011111") then
			timeout <= '1';
		end if;
		if (restart = '1') then
			timeout <= '0';
		end if;
	end process;

	process(timeout,aspectStateOut,aspectStateIn)
	begin
		if(aspectStateOut = RED and aspectStateIn = RED) then
			correspondenceState <= RED;
			restart <= '1';
		end if;
		if(aspectStateOut = GREEN and aspectStateIn = GREEN) then
			correspondenceState <= GREEN;
			restart <= '1';
		end if;
		if(aspectStateOut = DOUBLE_YELLOW and aspectStateIn = DOUBLE_YELLOW) then
			correspondenceState <= DOUBLE_YELLOW;
			restart <= '1';
		end if;
		if(aspectStateOut = YELLOW and aspectStateIn = YELLOW) then
			correspondenceState <= YELLOW;
			restart <= '1';
		end if;
	end process;
end Behavioral;