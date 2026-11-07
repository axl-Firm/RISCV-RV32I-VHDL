---------------------------------------------
--
-- Company : University of Lorraine
-- Student engineer : axel thibaut TEUWEUSSIE
--
-- Design name : tb
-- Module name : tb - simulation
-- Project Name : Microprocessor RISCV RV32I
-- Target device : MAX 10
--
---------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg.all;

entity tb is
end entity tb;

architecture simulation of tb is

    constant T_CLK : time := 20 ns;
    constant NB_INSTRUCTIONS : positive := 8;

    constant programme : type_mem := (
        0 => x"002081B3", -- ADD x3,  x1, x2
        1 => x"40208233", -- SUB x4,  x1, x2
        2 => x"0020E2B3", -- OR  x5,  x1, x2
        3 => x"0020F333", -- AND x6,  x1, x2
        4 => x"0020C3B3", -- XOR x7,  x1, x2
        5 => x"00209433", -- SLL x8,  x1, x2
        6 => x"0020A4B3", -- SLT x9,  x1, x2
        7 => x"0020D533", -- SRL x10, x1, x2
        others => (others => '0')
    );

    constant resultats : type_mem := (
        0 => x"00000008",
        1 => x"00000002",
        2 => x"00000007",
        3 => x"00000001",
        4 => x"00000006",
        5 => x"00000028",
        6 => x"00000000",
        7 => x"00000000",
        others => (others => '0')
    );

    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal pgr_valid : std_logic := '0';
    signal start_exe : std_logic := '0';

    signal prog_addr : std_logic_vector(3 downto 0)
        := (others => '0');

    signal instruction_in : std_logic_vector(31 downto 0)
        := (others => '0');

    signal instruction_out : std_logic_vector(31 downto 0);
    signal next_PC         : std_logic_vector(31 downto 0);
    signal out_PC          : std_logic_vector(31 downto 0);

    signal resultat_attendu : std_logic_vector(31 downto 0)
        := (others => '0');

    signal numero_calcul : integer range 0 to NB_INSTRUCTIONS := 0;
    signal fin : boolean := false;

begin

    DUT : entity work.Processor(com)
        generic map (
            init_pgr => programme
        )
        port map (
            clk             => clk,
            reset           => reset,
            pgr_valid       => pgr_valid,
            start_exe       => start_exe,
            next_PC         => next_PC,
            out_PC          => out_PC,
            instruction_in  => instruction_in,
            instruction_out => instruction_out,
            prog_addr       => prog_addr
        );

    horloge : process
    begin
        while not fin loop
            clk <= '0';
            wait for T_CLK / 2;

            clk <= '1';
            wait for T_CLK / 2;
        end loop;

        wait;
    end process horloge;

    stimuli : process

        procedure cycle is
        begin
            wait until rising_edge(clk);
            wait for 1 ns;
        end procedure;

    begin
        -- Reset : le banc de registres doit fournir x1=5 et x2=3.
        cycle;
        cycle;

        assert out_PC = x"00000000"
            report "ERREUR : PC incorrect au reset"
            severity failure;

        reset <= '0';
        cycle;

        -- Entree dans CHARG_IR.
        start_exe <= '1';
        cycle;
        start_exe <= '0';

        for i in 0 to NB_INSTRUCTIONS - 1 loop

            numero_calcul <= i + 1;
            resultat_attendu <= resultats(i);

            -- Cycle 1 : capture de l'instruction dans IR.
            cycle;

            assert instruction_out = programme(i)
                report "ERREUR : mauvaise instruction, case "
                       & integer'image(i)
                severity failure;

            -- Cycle 2 : lecture des registres sources.
            cycle;

            -- Cycle 3 : ecriture du resultat et mise a jour du PC.
            cycle;

            assert unsigned(out_PC) =
                   to_unsigned((i + 1) * 4, 32)
                report "ERREUR : PC incorrect apres l'instruction "
                       & integer'image(i + 1)
                severity failure;

        end loop;

        report "FIN : huit instructions et progression du PC verifiees."
            severity note;

        report "Verifier les resultats ALU et les registres dans les chronogrammes."
            severity note;

        fin <= true;
        wait;
    end process stimuli;

end architecture simulation;