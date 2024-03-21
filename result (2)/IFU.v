/*
The instruction fetch unit has clock and reset pins as input and 32-bit instruction code as output.
Internally the block has Instruction Memory, Program Counter(P.C) and an adder to increment counter by 4, 
on every positive clock edge.
*/
`include "INST_MEM.v"

module IFU(
    input clock,reset,
    output [31:0] Instruction_Code
);
reg [31:0] PC = 32'b0;  // 32-bit program counter is initialized to zero
reg [31:0]count=0;
    // Initializing the instruction memory block
  INST_MEM instr_mem(PC,reset,clock,Instruction_Code);

  always @( posedge clock,posedge reset)
    begin
        if(reset == 1)  //If reset is one, clear the program counter
        PC <= 0;
        else if(count>0)
        PC<=PC+4;
        else
        begin
        PC <= PC;
        count<=count+1;
        end// Increment program counter on positive clock edge
    end

endmodule