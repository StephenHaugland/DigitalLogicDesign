library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity majority4_top is
  Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);  -- 16 switch inputs
        LED : out STD_LOGIC_VECTOR (15 downto 0);  -- 4 leds above switches
        an  : out STD_LOGIC_VECTOR (3 downto 0);  -- Controls four 7-seg displays
        seg : out STD_LOGIC_VECTOR(6 downto 0);   -- 6 leds per display
        dp  : out STD_LOGIC                       -- 1 decimal point per display
  );
end majority4_top;

architecture majority4_top of majority4_top is
-- add the component statement here for the majority4 entity
  
  a <= sw(0)
begin

-- map the the wires from the board to the majority 4 compoment as
-- described in the lab instructions

----------------------Leave this untouched------------------------------
-- Turn off the 7-segment LEDs
an <= "1111";     -- wires supplying power to 4 7-seg displays
seg <= "1111111"; -- wires connecting each of 7 * 4 segments to ground
dp <= '1';        -- wire connects decimal point to ground

end majority4_top;
