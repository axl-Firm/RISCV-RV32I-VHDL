---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : Instruction register
-- Module name : IR - instr
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IR is 
port (
		clk,IR_write,reset : in std_logic;
		in_data : in std_logic_vector(31 downto 0);
		out_data : out std_logic_vector (31 downto 0)
		);

end entity;

architecture instr of IR is 

begin 	
Instruc_R : entity work.registers(rtl)
	generic map (
	TAILLE => 32
	)
	
	port map (
		clk => clk ,
		E_write => IR_write,
		reset => reset ,
		a => in_data,
		s => out_data
	);
end architecture ;