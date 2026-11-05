---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : register
-- Module name : registers - rtl
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declaring the entity of the register
entity registers is 

-- Generic lenght
generic (
		TAILLE: positive := 8);

port (
	clk : in std_logic;
	E_write : in std_logic;
	reset : in std_logic;
	a : in std_logic_vector(TAILLE -1 downto 0);
	s : out std_logic_vector(TAILLE -1 downto 0)
	);
end entity;

architecture rtl of registers is 
signal memo : std_logic_vector(TAILLE-1 downto 0);
	begin
	process(clk,reset)
begin
    if reset = '1'then
		memo <= (others => '0');
    elsif (rising_edge(clk) and E_write = '1') then 
      memo <= a;
    end if;
end process;
s <= memo;
end architecture;