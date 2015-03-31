----------------------------------------
-- Counter
-- Author : Titto Thomas
-- Date : 30/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
  port (
	 clock_50 : in std_logic;
    TDI		: in std_logic;			-- Test Data In
    TDO		: out std_logic;			-- Test Data Out
    TMS		: in std_logic;			-- TAP controller signal
    TCLK	: in std_logic;				-- Test clock
    TRST	: in std_logic;				-- Test reset
	 LED	: out std_logic_vector(7 downto 0)	-- Check LED's
  );
end Counter;

architecture behave of Counter is

component Scan_Chain is	-- register as a component
  generic (
    in_pins	: integer;			-- Number of input pins
    out_pins	: integer			-- Number of output pins
    );
  port (
    TDI		: in std_logic;			-- Test Data In
    TDO		: out std_logic;		-- Test Data Out
    TMS		: in std_logic;			-- TAP controller signal
    TCLK	: in std_logic;			-- Test clock
    TRST	: in std_logic;			-- Test reset
    dut_in	: out std_logic_vector(in_pins-1 downto 0);	-- Input for the DUT
    dut_out	: in std_logic_vector(out_pins-1 downto 0);	-- Output from the DUT
	 state : out std_logic_vector(7 downto 0)
    );
end component;

component Count is
  port (
    clock, reset	: in std_logic;	-- Clock and reset signal
	 count : out std_logic_vector(7 downto 0)	-- Count output
    );
end component;

signal dut_in : std_logic_vector(1 downto 0);
signal dut_out, state : std_logic_vector(7 downto 0);

signal clock, reset : std_logic;

begin  -- behave

  SC : Scan_Chain generic map (2,8) port map ( TDI, TDO, TMS, TCLK, TRST, dut_in, dut_out, state );		-- Connect the scan chain for testing
  DUT: Count port map (clock, reset, dut_out);

  clock <= dut_in(0);
  reset <= dut_in(1);
  
  LED <= dut_out;
end behave;

