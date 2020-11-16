-------------------------------------------------------------------------
-- Module Name: sim_majority4 Test Bench Code
-------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_majority4 is
--  Port ( );           -- we don't need a port here!
end sim_majority4;

architecture Behavioral of sim_majority4 is
-- declare the majority4 component here
component majority4 is
    Port( a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    m : out STD_LOGIC  );
end component;

-- define signal wires to drive the inputs of our majority4 module
signal sim_a : STD_LOGIC;
signal sim_b : STD_LOGIC;
signal sim_c : STD_LOGIC;
signal sim_d : STD_LOGIC;


-- define a signal wire for the output of our majority4 module
signal sim_m: STD_LOGIC;


begin
-- Define a majority4 hardware object and connect its inputs to our simulation signals
sim_unit : majority4 Port Map ( 
        -- map the inputs / ouptut here
        a => sim_a,
        b => sim_b,
        c => sim_c,
        d => sim_d,
        m => sim_m
        );

process begin
    -- drive the input wires here 
    -- assert statement to check the outputs
    -- 0000 -> 0
    sim_a <= '0'; sim_b <= '0'; sim_c <= '0'; sim_d = '0'; wait for 10 ns;
    assert sim_m = '0' report "0 0 0 0 failed for m";
    -- 0001 -> 0
    sim_a <= '0'; sim_b <= '0'; sim_c <= '0'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '0' report "0 0 0 1 failed for m";
    -- 0010 -> 0
    sim_a <= '0'; sim_b <= '0'; sim_c <= '1'; sim_d = '0'; wait for 10 ns;
    assert sim_m = '0' report "0 0 1 0 failed for m";
    -- 0011 -> 0
    sim_a <= '0'; sim_b <= '0'; sim_c <= '1'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '0' report "0 0 1 1 failed for m";
    -- 0100 -> 0
    sim_a <= '0'; sim_b <= '1'; sim_c <= '0'; sim_d = '0'; wait for 10 ns;
    assert sim_m = '0' report "0 1 0 0 failed for m";
    -- 0101 -> 0
    sim_a <= '0'; sim_b <= '1'; sim_c <= '0'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '0' report "0 1 0 1 failed for m";
    -- 0111 -> 1
    sim_a <= '0'; sim_b <= '1'; sim_c <= '1'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '1' report "0 1 1 1 failed for m";
    -- 1000 -> 0
    sim_a <= '1'; sim_b <= '0'; sim_c <= '0'; sim_d = '0'; wait for 10 ns;
    assert sim_m = '0' report "1 0 0 0 failed for m";
    -- 1001 -> 0
    sim_a <= '1'; sim_b <= '0'; sim_c <= '0'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '0' report "1 0 0 1 failed for m";
    -- 1011 -> 1
    sim_a <= '1'; sim_b <= '0'; sim_c <= '1'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '1' report "1 0 1 1 failed for m";
    -- 1100 -> 0
    sim_a <= '1'; sim_b <= '1'; sim_c <= '0'; sim_d = '0'; wait for 10 ns;
    assert sim_m = '0' report "1 1 0 0 failed for m";
    -- 1101 -> 1
    sim_a <= '1'; sim_b <= '1'; sim_c <= '0'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '1' report "1 1 0 1 failed for m";
    -- 1110 -> 1
    sim_a <= '1'; sim_b <= '1'; sim_c <= '1'; sim_d = '0'; wait for 10 ns;
    assert sim_m = '1' report "1 1 1 0 failed for m";
    -- 1111 -> 1
    sim_a <= '1'; sim_b <= '1'; sim_c <= '1'; sim_d = '1'; wait for 10 ns;
    assert sim_m = '1' report "1 1 1 1 failed for m";

end process;


end Behavioral;
