----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 02:20:59 PM
-- Design Name: 
-- Module Name: dsp48 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
library UNISIM;
use UNISIM.VComponents.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dsp48 is
    port( a, b : in std_logic_vector(15 downto 0); 
          p : out std_logic_vector(15 downto 0);
          clk, reset, clk_enable : in std_logic);
end dsp48;

-- architecture 
architecture Behavioral of dsp48 is
-- component signal 
component clb
  port(a, b : in std_logic_vector(15 downto 0);
       p : out std_logic_vector(15 downto 0));
end component;

-- signal declaration
signal p1 : std_logic_vector(15 downto 0);
signal a1 : std_logic_vector(15 downto 0);
signal b1 : std_logic_vector(15 downto 0);

-- Attribute Format:
--attribute use_dsp48 of "entity_name|component_name|signal_name}:
--{entity|component|signal} is "{auto|automax|yes|no}";

attribute use_dsp48: string; 
attribute use_dsp48 of Behavioral: architecture is "yes";

begin

    p1 <= std_logic_vector(unsigned(a1) + unsigned(b1));
    
       process(clk) -- process
       begin
       if (rising_edge(clk)) then
          if(reset = '1') then
            p <= (others => '0');
            a1 <= (others => '0');
            b1 <= (others => '0');
         
          elsif (clk_enable = '1') then
            a1 <= a;
            b1 <= b;
            p <= p1;
          end if;
       end if;
    end process;
  

end Behavioral;
