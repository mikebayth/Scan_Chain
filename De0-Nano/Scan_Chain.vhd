----------------------------------------
-- Scan Chain Module : WEL Lab
-- Author : Titto Thomas
-- Date : 12/3/2014
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Scan_Chain is
  generic (
    in_pins	: integer;			-- Number of input pins
    out_pins	: integer			-- Number of output pins
    );
  port (
    TDI		: in std_logic;			-- Test Data In
    TDO		: out std_logic;		-- Test Data Out
    TMS		: in std_logic;			-- TAP controller signal
    TCLK	: in std_logic;			-- Test clock
    TRST	: in std_logic;		-- Test reset
    dut_in	: out std_logic_vector(in_pins-1 downto 0);	-- Input for the DUT
    dut_out	: in std_logic_vector(out_pins-1 downto 0)	-- Output from the DUT
    );
end Scan_Chain;

architecture behave of Scan_Chain is

component Scan_reg is	-- register as a component
  generic (
    length	: integer			-- length of the register
    );
  port (
    clock, reset	: in std_logic;						-- clock and reset input
    PI			: in  std_logic_vector(length-1 downto 0);  		-- parallel data input
    PO			: out  std_logic_vector(length-1 downto 0);		-- parallel data output
    SI			: in std_logic ;					-- serial data input
    SO			: out std_logic;					-- serial data output
    L1_en, L2_en	: in std_logic;						-- Enable signal for two flip-flops
    cap_shft		: in std_logic;						-- Capture / Shift signal
    sel_reg		: in std_logic						-- Select register
    );
end component;

signal connct_reg : std_logic;
signal L1_en, L2_en, cap_shft, sel_reg : std_logic;
signal dut_out_reverse : std_logic_vector(out_pins-1 downto 0);

type MyState is (s_idle, s_DR, s_capture, s_shift, s_update);
signal current_state : MyState;

begin	--behave

	Reverse : process(dut_out)
	begin
		for i in dut_out'range loop
			dut_out_reverse(out_pins-1-i) <= dut_out(i); 
		end loop;
	end process Reverse;
	
	In_Reg  : Scan_reg generic map (in_pins) port map (TCLK, TRST, std_logic_vector(to_unsigned(0, in_pins)), dut_in, TDI, connct_reg, L1_en, L2_en, cap_shft, sel_reg);
	Out_Reg : Scan_reg generic map (out_pins) port map (TCLK, TRST, dut_out_reverse, open, connct_reg, TDO, L1_en, L2_en, cap_shft, sel_reg);

	TAP_Controller : process(TCLK, TRST)
	variable next_state : MyState;
	begin
		if TRST = '1' then
			current_state <= s_idle;
			   L1_en <= '0';
				L2_en <= '0';
				cap_shft <= '0';
				sel_reg <= '0';
		elsif TCLK'event and TCLK = '1' then
			current_state <= next_state;
		end if;

		case current_state is
			when s_idle =>
				if TMS = '1' then
					next_state := s_DR;
					L1_en <= '0';
					L2_en <= '0';
					cap_shft <= '0';
					sel_reg <= '1';
				else
					next_state := s_idle;
					L1_en <= '0';
					L2_en <= '0';
					cap_shft <= '0';
					sel_reg <= '0';
				end if;
			when s_DR =>
				if TMS = '0' then
					next_state := s_capture;
					L1_en <= '1';
					L2_en <= '0';
					cap_shft <= '0';
					sel_reg <= '1';
				else
					next_state := s_DR;
					L1_en <= '0';
					L2_en <= '0';
					cap_shft <= '0';
					sel_reg <= '1';
				end if;
			when s_capture =>
				if ( TMS = '0' ) then
					next_state := s_shift;
					L1_en <= '1';
					L2_en <= '0';
					cap_shft <= '1';
					sel_reg <= '1';
				else
					next_state := s_update;
					L1_en <= '0';
					L2_en <= '1';
					cap_shft <= '0';
					sel_reg <= '1';
				end if;
			when s_shift =>
				if TMS = '1' then
					next_state := s_update;
					L1_en <= '0';
					L2_en <= '1';
					cap_shft <= '0';
					sel_reg <= '1';
				else
					next_state := s_shift;
					L1_en <= '1';
					L2_en <= '0';
					cap_shft <= '1';
					sel_reg <= '1';
				end if;
			when s_update =>
				L1_en <= '0';
				L2_en <= '0';
				cap_shft <= '0';
				sel_reg <= '0';
				next_state := s_idle;
		end case;
	end process TAP_Controller;

end architecture behave;
