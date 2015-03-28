----------------------------------------
-- Counter : WEL Lab
-- Author : Titto Thomas
-- Date : 17/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
  port (
    clock		: in std_logic;			-- Clock signal
    reset		: in std_logic;			-- Reset signal
	 dummy_clk	: out std_logic;
	 count		: out std_logic_vector(7 downto 0)		-- Counter output
    );
end Counter;

architecture behave of Counter is
signal cnt : std_logic_vector(7 downto 0);
begin

Main: process(clock, reset)
begin
	if reset = '1' then
		cnt <= x"00";
	elsif rising_edge(clock) then
		if cnt = x"FF" then
			cnt <= x"00";
		else
			cnt <= cnt +1;
		end if;
	end if;
end process Main;

count <= cnt;

dummy_clk <= clock;
end behave;