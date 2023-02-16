-- and
library IEEE;
use IEEE.std_logic_1164.all;


entity dataflow is
  port( a_in, b_in : in std_logic;
       c_in, d_in : in std_logic;
       y: out std_logic);
end dataflow;
  
architecture data of dataflow is

  -- intermediate signals
  signal s0_out : std_logic;
  signal s1_out : std_logic;
  signal s2_out : std_logic;

begin
  -- intermediate signal outputs
  s0_out <= (not(a_in)) and (not(b_in)); -- a_in=0, b_in=0
  s1_out <= a_in and b_in; -- a_in=1, b_in=1
  s2_out <= c_in or d_in;
  
-- final output yt
  y <= s0_out and s1_out and s2_out;

end data;
