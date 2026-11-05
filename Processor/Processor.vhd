---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : Processor
-- Module name : Processor - Calcul
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Processor is 
	port (
		clk,reset,pgr_valid, start_exe : in std_logic;
		next_PC,out_PC : out std_logic_vector (31 downto 0);
		instruction_in: in std_logic_vector(31 downto 0); 
		instruction_out : out std_logic_vector (31 downto 0);
		prog_addr : in std_logic_vector(3 downto 0)
		);
end Processor ;

architecture com of Processor is 
	signal next_PC_in : std_logic_vector (31 downto 0);
	signal out_PC_in : std_logic_vector (31 downto 0);
	signal instruc_in : std_logic_vector (31 downto 0);
	signal out_data_in : std_logic_vector (31 downto 0);
	signal op_code_int : std_logic_vector(6 downto 0);
	signal funct7_int : std_logic_vector(6 downto 0);
	signal funct3_int : std_logic_vector(2 downto 0);
	signal rd_int, rs1_int, rs2_int : std_logic_vector(4 downto 0);
	signal add_int, sub_int, and_int, or_int, xor_int : std_logic;
	signal out_data1,out_data2,in_data_ALU : std_logic_vector (31 downto 0);
	signal ALU_decode : std_logic_vector (2 downto 0); 
	signal r_w,r_w_b,chip_en_b,en_PC,chip_en,IR_en : std_logic;
	signal mode_chargement : std_logic;
	signal addr_mem : std_logic_vector(3 downto 0);

	begin 

		addr_mem <= prog_addr when mode_chargement = '1'
            else out_PC_in(5 downto 2);
	
		ALU_decode <= "000" when 
			add_int ='1'else "001" when 
			sub_int ='1'else "010" when 
			or_int ='1'else "011" when 
			and_int ='1'else "100" when 
			xor_int ='1'else "111";
			
		Program_counter : entity work.PC (stack_counter)
			port map (
				clk => clk,
				en_PC => en_PC,
				reset => reset,
				next_PC => next_PC_in,
				out_PC => out_PC_in
				);
				
		Instruction_memory : entity work.Imem (mem)
			port map (
				clk => clk,
				r_w => r_w,
				chip_en => chip_en,
				reset => reset,
				addr => addr_mem,
				data_in => instruction_in,
				data_out => out_data_in
				);
				
		Instruction_register : entity work.IR (instr)
			port map (
				clk => clk,
				reset => reset,
				IR_write => IR_en,
				in_data => out_data_in,
				out_data => instruc_in 
				);
				
		Instruction_decoder : entity work.DI (behavioral)
			port map (
				in_instruction => instruc_in,
				op_code => op_code_int, 
				funct7 => funct7_int,
 				funct3 => funct3_int,
				rd => rd_int,
				rs1 => rs1_int,
				rs2 => rs2_int,
				is_add => add_int,
				is_sub => sub_int,
				is_and => and_int,
				is_or => or_int,
				is_xor => xor_int
				);
			
		Register_banks : entity work.register_banks(behavior)
			port map (
				addr_1 => rs1_int,
				addr_2 => rs2_int,
				clk => clk,
				reset => reset, 
				chip_en => chip_en_b,
				r_w => r_w_b,
				in_data1 => out_data1,
				in_data2 => out_data2,
				out_data => in_data_ALU,
				addr_w => rd_int
				);
		
		ALU : entity work.ALU (calcul)
			port map (
				in_1 => out_data1,
				in_2 => out_data2,
				s_out => in_data_ALU,
				op_select => ALU_decode
				);
		
		sequenceur : entity work.sequenceur_PC
			port map(
				 clk => clk,
				 reset => reset,
				 pgr_valid => pgr_valid,
				 start_exe => start_exe,
				 mode_chargement => mode_chargement,
				 chip_en => chip_en,
				 r_w => r_w,
				 IR_en => IR_en,
				 chip_en_b => chip_en_b,
				 r_w_b => r_w_b,
				 en_PC => en_PC
				);
		
		next_PC_in <= std_logic_vector (unsigned (out_PC_in)+4);
		next_PC <= next_PC_in;
		out_PC <= out_PC_in;
		instruction_out <= instruc_in;
		
	end com;
					