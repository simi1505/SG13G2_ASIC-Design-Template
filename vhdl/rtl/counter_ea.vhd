-- Author: Simon Dorrer, k12005887
-- Author: Anna Werzi, k12005895

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.all;

entity counter is
	generic(
    COUNTER_BITWIDTH  : natural;
    COUNTER_MAX       : natural
  );
	port(
    clock_i 					        : in std_ulogic;
		reset_i 					        : in std_ulogic;
		counter_restart_strobe_i  : in std_ulogic;
    
		counter_value_o				    : out unsigned(COUNTER_BITWIDTH - 1 downto 0)
	);
end entity counter;

architecture rtl of counter is

-- Internal Signals
signal counter_value      : unsigned(COUNTER_BITWIDTH - 1 downto 0);
signal next_counter_value : unsigned(COUNTER_BITWIDTH - 1 downto 0);
  
begin

  reg_proc: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
			counter_value <= (others => '0');
		elsif rising_edge(clock_i) then
			counter_value <= next_counter_value;
		end if;
	end process reg_proc;
	-- =====================================================
	
	cnt_logic: process(counter_value, counter_restart_strobe_i) is
	begin
		-- default assignment
		next_counter_value <= counter_value;
		
		if counter_restart_strobe_i = '1' then
			next_counter_value <= (others => '0');
		else 
			next_counter_value <= counter_value + 1;
		end if;
	end process cnt_logic;
  -- =====================================================
  
  -- Concurrent statement to set the current counter value to the output
  counter_value_o <= counter_value;
  -- =====================================================
end architecture rtl;