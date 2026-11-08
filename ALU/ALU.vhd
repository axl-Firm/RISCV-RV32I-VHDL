---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : ALU
-- Module name : ALU - Calcul
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
	port (
		in_1,in_2 : in std_logic_vector (31 downto 0);
		s_out : out std_logic_vector(31 downto 0);
		op_select : in std_logic_vector (3 downto 0)
		);
end ALU;

architecture calcul of ALU is 
	signal retenu : unsigned (0 downto 0);
	signal b_bar,result_arith : unsigned (31 downto 0);
	
	begin
		b_bar <= unsigned (not (in_2)) when (op_select = "0001") else unsigned(in_2);
		retenu <= "1" when (op_select ="0001") else "0";
		result_arith <= (unsigned (in_1)+ b_bar) +retenu;
			
		s_out <= std_logic_vector(result_arith)
		when (op_select="0001" or op_select ="0000") else
		(in_1 or in_2) when (op_select="0010") else
		(in_1 and in_2) when (op_select="0011") else
		(in_1 xor in_2) when (op_select="0100") else
		std_logic_vector( 
			shift_left(unsigned(in_1), to_integer(unsigned(in_2(4 downto 0)))))		
		when (op_select = "0101") else
			std_logic_vector(to_unsigned (1,s_out'length))
		when ( op_select = "0110" and signed (in_1) < signed (in_2)) else  
			std_logic_vector( 
				shift_right(unsigned(in_1), to_integer(unsigned (in_2(4 downto 0))))) 
		when op_select ="0111" else (others => '0');
		
end architecture calcul;