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
- Decoder supporting eight register-to-register instructions and SW store decoding.
- S-type immediate reconstruction and signed extension from 12 to 32 bits.
- ALU second-operand selection between rs2 and the S-type immediate.
- Data-memory integration for SW, with separate memory and register-bank control signals (validation pending).
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
| `SLL rd, rs1, rs2` | Logical left shift; amount from rs2[4:0] |
| `SRL rd, rs1, rs2` | Logical right shift; amount from rs2[4:0] |
| `SLT rd, rs1, rs2` | Signed comparison; result is 1 if rs1 < rs2, otherwise 0 |
| `SW rs2, imm(rs1)` | Copy a 32-bit register value to memory at rs1 + signed immediate; integration in progress |

Register-register operations and the SW datapath are described in VHDL. The latest SW controller corrections and memory behavior still require compilation and simulation. ADDI, loads (including LW), branches, and jumps are not implemented yet.

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
| `ALU` | Arithmetic, logical, shift, and comparison operations |
| `data_mem` | Data-memory wrapper currently reusing register_banks; memory-specific behavior must be verified |
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

The decoder extracts `op_code`, `funct3`, `funct7`, `rs1`, `rs2`, and `rd`. It generates operation-recognition signals for ADD, SUB, AND, OR, XOR, SLL, SRL, SLT, and SW.

SW is recognized by opcode `0100011` and funct3 `010`. Its 12-bit immediate is reconstructed from instruction bits [31:25] followed by [11:7], then sign-extended to 32 bits. The immediate and `is_SW` are exported to Processor.

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

The ALU receives two 32-bit operands. Its first operand is the value read from rs1. Its second operand is selected in Processor: the value read from rs2 for register-register operations, or the extended S-type immediate for SW.

| `ALU_decode` | Operation |
|---|---|
| `0000` | ADD / SW address calculation |
| `0001` | SUB |
| `0010` | OR |
| `0011` | AND |
| `0100` | XOR |
| `0101` | SLL |
| `0110` | SLT (signed) |
| `0111` | SRL (logical) |

Shifts use only the five least significant bits of the second operand, giving amounts from 0 to 31. SLT produces a 32-bit value of 1 or 0. Unrecognized instructions currently select ADD in Processor; preventing unintended writeback remains necessary.

### Data Memory and SW Datapath

For `SW x3, 4(x1)`:

1. The register bank reads x1 and x3.
2. The decoder produces the sign-extended immediate 4 and asserts is_SW.
3. The ALU adds the content of x1 to 4.
4. The ALU result supplies the memory address; the content of x3 supplies write data.
5. The controller enables memory writing without register writeback.

```text
rs1 value -----> ALU <----- S-type immediate
                 |
                 +--------> data-memory address
rs2 value ----------------> data-memory write data
```

SW copies the source value; it does not clear the source register. No memory read result is needed for SW, so the data-memory read output is currently mapped to open.

With TAILLE = 5, data_mem addresses 32 words of 32 bits (128 bytes). The current connection uses ALU_result(6 downto 2) to convert a byte address into a word index. Only aligned addresses within the implemented range are intended; alignment and range checks are not implemented. Higher address bits are ignored, so out-of-range accesses can alias existing locations.

Within data_mem, both addr_w and addr_1 are connected to the wrapper address input. The write data input is connected to the content of rs2. The reused register_banks implementation must permit writes to location zero when used as data memory: the architectural x0 restriction must remain in the actual register bank, but must not restrict memory location zero. This adaptation has not yet been verified.

## Control Sequence

The latest supplied controller uses four states:

| State | Function |
|---|---|
| `CHARGEMENT_PGR` | Load program instructions |
| `CHARG_IR` | Enable instruction memory and instruction-register capture |
| `LECTURE_REG` | Read source registers |
| `ECRITURE_PC` | Commit register or memory write and advance PC |

After reset, the controller enters CHARGEMENT_PGR. Execution then follows CHARG_IR -> LECTURE_REG -> ECRITURE_PC -> CHARG_IR, giving three states per instruction in the latest version.

The older LECTURE_MEM state is absent from this version. Whether instruction-memory output is available in time for IR capture must be checked against the actual Imem read timing; a separate read/wait state may be needed for synchronous memory.

In ECRITURE_PC:

| Instruction | Register-bank action | Data-memory action | PC |
|---|---|---|---|
| Supported R-type operation | Write ALU result | Disabled | Advance by 4 |
| SW | Remain in read mode | Write rs2 value at calculated address | Advance by 4 |

The controller receives is_SW and provides separate chip_en_d and r_w_d outputs for data memory. Under the current control convention, r_w = 1 selects reading and r_w = 0 selects writing. Default data-memory commands disable access. The combinational output process must include is_SW in its sensitivity list and assign defaults to all outputs.

These changes are not yet fully validated against register-bank and memory clock-edge behavior.

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
- `DUT/SW_int`, `DUT/imms_int`, and `DUT/alu_in2`
- `DUT/in_data_ALU` (calculated byte address during SW)
- `DUT/out_data2` (SW write data)
- `DUT/chip_en_d` and `DUT/r_w_d`
- Internal data-memory contents for store verification

The nonzero-operand testbench provides `resultat_attendu` as a visual reference. It does not automatically check the actual ALU result.

### Tests to Add for the New Operations

- With rs1 = 5 and rs2 = 3, check SLL = 40, SRL = 0, and SLT = 0.
- Test signed SLT with negative operands and equal operands.
- Test shift amounts 0 and 31, plus values whose low five bits differ from the full value.
- For SW with base = 100, immediate = 4, and data = 8, check that memory word 26 receives 8.
- Check negative store offsets, location zero, consecutive stores, and preservation of source registers.
- Assert that SW never enables register writeback and R-type operations never enable data-memory writes.
- Confirm instruction-fetch timing after removal of LECTURE_MEM.

These are proposed tests, not reported passing results.

### Verification Status

| Area | Status |
|---|---|
| Top-level integration | Implemented |
| Loading and execution controller | Implemented |
| Initial sequencing simulation | Observed in waveforms |
| Nonzero-operand test | Prepared; result confirmation pending |
| Automatic ALU-result checking | Not yet implemented |
| Complete register-writeback verification | Pending |
| SLL, SRL, SLT | Described in ALU and decoder; simulation pending |
| S-type immediate and SW address path | Integrated in supplied code; validation pending |
| SW controller | Corrections proposed; compilation and timing validation pending |
| Data-memory location zero | Reused register-bank restriction must be checked/adapted |
| Full RV32I compliance | Not implemented |
| On-board FPGA validation | Pending |

The current simulations represent an initial validation step, not complete functional verification.

## Remaining Work

### Verification

- Confirm all eight register-register operations with nonzero operands and their destination-register writes.
- Validate SW stores and independent memory/register write controls.
- Apply the final syntax corrections: include is_SW in P2 sensitivity, add the missing then and outer end if, and map imms to imms_int in Processor.
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

- Extend the existing S-type immediate generation and operand selection to other instruction formats.
- Implement `ADDI` to manipulate constants without test-specific register initialization.
- Complete SW verification and memory-specific adaptation, then add LW and its memory-to-register writeback selection.
- Add branches, jumps, and next-PC selection.

### FPGA Validation

- Review synthesis warnings and resource utilization.
- Add clock and timing constraints and check timing-analysis results.
- Assign board-specific pins and program the MAX 10 FPGA.
- Provide a practical way to observe results on hardware.

## Author

Axel Thibaut Teuweussie  
University of Lorraine
