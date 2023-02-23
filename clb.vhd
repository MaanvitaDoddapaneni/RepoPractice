-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity adder16bit is
  port(a, b : in std_logic_vector(15 downto 0);
       clk, reset, clock_enable : in std_logic;
       abOut : out std_logic_vector(15 downto 0);
end adder16bit;
       
-- architecture
 architecture added of adder16bit is
       -- component declaration
       component adder
         port(a, b : in std_logic_vector(15 downto 0);
              clk, reset, clk_enable : in std_logic;
              abOut : out std_logic_vector(15 downto 0);
       end component;
 
 begin  
     -- is this part needed if we have assignments in the process?
       adding : adder16bit
         port map( in1 <= a;
                   in2 <= b;
                   clk <=   clk;
                   reset <= reset;
                   clk_enable <= clk_enable;
                   output <= abOut);
     -----------------------------------------------------------------
              
       output <= in1 + in2;
       
       process(clk) -- process
       begin
       if (rising_edge(clk)) then
          if(reset = '1') then
            output <= (others => '0');
            in1 <= (others => '0');
            in2 <= (others => '0');
          elsif (clk_enable = '1') then
            in1 <= a;
            in2 <= b;
            addOut <= output;
          end if;
       end if;
 end process;        
end added;
