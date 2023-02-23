-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- entity
entity adder16bit is
  port(a, b : in std_logic_vector(15 downto 0);
       p : out std_logic_vector(15 downto 0));
end adder16bit;
       
-- architecture
 architecture added of adder16bit is
 begin  
 
       p <= std_logic_vector(unsigned(a) + unsigned(b));

            
end added;
