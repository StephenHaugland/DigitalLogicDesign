------------------------------------------------
-- Module Name: majority4 
------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity majority4 is
-- complete the port statement for this module
-- defining inputs and output
    Port (  a : in STD_LOGIC;
            b : in STD_LOGIC;
            c : in STD_LOGIC;
            d : in STD_LOGIC;
            m : out STD_LOGIC
        );
end majority4;

architecture majority4 of majority4 is
begin
-- complete the behavioral code for this module
-- Boolean logic equation derived from k-map 
    m <= ((b and c and d) or (a and c and d) or (a and b and c) or (a and b and d));        
end majority4;