-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;

library UNISIM;
use UNISIM.VComponents.all;

-- entity
entity _ of _ is
end _;
-- architecture
--attribute use_dsp48 of "entity_name|component_name|signal_name}:
--{entity|component|signal} is "{auto|automax|yes|no}";

attribute use_dsp48: string; 
attribute use_dsp48 of <your_architecture_name>: architecture is "yes";
  
