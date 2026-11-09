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

use work.pkg.all;

entity Imem is
 
generic ( 
			init_pgr : type_mem := (others => (others => '0'))
	);
	
port ( 
		clk,r_w,chip_en,reset,read_imem_en : in std_logic;
		addr : in std_logic_vector (3 downto 0);
		data_in : in std_logic_vector(31 downto 0);
		data_out : out std_logic_vector(31 downto 0)
	 );
end Imem;

architecture mem of Imem is 

	signal memo : type_mem := init_pgr;
	signal d_out : std_logic_vector (31 downto 0); 
	
	begin 
		
		d_out <= memo (to_integer (unsigned (addr))) when read_imem_en = '1'
		else (others => '0');
		data_out <= d_out;
		process (clk)
		
			begin 
				if rising_edge (clk) then 
				--if (chip_en = '1' and r_w='1') then 
					if (reset = '0' and chip_en = '1')then
						if (r_w ='0') then 
							memo (to_integer (unsigned (addr))) <= data_in;
						end if;
					end if;
				end if;
		end process;
end architecture mem;	