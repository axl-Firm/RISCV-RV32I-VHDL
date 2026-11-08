---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : data memory
-- Module name : data_mem - Behavior
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_mem is

generic (
	TAILLE : positive := 5
	);
 
port ( 
		addr_1 : in std_logic_vector (TAILLE-1  downto 0);
		clk,r_w,reset,chip_en : in std_logic;
		outp_data1 : out std_logic_vector (31 downto 0);
		in_data : in std_logic_vector (31 downto 0)
		);
end data_mem;

architecture Behavior of data_mem is 

	signal out_data1: std_logic_vector (31 downto 0);
	
	begin 
		
		outp_data1 <= out_data1;
		
		data_memory : entity work.register_banks (behavior)
			generic map (
				TAILLE => TAILLE
				)
				
			port map (
				clk => clk,
				r_w => r_w,
				reset => reset,
				chip_en => chip_en, 
				addr_w => addr_1,
				addr_1 => addr_1,
				addr_2 => (others=>'0'),
				in_data1 => out_data1,
				in_data2 => open,
				out_data => in_data
				);
end Behavior;