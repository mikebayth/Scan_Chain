----------------------------------------
-- Adder
-- Author : Titto Thomas
-- Date : 12/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder is
  port (
	 clock_50 : in std_logic;
    TDI		: in std_logic;			-- Test Data In
    TDO		: out std_logic;			-- Test Data Out
    TMS		: in std_logic;			-- TAP controller signal
    TCLK	: in std_logic;				-- Test clock
    TRST	: in std_logic;				-- Test reset
	 LED	: out std_logic_vector(7 downto 0)	-- Check LED's
  );
end Adder;

architecture behave of Adder is

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
    dut_out	: in std_logic_vector(out_pins-1 downto 0)	-- Output from the DUT
    );
end component;

component Counter is
  port (
    clock		: in std_logic;			-- Clock signal
    reset		: in std_logic;			-- Reset signal
	 dummy_clk	: out std_logic;
	 count		: out std_logic_vector(7 downto 0)		-- Counter output
    );
end component;

signal dut_in : std_logic_vector(1 downto 0);
signal state : std_logic_vector(3 downto 0);
signal dut_out : std_logic_vector(7 downto 0);

signal clock, reset, dummy_clk : std_logic;

begin  -- behave

  SC : Scan_Chain generic map (2,8) port map ( TDI, TDO, TMS, TCLK, TRST, dut_in, dut_out );		-- Connect the scan chain for testing
  DUT: Counter port map (clock, reset, dummy_clk, dut_out);
  
  clock <= dut_in(1);
  reset <= dut_in(0);
  
  LED(5 downto 0) <= dut_out(5 downto 0);
  LED(6) <= dut_in(1);
  LED(7) <= dummy_clk;
end behave;

