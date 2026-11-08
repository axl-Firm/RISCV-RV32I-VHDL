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

entity DI is 
	port (
		in_instruction : in std_logic_vector(31 downto 0);
		imms : out std_logic_vector (31 downto 0);
		op_code : out std_logic_vector (6 downto 0);
		funct7,imm2 : out std_logic_vector (6 downto 0);
		funct3 : out std_logic_vector (2 downto 0);
		rd : out std_logic_vector (4 downto 0);
		rs1,imm1 : out std_logic_vector (4 downto 0);
		rs2 : out std_logic_vector (4 downto 0);
		is_add,is_sub,is_and,is_or,is_xor,is_slt,is_sll,is_srl,is_SW : out std_logic
		);
end DI;

-- Define behavior of Instruction Decoder
architecture behavioral of DI is

signal cond_add : boolean;
signal cond_sub : boolean;
signal cond_and : boolean;
signal cond_or : boolean;
signal cond_xor : boolean;
signal cond_sll : boolean ;
signal cond_srl : boolean;
signal cond_slt : boolean;
signal cond_SW : boolean;

signal sop_code : std_logic_vector(6 downto 0);
signal sfunct7 : std_logic_vector(6 downto 0);
signal sfunct3 : std_logic_vector(2 downto 0);

	begin  
		
		imm2 <= in_instruction (31 downto 25);
		imm1 <= in_instruction(11 downto 7);
		
		imms <= std_logic_vector (resize (signed (in_instruction (31 downto 25) & in_instruction(11 downto 7)),32));
		sop_code <= in_instruction(6 downto 0); -- Extracting operation code from the instruiction
		sfunct7 <= in_instruction(31 downto 25); -- Extracting part one of operand from the instruction
		sfunct3 <= in_instruction(14 downto 12); -- Extracting part one of operand from the instruction
		
		rd <= in_instruction(11 downto 7);
		rs1 <= in_instruction(19 downto 15);
		rs2 <= in_instruction(24 downto 20);

		op_code <= sop_code;
		funct7 <= sfunct7;
		funct3 <= sfunct3;
		
		cond_add <= (sop_code = "0110011" and sfunct3 = "000" and sfunct7 = "0000000");
		cond_sub <= (sop_code = "0110011" and sfunct3 = "000" and sfunct7 = "0100000");
		cond_and <= (sop_code = "0110011" and sfunct3 = "111" and sfunct7 = "0000000");
		cond_or <= (sop_code = "0110011" and sfunct3 = "110" and sfunct7 = "0000000");
		cond_xor <= (sop_code = "0110011" and sfunct3 = "100" and sfunct7 = "0000000");
		cond_sll <= (sop_code = "0110011" and sfunct3 = "001" and sfunct7 = "0000000");
		cond_srl <= (sop_code = "0110011" and sfunct3 = "101" and sfunct7 = "0000000");
		cond_slt <= (sop_code = "0110011" and sfunct3 = "010" and sfunct7 = "0000000");
		cond_SW <= (sfunct3 = "010" and sop_code = "0100011");
		
		is_add <= '1' when cond_add else '0';
		
		is_sub <= '1' when cond_sub else '0';
		
		is_and <= '1' when cond_and else '0';
		
		is_or <= '1' when cond_or else '0';
		
		is_xor <= '1' when cond_xor else '0';
		
		is_srl <= '1' when cond_srl else '0';
		
		is_slt <= '1' when cond_slt else '0';
		
		is_sll <= '1' when cond_sll else '0';
		
		is_SW <= '1' when cond_SW else '0';
		
	end behavioral;
	