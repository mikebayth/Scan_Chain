----------------------------------------
-- Counter
-- Author : Titto Thomas
-- Date : 12/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity Count is
  port (
    clock, reset	: in std_logic;	-- Clock and reset signal
	 count : out std_logic_vector(7 downto 0)	-- Count output
    );
end entity;

architecture behave of Count is
signal cnt : std_logic_vector(7 downto 0);
begin 

process(clock, reset)
begin
	if (reset = '1') then
		cnt <= x"00";
	elsif (clock'event and clock = '1')then
		if (cnt = x"FF") then
			cnt <= x"00";
		else
			cnt <= std_logic_vector(unsigned(cnt)+1);
		end if;	
	end if;
end process;

count <= cnt;

end behave;