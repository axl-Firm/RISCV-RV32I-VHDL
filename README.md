# RISC-V RV32I-Based Processor in VHDL

An educational multicycle processor written in VHDL, developed with Intel Quartus Prime and targeting an Intel MAX 10 FPGA.

This project explores how a processor loads, fetches, decodes, and executes instructions by implementing its main hardware components and their control logic.

> **Project status:** Work in progress. The current design implements a subset of RV32I, not a complete RV32I processor or a complete microcontroller.

## Table of Contents

- [Project Goals](#project-goals)
- [Development Tools](#development-tools)
- [Current Features](#current-features)
- [Supported Instructions](#supported-instructions)
- [Architecture](#architecture)
- [Hardware Modules](#hardware-modules)
- [Control Sequence](#control-sequence)
- [Top-Level Interface](#top-level-interface)
- [Program Loading](#program-loading)
- [Simulation and Verification](#simulation-and-verification)
- [Current Limitations](#current-limitations)
- [Roadmap](#roadmap)
- [Author](#author)

## Project Goals

- Understand the internal organization of a processor.
- Design and connect hardware modules in VHDL.
- Implement an instruction-fetch and execution sequence.
- Build a datapath containing a register bank and an ALU.
- Coordinate synchronous components using a finite-state machine.
- Verify behavior using testbenches, assertions, and waveform analysis.
- Gradually extend the instruction set and validate the design on FPGA.

## Development Tools

| Tool / Target | Purpose |
|---|---|
| VHDL | Hardware description language |
| Intel Quartus Prime | Project management, synthesis, and FPGA implementation |
| ModelSim / Questa | Functional simulation |
| Intel MAX 10 | Target FPGA family |

## Current Features

- 32-bit datapath.
- 32-bit program counter.
- Sequential execution using `PC + 4`.
- Instruction-memory interface addressing 16 instruction locations.
- External program-loading interface.
- Instruction register with a dedicated write-enable signal.
- Decoder for five register-to-register instructions.
- Register bank configured as 32 registers of 32 bits.
- Two synchronous register-read outputs and one synchronous write input.
- Special handling of `x0`: reads return zero and writes are ignored.
- Arithmetic and logic unit.
- Multicycle control unit.
- Processor-level simulation testbench.

## Supported Instructions

| Instruction | Operation |
|---|---|
| `ADD rd, rs1, rs2` | Addition |
| `SUB rd, rs1, rs2` | Subtraction |
| `AND rd, rs1, rs2` | Bitwise AND |
| `OR rd, rs1, rs2` | Bitwise OR |
| `XOR rd, rs1, rs2` | Bitwise exclusive OR |

The current implementation does not yet support immediate instructions, memory loads and stores, branches, or jumps.

## Architecture

The top-level entity, `Processor`, connects the instruction path, the operand/result path, and the control unit.

### Instruction Path

```text
Program Counter
       |
       | Instruction address
       v
Instruction Memory
       |
       | 32-bit instruction
       v
Instruction Register
       |
       v
Instruction Decoder
       |
       +---- rs1, rs2, rd
       |
       +---- ALU operation selection
```

### Operand and Result Path

```text
                    +------------------+
rs1 --------------->|                  |---- Operand 1 ----+
rs2 --------------->|  Register Bank   |                   |
rd ---------------->|                  |---- Operand 2 ----+--> ALU
                    |                  |                         |
                    |                  |<------- Result ---------+
                    +------------------+
```

### Control Unit

The controller generates the signals required to:

- Select instruction-memory addressing mode.
- Enable instruction-memory access.
- Load the instruction register.
- Read the source registers.
- Write the destination register.
- Update the program counter.

## Hardware Modules

| Entity | Description |
|---|---|
| `Processor` | Top-level integration |
| `PC` | Program counter |
| `Imem` | Instruction memory |
| `IR` | Instruction register |
| `DI` | Instruction decoder |
| `register_banks` | Register storage and access |
| `ALU` | Arithmetic and logical operations |
| `sequenceur_PC` | Finite-state-machine controller |
| `tb` | Processor-level testbench |

### Program Counter

The PC is reset to zero and updated when `en_PC` is asserted.

The current next-address calculation is:

```vhdl
next_PC_in <= std_logic_vector(unsigned(out_PC_in) + 4);
```

Only sequential execution is currently implemented.

### Instruction Memory

The memory address depends on the operating mode:

```vhdl
addr_mem <= prog_addr when mode_chargement = '1'
            else out_PC_in(5 downto 2);
```

- During loading, `prog_addr` selects the instruction location.
- During execution, the selected PC bits address the memory.

| PC address | Instruction-memory location |
|---|---|
| `0x00000000` | 0 |
| `0x00000004` | 1 |
| `0x00000008` | 2 |
| `0x0000000C` | 3 |

The current address interface is 4 bits wide and selects 16 locations.

Execution beyond the intended memory range is not yet explicitly handled.

### Instruction Register

The instruction register captures the memory output when `IR_en` is asserted.

It holds the current instruction during decoding, operand reading, and result writeback.

### Instruction Decoder

The decoder extracts:

- `op_code`
- `funct3`
- `funct7`
- `rs1`
- `rs2`
- `rd`

It also identifies the supported operations through:

```text
is_add
is_sub
is_and
is_or
is_xor
```

### Register Bank

The register bank uses the following address-width generic:

```vhdl
TAILLE : positive := 5;
```

This configuration provides 32 registers of 32 bits.

| Port | Function |
|---|---|
| `addr_1` | First source-register address |
| `addr_2` | Second source-register address |
| `addr_w` | Destination-register address |
| `in_data1` | First read-data output |
| `in_data2` | Second read-data output |
| `out_data` | Write-data input |

Despite their names, `in_data1` and `in_data2` are outputs of this entity.

Reads and writes occur on rising clock edges:

| Control signals | Action |
|---|---|
| `chip_en = '1'`, `r_w = '1'` | Read both source registers |
| `chip_en = '1'`, `r_w = '0'` | Write the destination register |

The implementation returns zero when reading `x0` and blocks writes to it.

### ALU

The ALU receives two 32-bit operands from the register bank.

Its output is connected to the register-bank write-data input.

| `ALU_decode` | Operation |
|---|---|
| `000` | ADD |
| `001` | SUB |
| `010` | OR |
| `011` | AND |
| `100` | XOR |
| `111` | Default selection |

The default selection is used when none of the supported operations is recognized. Safe handling of unsupported instructions remains to be implemented.

## Control Sequence

The controller uses five states:

| State | Function |
|---|---|
| `CHARGEMENT_PGR` | Load program instructions |
| `LECTURE_MEM` | Read instruction memory |
| `CHARG_IR` | Capture the instruction |
| `LECTURE_REG` | Read source operands |
| `ECRITURE_PC` | Write the result and update the PC |

After reset, the processor enters `CHARGEMENT_PGR`.

When `start_exe` is asserted, execution follows:

```text
LECTURE_MEM
     |
     v
CHARG_IR
     |
     v
LECTURE_REG
     |
     v
ECRITURE_PC
     |
     +----------> LECTURE_MEM
```

Each instruction uses four execution cycles.

The `ECRITURE_PC` state enables both destination-register writeback and PC advancement.

## Top-Level Interface

| Signal | Direction | Width | Description |
|---|---|---|---|
| `clk` | Input | 1 bit | Clock |
| `reset` | Input | 1 bit | Active-high reset |
| `pgr_valid` | Input | 1 bit | Instruction-write request during loading |
| `start_exe` | Input | 1 bit | Start execution |
| `prog_addr` | Input | 4 bits | Loading address |
| `instruction_in` | Input | 32 bits | Instruction to load |
| `instruction_out` | Output | 32 bits | Current instruction held in IR |
| `out_PC` | Output | 32 bits | Current PC |
| `next_PC` | Output | 32 bits | Current PC plus four |

## Program Loading

1. Assert `reset`.
2. Release `reset`.
3. Set `prog_addr` and `instruction_in`.
4. Assert `pgr_valid` while keeping `start_exe` low.
5. Apply a rising clock edge to write the instruction.
6. Repeat for the remaining instructions.
7. Deassert `pgr_valid`.
8. Assert `start_exe` for a clock cycle.
9. Deassert `start_exe` and observe execution.

After startup, execution continues automatically. There is no halt or end-of-program mechanism yet.

## Simulation and Verification

### Top-Level Selection

| Task | Top-level entity |
|---|---|
| Quartus synthesis | `Processor` |
| ModelSim / Questa simulation | `tb` |

The testbench contains simulation-only timing statements and must not be selected as the synthesis top level.

### Testbench Sequence

The testbench:

1. Generates a clock with a 20 ns period.
2. Applies reset.
3. Loads five instructions.
4. Starts execution.
5. Checks selected IR and PC behaviors.
6. Stops the clock after the test sequence.

### Initial Sequencing Test

The first test program uses `x0` for both operands:

```asm
ADD x1, x0, x0
SUB x2, x0, x0
OR  x3, x0, x0
AND x4, x0, x0
XOR x5, x0, x0
```

This test allows observation of:

- Instruction loading.
- Instruction-register updates.
- Decoded fields.
- Program-counter progression.

All ALU results are expected to be zero. This scenario does not, by itself, distinguish the five operations.

### Nonzero-Operand Test

A second scenario was prepared using temporary reset values:

```text
x1 = 5
x2 = 3
```

| Instruction | Machine code | Expected destination value |
|---|---|---|
| `ADD x3, x1, x2` | `0x002081B3` | `x3 = 8` |
| `SUB x4, x1, x2` | `0x40208233` | `x4 = 2` |
| `OR x5, x1, x2` | `0x0020E2B3` | `x5 = 7` |
| `AND x6, x1, x2` | `0x0020F333` | `x6 = 1` |
| `XOR x7, x1, x2` | `0x0020C3B3` | `x7 = 6` |

This scenario requires the temporary register-bank reset initialization prepared for the test.

The original register-bank reset clears the read outputs but does not initialize the stored register values.

The temporary initialization is a test aid, not an instruction-based method of loading constants.

### Signals to Observe

```text
out_PC
next_PC
instruction_out
DUT/sequenceur/etat
DUT/ALU_decode
DUT/ALU/in_1
DUT/ALU/in_2
DUT/ALU/s_out
DUT/chip_en_b
DUT/r_w_b
```

The nonzero-operand testbench also provides `resultat_attendu` as a visual reference.

This signal does not automatically verify the actual ALU result.

### Verification Status

| Area | Status |
|---|---|
| Top-level integration | Implemented |
| Loading and execution controller | Implemented |
| Initial sequencing simulation | Observed in waveforms |
| Nonzero-operand test | Prepared; result confirmation pending |
| Automatic ALU-result checks | Not yet implemented |
| Complete writeback verification | Pending |
| Full RV32I compliance | Not implemented |
| On-board FPGA validation | Pending |

The current simulations are an initial validation step, not complete functional verification.

## Current Limitations

- Only five register-to-register instructions are supported.
- No immediate-operand datapath.
- No data memory or load/store instructions.
- No branches or jumps.
- No interrupts or peripheral subsystem.
- No dedicated handling to prevent writes for unsupported instructions.
- No halt or end-of-program detection.
- Instruction addressing is limited to the current 16-location interface.
- The final register-initialization policy remains to be defined.
- Timing and on-board behavior remain to be validated.

## Roadmap

### Functional Verification

- [ ] Confirm the five calculations with nonzero operands.
- [ ] Verify destination-register writeback.
- [ ] Add automatic ALU-result checks.
- [ ] Test dependencies between consecutive instructions.
- [ ] Verify `x0` behavior.
- [ ] Test negative values and arithmetic boundary cases.
- [ ] Test varied bit patterns for logical operations.
- [ ] Test reset during execution.
- [ ] Test pauses during program loading.

### Control Improvements

- [ ] Block writeback for unsupported instructions.
- [ ] Define end-of-program behavior.
- [ ] Handle instruction-memory address limits.
- [ ] Define reset initialization where required.

### Instruction-Set Extensions

- [ ] Add immediate decoding.
- [ ] Add an immediate generator.
- [ ] Add ALU operand selection.
- [ ] Implement `ADDI`.
- [ ] Add data memory.
- [ ] Implement load/store instructions.
- [ ] Implement branches and jumps.
- [ ] Extend next-PC selection.

### FPGA Implementation

- [ ] Review synthesis warnings.
- [ ] Review resource utilization.
- [ ] Add clock and timing constraints.
- [ ] Check timing-analysis results.
- [ ] Assign board-specific pins.
- [ ] Program the MAX 10 FPGA.
- [ ] Add a practical way to observe results on hardware.

## Author

Axel Thibaut Teuweussie  
University of Lorraine
````