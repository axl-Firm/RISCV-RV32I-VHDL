---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : Instruction Decoder
-- Module name : DI - Behavioral
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is 

port (
	clk,en_PC,reset : in std_logic;
	next_PC : in std_logic_vector (31 downto 0);
	out_PC : out std_logic_vector (31 downto 0)
	);
end PC;

architecture stack_counter of PC is 
signal transit : std_logic_vector (31 downto 0);
	begin 
		out_PC <= transit ;
		PC_1 : entity work.registers (rtl)
		generic map (
			TAILLE => 32
			)
		port map (
			clk => clk,
			E_write => en_PC,
			reset => reset,
			a => next_PC,
			s => transit
			);
end stack_counter;