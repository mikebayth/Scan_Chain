----------------------------------------
-- Adder
-- Author : Titto Thomas
-- Date : 12/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Calc is
  port (
	 clock_50 : in std_logic;
    TDI		: in std_logic;			-- Test Data In
    TDO		: out std_logic;			-- Test Data Out
    TMS		: in std_logic;			-- TAP controller signal
    TCLK	: in std_logic;				-- Test clock
    TRST	: in std_logic;				-- Test reset
	 LED	: out std_logic_vector(7 downto 0)	-- Check LED's
  );
end Calc;

architecture behave of Calc is

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

component Calculator is
  port (
    in1, in2 : in std_logic_vector(7 downto 0);		-- Two inputs
	 op : in std_logic_vector(3 downto 0);			-- Operation
	 ans: out std_logic_vector(7 downto 0)				-- Answer
    );
end component;

signal dut_in : std_logic_vector(19 downto 0);
signal dut_out : std_logic_vector(7 downto 0);

signal in1, in2, state : std_logic_vector(7 downto 0);
signal op : std_logic_vector(3 downto 0);

begin  -- behave

  SC : Scan_Chain generic map (20,8) port map ( TDI, TDO, TMS, TCLK, TRST, dut_in, dut_out, state );		-- Connect the scan chain for testing
  DUT: Calculator port map (in1, in2, op, dut_out);
  
  op <= dut_in(19 downto 16);
  in1 <= dut_in(15 downto 8);
  in2 <= dut_in(7 downto 0);
  
  LED <= dut_out;
end behave;

