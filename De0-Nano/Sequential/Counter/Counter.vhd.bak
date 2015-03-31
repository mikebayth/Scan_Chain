----------------------------------------
-- Calculator
-- Author : Titto Thomas
-- Date : 12/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity Calculator is
  port (
    in1, in2 : in std_logic_vector(7 downto 0);		-- Two inputs
	 op : in std_logic_vector(3 downto 0);			-- Operation
	 ans: out std_logic_vector(7 downto 0)				-- Answer
    );
end entity;

architecture behave of Calculator is

begin 

process(in1, in2, op)
begin
	if ( op = x"1") then
		ans <= std_logic_vector(unsigned(in1) + unsigned(in2));
	elsif ( op = x"2") then
		ans <= std_logic_vector(unsigned(in1) - unsigned(in2));
	elsif ( op = x"3") then
		ans <= std_logic_vector(unsigned(in1(3 downto 0)) * unsigned(in2(3 downto 0)));
	elsif ( op = x"4") and (not( in2 = x"00")) then
		ans <= std_logic_vector(unsigned(in1) / unsigned(in2));
	else
		ans <= x"00";
	end if;
end process;

end behave;