\# Processor Testbench — Eight RV32I Register Operations



\## Purpose



This testbench executes eight instructions in sequence:



ADD, SUB, OR, AND, XOR, SLL, SLT, and SRL.



It automatically checks:

\- the program counter value during reset;

\- the instruction captured in the instruction register;

\- the four-byte PC increment after each instruction.



ALU results are provided as waveform reference values.

The testbench does not yet automatically check the values written

to the destination registers.



\## Requirements



The processor must provide:

\- asynchronous instruction memory reads;

\- a rising-edge-triggered instruction register;

\- a three-cycle instruction execution sequence;

\- support for all eight operations in the decoder and ALU.



The register bank must initialize:

\- x1 = 5;

\- x2 = 3.



This is a project-specific test setup, not an initialization

performed by this testbench through instructions.



\## Program Initialization



The program is stored in the programme constant, using type\_mem

from package pkg.



It is passed through the following hierarchy:



testbench programme

&#x20;   ? Processor.init\_pgr

&#x20;   ? Imem.init\_pgr

&#x20;   ? initial contents of memo



No instruction-loading loop is required.

pgr\_valid remains low throughout the test.



Unused memory locations are filled with zeros and are not

executed during this test.



\## Instruction Sequence



| Index | PC address | Instruction | Encoding | Expected result |

|---|---|---|---|---|

| 0 | 0x00 | ADD x3, x1, x2 | 002081B3 | x3 = 8 |

| 1 | 0x04 | SUB x4, x1, x2 | 40208233 | x4 = 2 |

| 2 | 0x08 | OR x5, x1, x2 | 0020E2B3 | x5 = 7 |

| 3 | 0x0C | AND x6, x1, x2 | 0020F333 | x6 = 1 |

| 4 | 0x10 | XOR x7, x1, x2 | 0020C3B3 | x7 = 6 |

| 5 | 0x14 | SLL x8, x1, x2 | 00209433 | x8 = 40 |

| 6 | 0x18 | SLT x9, x1, x2 | 0020A4B3 | x9 = 0 |

| 7 | 0x1C | SRL x10, x1, x2 | 0020D533 | x10 = 0 |



Each instruction reads x1 and x2 and writes a different destination

register. The source values therefore remain unchanged.



\### Operation Details



\- ADD: 5 + 3 = 8.

\- SUB: 5 - 3 = 2.

\- OR: bitwise OR of 5 and 3 gives 7.

\- AND: bitwise AND of 5 and 3 gives 1.

\- XOR: bitwise XOR of 5 and 3 gives 6.

\- SLL: shifting 5 left by 3 positions gives 40.

\- SLT: the signed comparison 5 < 3 is false, so the result is 0.

\- SRL: shifting 5 right by 3 positions, inserting zeros, gives 0.



\## Simulation Sequence



1\. Hold reset high for two rising clock edges.

2\. Check that the PC is zero.

3\. Release reset and wait one cycle.

4\. Assert start\_exe for one cycle to enter CHARG\_IR.

5\. Execute and check the eight instructions.

6\. Set fin to true to stop clock generation.



The clock period is 20 ns.



\## Three-Cycle Execution



The processor sequencer determines the number of execution cycles.

The testbench waits for the corresponding clock edges.



\### Cycle 1 — CHARG\_IR



During this state, the PC selects the instruction memory address.

The asynchronous memory output settles before the capture edge.



At the rising edge ending this state, the instruction register

captures the instruction.



The testbench then checks instruction\_out.



\### Cycle 2 — LECTURE\_REG



At the rising edge ending this state, the register bank updates

the source operand outputs.



The combinational ALU result then settles.



\### Cycle 3 — ECRITURE\_PC



At the rising edge ending this state:

\- the ALU result is written to the destination register;

\- the PC advances by four bytes.



The sequencer returns to CHARG\_IR.



Reset and startup cycles are additional to these three cycles

per instruction.



\## Why the Previous Test Used Four Cycles



The previous implementation used synchronous instruction memory

reads and a separate instruction register capture:



LECTURE\_MEM ? CHARG\_IR ? LECTURE\_REG ? ECRITURE\_PC



With asynchronous reads, the separate LECTURE\_MEM state was removed:



CHARG\_IR ? LECTURE\_REG ? ECRITURE\_PC



The matching extra wait cycle was also removed from the testbench.



\## Waveform Inspection



Testbench signals:

\- clk;

\- reset;

\- start\_exe;

\- numero\_calcul;

\- instruction\_out;

\- out\_PC;

\- resultat\_attendu;

\- fin.



Processor signals:

\- sequenceur/etat;

\- out\_data1;

\- out\_data2;

\- ALU\_decode;

\- in\_data\_ALU;

\- rd\_int;

\- r\_w\_b;

\- chip\_en\_b.



Compare in\_data\_ALU with resultat\_attendu after operand reads

have settled and before the write-back edge.



Inspect destination registers x3 through x10 to confirm that

the expected values were actually stored.



\## Completion



After the eighth instruction:

\- out\_PC must equal 0x00000020;

\- fin becomes true;

\- clock generation stops.



fin belongs to the testbench only.

The processor itself continues cycling unless its clock is stopped

or reset is asserted.



\## Limitations



This is a basic sequential execution test, not a complete

RV32I compliance test.



It does not yet cover:

\- automatic destination-register result checks;

\- a true SLT comparison;

\- signed comparisons involving negative operands;

\- an SRL operation producing a nonzero result;

\- boundary shift amounts;

\- arithmetic overflow cases;

\- dependencies between consecutive instructions.

