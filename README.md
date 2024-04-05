# SIMPLE RISCv PROCESSOR

This is a simple RISCv Processor with a very small instruction set.

The RISC-V processor is an open-source instruction set architecture (ISA) based on reduced instruction set computing (RISC) principles.
In this project we implemented a 32-bit, RISC-V ISA processor in verilog, that performs basic arithmetic,logical and comparison operation.


<img src="https://github.com/dhanasekarp03/RISCV/assets/126143349/43a843ce-8e66-469c-940e-b78e0dff8c06" width=60% height=100%>

             Figure : RISCv PROCESSOR THAT PERFORMS ADD, SUB, LOGICAL OR, LOGICAL AND, XOR, SET LESS THAN

This design divides the processor's operation into distinct cycles:

1. Fetch Cycle:
   The Program Counter (PC) fetches the next instruction's memory address.
   The processor retrieves the instruction from memory and stores it in a special register.

2. Decode Cycle:
   The instruction is decoded to identify the operation to be performed and the involved operands.

3. Execute Cycle:
   Operands are fetched from registers, memory, or the instruction itself.
   The processor executes the operation specified by the instruction.

## WAVEFORM  :

![image](https://github.com/dhanasekarp03/RISCV/assets/126799964/0e8e53b8-0c6b-4b43-9b2b-401dfe442787)

## How to Run the code in Questasim:

1: git clone https://github.com/dhanasekarp03/RISCV.git

2: To compile 

     vlog PROCESSOR.v
     
3: To Simulate 

     vsim -novopt work.stimulus -wlf waveform.wlf

4: To view waveform

     vsim -view waveform.wlf & 
     
## Tools used

  EDA Playground
  
  Questasim

## Documents:

Text book : http://home.ustc.edu.cn/~louwenqi/reference_books_tools/Computer%20Organization%20and%20Design%20RISC-V%20edition.pdf

github repository : https://github.com/muneeb-mbytes/computerArchitectureCourse

our work : https://github.com/dhanasekarp03/RISCV/wiki/RISC-V-Processor-Design

## EDA link
https://edaplayground.com/x/cYXt



