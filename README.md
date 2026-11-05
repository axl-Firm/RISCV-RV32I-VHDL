# RISC-V RV32I-Based Processor in VHDL

An educational multicycle processor written in VHDL, developed with Intel Quartus Prime and targeting an Intel MAX 10 FPGA.

The project explores how a processor loads, fetches, decodes, and executes instructions by implementing its main hardware components and their control logic.

> Work in progress: the current design implements a subset of RV32I. It is not a complete RV32I implementation or a complete microcontroller.

## Project Goals

- Understand the internal organization of a processor.
- Design and connect hardware modules in VHDL.
- Implement instruction loading, fetching, decoding, and execution.
- Coordinate synchronous components using a finite-state machine.
- Verify behavior using testbenches, assertions, and waveform analysis.
- Progress toward FPGA implementation and a larger instruction set.

## Development Tools

| Tool / Target | Purpose |
|---|---|
| VHDL | Hardware description |
| Intel Quartus Prime | Project management, synthesis, and FPGA implementation |
| ModelSim / Questa | Functional simulation |
| Intel MAX 10 | Target FPGA family |

## Current Features

- 32-bit datapath and program counter.
- Sequential execution using `PC + 4`.
- Instruction-memory interface addressing 16 instruction locations.
- External program-loading interface.
- Instruction register with a dedicated write-enable signal.
- Decoder supporting five register-to-register instructions.
- Register bank configured as 32 registers of 32 bits.
- Two synchronous register-read outputs and one synchronous write input.
- Special handling of `x0`: reads return zero and writes are ignored.
- Arithmetic and logic unit.
- Multicycle finite-state-machine controller.
- Processor-level simulation testbench.

## Supported Instructions

| Instruction | Operation |
|---|---|
| `ADD rd, rs1, rs2` | Addition |
| `SUB rd, rs1, rs2` | Subtraction |
| `AND rd, rs1, rs2` | Bitwise AND |
| `OR rd, rs1, rs2` | Bitwise OR |
| `XOR rd, rs1, rs2` | Bitwise exclusive OR |

Immediate instructions, loads, stores, branches, and jumps are not implemented yet.

## Architecture and Hardware Modules

The top-level entity, `Processor`, connects the instruction path, the operand/result path, and the control unit.

The PC selects an instruction-memory location. The instruction is captured in the IR and decoded to obtain the source-register addresses, destination-register address, and ALU operation. The register bank supplies two operands to the ALU, and the result is written back to the destination register.

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

The PC is reset to zero and updated when `en_PC` is asserted. The next address is calculated as:

```vhdl
next_PC_in <= std_logic_vector(unsigned(out_PC_in) + 4);
```

Only sequential execution is currently supported.

### Instruction Memory

The memory address depends on the operating mode:

```vhdl
addr_mem <= prog_addr when mode_chargement = '1'
            else out_PC_in(5 downto 2);
```

During program loading, `prog_addr` selects the instruction location. During execution, the selected PC bits address the memory.

| PC address | Instruction-memory location |
|---|---|
| `0x00000000` | 0 |
| `0x00000004` | 1 |
| `0x00000008` | 2 |
| `0x0000000C` | 3 |

The current 4-bit address interface selects 16 locations. Execution beyond the intended range is not explicitly handled yet.

### Instruction Register and Decoder

The IR captures the instruction-memory output when `IR_en` is asserted and holds the instruction during execution.

The decoder extracts `op_code`, `funct3`, `funct7`, `rs1`, `rs2`, and `rd`. It generates operation-recognition signals for ADD, SUB, AND, OR, and XOR.

### Register Bank

With the address-width generic `TAILLE = 5`, the register bank provides 32 registers containing 32-bit values.

| Port | Function |
|---|---|
| `addr_1` | First source-register address |
| `addr_2` | Second source-register address |
| `addr_w` | Destination-register address |
| `in_data1` | First read-data output |
| `in_data2` | Second read-data output |
| `out_data` | Write-data input |

Despite their names, `in_data1` and `in_data2` are outputs of the register-bank entity.

Accesses occur on rising clock edges:

| Control signals | Action |
|---|---|
| `chip_en = '1'`, `r_w = '1'` | Read both source registers |
| `chip_en = '1'`, `r_w = '0'` | Write the destination register |

Reads from `x0` return zero, and writes to `x0` are blocked.

### ALU

The ALU receives two 32-bit operands from the register bank. Its result is connected to the register-bank write-data input.

| `ALU_decode` | Operation |
|---|---|
| `000` | ADD |
| `001` | SUB |
| `010` | OR |
| `011` | AND |
| `100` | XOR |
| `111` | Default selection |

The default selection is used when no supported operation is recognized. Dedicated handling of unsupported instructions remains to be implemented.

## Control Sequence

The controller uses five states:

| State | Function |
|---|---|
| `CHARGEMENT_PGR` | Load program instructions |
| `LECTURE_MEM` | Read instruction memory |
| `CHARG_IR` | Capture the instruction |
| `LECTURE_REG` | Read source operands |
| `ECRITURE_PC` | Write the result and update the PC |

After reset, the controller enters `CHARGEMENT_PGR`. When `start_exe` is asserted, execution begins and repeatedly passes through `LECTURE_MEM`, `CHARG_IR`, `LECTURE_REG`, and `ECRITURE_PC`.

Each instruction uses four execution cycles. The final state enables both destination-register writeback and PC advancement.

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

## Loading and Running a Program

1. Assert `reset`, then release it.
2. Set `prog_addr` and `instruction_in`.
3. Assert `pgr_valid` while keeping `start_exe` low.
4. Apply a rising clock edge to write the instruction.
5. Repeat for the remaining instructions.
6. Deassert `pgr_valid`.
7. Assert `start_exe` for a clock cycle, then deassert it.
8. Observe program execution.

Execution continues automatically after startup. A halt or end-of-program mechanism has not yet been implemented.

## Simulation and Verification

### Top-Level Selection

| Task | Top-level entity |
|---|---|
| Quartus synthesis | `Processor` |
| ModelSim / Questa simulation | `tb` |

The testbench contains simulation-only timing statements and must not be selected as the synthesis top level.

### Testbench Operation

The testbench generates a clock with a 20 ns period, applies reset, loads five instructions, starts execution, checks selected IR and PC behaviors, and stops the clock at the end of the scenario.

### Initial Sequencing Test

The first program uses `x0` for both operands:

```asm
ADD x1, x0, x0
SUB x2, x0, x0
OR  x3, x0, x0
AND x4, x0, x0
XOR x5, x0, x0
```

This test allows observation of instruction loading, IR updates, decoded fields, and PC progression. All ALU results are expected to be zero, so this scenario alone does not distinguish the five operations.

### Nonzero-Operand Test

A second scenario was prepared with temporary reset values `x1 = 5` and `x2 = 3`.

| Instruction | Machine code | Expected destination value |
|---|---|---|
| `ADD x3, x1, x2` | `0x002081B3` | `x3 = 8` |
| `SUB x4, x1, x2` | `0x40208233` | `x4 = 2` |
| `OR x5, x1, x2` | `0x0020E2B3` | `x5 = 7` |
| `AND x6, x1, x2` | `0x0020F333` | `x6 = 1` |
| `XOR x7, x1, x2` | `0x0020C3B3` | `x7 = 6` |

This scenario requires the temporary register-bank reset initialization prepared for the test. The original reset clears the read outputs but does not initialize the stored register values.

This initialization is a test aid, not a software-controlled constant-loading mechanism.

### Useful Waveform Signals

- `out_PC` and `next_PC`
- `instruction_out`
- `DUT/sequenceur/etat`
- `DUT/ALU_decode`
- `DUT/ALU/in_1` and `DUT/ALU/in_2`
- `DUT/ALU/s_out`
- `DUT/chip_en_b` and `DUT/r_w_b`

The nonzero-operand testbench provides `resultat_attendu` as a visual reference. It does not automatically check the actual ALU result.

### Verification Status

| Area | Status |
|---|---|
| Top-level integration | Implemented |
| Loading and execution controller | Implemented |
| Initial sequencing simulation | Observed in waveforms |
| Nonzero-operand test | Prepared; result confirmation pending |
| Automatic ALU-result checking | Not yet implemented |
| Complete register-writeback verification | Pending |
| Full RV32I compliance | Not implemented |
| On-board FPGA validation | Pending |

The current simulations represent an initial validation step, not complete functional verification.

## Remaining Work

### Verification

- Confirm the five calculations with nonzero operands and their destination-register writes.
- Add automatic checks for ALU results and writeback.
- Test dependencies between consecutive instructions.
- Verify `x0` behavior, negative values, arithmetic boundaries, and varied logical bit patterns.
- Test reset during execution and pauses during program loading.

### Control and Initialization

- Prevent writeback for unsupported instructions.
- Define end-of-program behavior.
- Handle instruction-memory address limits.
- Define the final register-reset and initialization policy.

### Instruction-Set Extensions

- Add immediate decoding, an immediate generator, and ALU operand selection.
- Implement `ADDI` to manipulate constants without test-specific register initialization.
- Add data memory and load/store instructions.
- Add branches, jumps, and next-PC selection.

### FPGA Validation

- Review synthesis warnings and resource utilization.
- Add clock and timing constraints and check timing-analysis results.
- Assign board-specific pins and program the MAX 10 FPGA.
- Provide a practical way to observe results on hardware.

## Author

Axel Thibaut Teuweussie  
University of Lorraine
