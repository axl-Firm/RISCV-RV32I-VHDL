---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : Memory Instruction
-- Module name : Imem - mem
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Imem is 
generic ( 
			TAILLE: positive := 16
	);
	
port ( 
		clk,r_w,chip_en,reset : in std_logic;
		addr : in std_logic_vector (3 downto 0);
		data_in : in std_logic_vector(31 downto 0);
		data_out : out std_logic_vector(31 downto 0)
	 );
end Imem;

architecture mem of Imem is 
	type Imem_array is array (TAILLE-1 downto 0) of std_logic_vector (31 downto 0); 

	signal memo : Imem_array;

	begin 
		
		process (clk,reset)
		
			begin 
				if (reset ='1') then 
					data_out <= (others => '0');
				elsif rising_edge (clk) then 
					if (chip_en = '1' and r_w='1') then 
						data_out <= memo (to_integer (unsigned (addr)));
					elsif (chip_en = '1' and r_w ='0') then 
						memo (to_integer (unsigned (addr))) <= data_in;
					end if;
				end if;
		end process;
end architecture mem;	