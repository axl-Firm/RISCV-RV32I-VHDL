transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/Register/registers.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/IR/IR.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/Imem/Imem.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/Instruction_decoder/DI.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/RB/register_banks.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/PC/PC.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/ALU/ALU.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/sequenceur_PC/sequenceur_PC.vhd}
vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/Processor/Processor.vhd}

vcom -93 -work work {C:/Users/axelt/Documents/Projets persos/VHDL/Microprocesseur VHDL/Register/../Testbench/tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
