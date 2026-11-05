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

entity register_banks is 
generic (
	TAILLE : positive := 5
	);
	port ( 
		addr_1,addr_2 : in std_logic_vector (TAILLE-1  downto 0);
		clk,r_w,reset,chip_en : in std_logic;
		in_data1,in_data2 : out std_logic_vector (31 downto 0);
		out_data : in std_logic_vector (31 downto 0);
		addr_w : in std_logic_vector (TAILLE-1 downto 0)
		);
end register_banks;

architecture behavior of register_banks is

type register_banks_array is array ((2**TAILLE-1) downto 0) of std_logic_vector (31 downto 0);

signal banks : register_banks_array;

	begin 
	
		process (clk, reset)
			begin 
				if (reset ='1') then 
					in_data1 <= (others => '0');
					in_data2 <= (others => '0');
					banks <= (
						  1      => x"00000005", -- x1 = 5
						  2      => x"00000003", -- x2 = 3
						  others => (others => '0'));
				elsif (rising_edge (clk)) then 
					if (chip_en='1' and r_w ='1') then 
						if (unsigned (addr_1) = 0) then
							in_data1 <= (others => '0'); else in_data1 <= banks(to_integer(unsigned(addr_1)));
						end if;
						if (unsigned (addr_2) = 0) then
							in_data2 <= (others => '0'); else in_data2 <= banks(to_integer(unsigned(addr_2)));
						end if;
					elsif (chip_en='1' and r_w ='0') then 
						if (unsigned (addr_w)/=0) then 
							banks (to_integer(unsigned(addr_w))) <= out_data;
						end if;
					end if ;
				end if;
		end process;
end behavior;