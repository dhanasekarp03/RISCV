**SIMPLE RISCV PROCESSOR**

In this project we implemented a 32-bit, RISC-V ISA processor in verilog, that performs basic arithmetic,logical and comparison operation.


<img src="https://github.com/dhanasekarp03/RISCV/assets/126143349/43a843ce-8e66-469c-940e-b78e0dff8c06" width=60% height=100%>

             Figure : RISCv PROCESSOR THAT PERFORMS ADD, SUB, LOGICAL OR, LOGICAL AND, XOR, SET LESS THAN

This design divides the processor's operation into distinct cycles:

Fetch Cycle:
The Program Counter (PC) fetches the next instruction's memory address.
The processor retrieves the instruction from memory and stores it in a special register.

Decode Cycle:
The instruction is decoded to identify the operation to be performed and the involved operands.

Execute Cycle:
Operands are fetched from registers, memory, or the instruction itself.
The processor executes the operation specified by the instruction.

WAVEFFORM  :

![image](https://github.com/dhanasekarp03/RISCV/assets/126799964/89729d37-0e58-4ce3-a90e-6cffba85bf21)

<!--How to Run the code in Questasim:
1: git clone https://github.com/dhanasekarp03/RISCV.git

2: To compile 
     vlog PROCESSOR.v
3: To Simulate 
     vsim -c work.stimulus -->



