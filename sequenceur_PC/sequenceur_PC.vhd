---------------------------------------------
--
-- Compagny : University of Lorraine
-- student ingeneer : axel thibaut TEUWEUSSIE
--
-- Design name : Sequenceur_PC
-- Module name : Sequenceur_PC - sequence
-- Project Name : Microprocessor RISCV RV321
-- Target device : MAX 10
--
---------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sequenceur_PC is 
	port (
		clk , reset,pgr_valid, start_exe : in std_logic;
		chip_en,r_w,IR_en,chip_en_b,r_w_b,en_PC,mode_chargement : out std_logic
		);
end sequenceur_PC;

architecture sequence of sequenceur_PC is 
	type state is (CHARGEMENT_PGR, CHARG_IR,LECTURE_REG,ECRITURE_PC);
	signal etat,etat_s : state; 
	
	begin 
		P1 : process (clk,reset)
			begin 
				if (reset ='1') then 
					etat <= CHARGEMENT_PGR;
				elsif (rising_edge(clk)) then 
					etat <= etat_s;
				end if;
		end process P1;
		
		P2 : process (etat,pgr_valid,start_exe)
			begin 
				 chip_en   <= '0';
				 r_w       <= '1';
				 IR_en     <= '0';
				 chip_en_b <= '0';
				 r_w_b     <= '1';
				 en_PC     <= '0';
				 mode_chargement <= '0';
				 
					if etat = CHARGEMENT_PGR then 
						mode_chargement <= '1';
						r_w <= '0';
							if pgr_valid = '1' and start_exe = '0' then
							chip_en <= '1';
							end if;
					elsif etat = CHARG_IR then 
						IR_en <= '1';
						chip_en <= '1';
						r_w <= '1';
					elsif etat = LECTURE_REG then 
						chip_en_b <= '1'; r_w_b <= '1';
					else 
						chip_en_b <= '1'; r_w_b <= '0'; en_PC <= '1';
					end if;
			end process P2;
				
		P3 : process (etat,start_exe)
			begin
				case etat is 
					when CHARGEMENT_PGR => 
						if start_exe = '1' then
							etat_s <= CHARG_IR;
						else
							etat_s <= CHARGEMENT_PGR;
						end if;
					when CHARG_IR =>
						etat_s <= LECTURE_REG; 
					when LECTURE_REG => 
						etat_s <= ECRITURE_PC;
					when ECRITURE_PC => 
						etat_s <= CHARG_IR;
				end case;
		end process P3;
end sequence;	