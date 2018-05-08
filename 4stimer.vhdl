library ieee;
use ieee.std_logic_1164.all;

entity four_s_timer is
port (
	long_in: in bit;
	short_in: in bit;
	long_out: out bit;
	short_out: out bit
);
	
end entity four_s_timer;

architecture four_second of four_s_timer is

--signal clock_freq: integer := 60;
signal counting: boolean := false;
signal time_sec: integer;

begin

	counting <= true when short_in <= 1;
	short_out <= 1 when counting = true;
	counting <= false;
assert (True) report "Done";
	
end architecture four_second;