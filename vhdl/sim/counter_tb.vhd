-- Author: Simon Dorrer, k12005887
-- Author: Anna Werzi, k12005895

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.std_definitions.all;
use work.all;

entity SeqCir_tb is

end entity SeqCir_tb;

architecture bhv of SeqCir_tb is

-- Constants
constant COUNTER_MAX       : natural := 10;	-- 10Hz (later 50MHz)
constant COUNTER_BITWIDTH  : natural := natural(ceil(log2(real(COUNTER_MAX))));

-- Inputs
signal clock 			  : std_ulogic := '0';
signal reset 			  : std_ulogic := '0';
signal start_button : std_ulogic := '0';

-- Outputs
signal led 				  : std_ulogic := '0';

begin

  -- Embed DUT SeqCir
  dut_SeqCir: entity SeqCir(rtl)
	generic map(
    COUNTER_BITWIDTH => COUNTER_BITWIDTH,
    COUNTER_MAX      => COUNTER_MAX
  )
	port map(
		clock_i 			  => clock,
		reset_i 			  => reset,
		start_button_i 	=> start_button,
		led_o				    => led
	);
	-- ============================================
  
  -- Simulating clock signal --> comes from FPGA board later on
	clk_proc: process
	begin
		clock <= not clock;
		wait for 5 ns;
    -- wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
  -- ============================================
  
  -- Stimuli Process
	stimuli: process
	begin
    wait for 30 ns;
		start_button <= '1'; -- button pressed
		wait for 70 ns;
		start_button <= '0'; -- button released
		
		wait for 160 ns;
		reset <= '1';		 -- reset activ
		wait for 20 ns;
		reset <= '0';
		
		wait;
	end process stimuli;
  -- ============================================
end architecture bhv;