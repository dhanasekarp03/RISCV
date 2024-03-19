/*
The instruction fetch unit has clock and reset pins as input and 32-bit instruction code as output.
Internally the block has Instruction Memory, Program Counter(P.C) and an adder to increment counter by 4, 
on every positive clock edge.
*/

`include "INST_MEM.v"

module IFU(
    input clock,
    reset,
    output [31:0] Instruction_Code
);

    // 32-bit program counter initialized to zero
    reg [31:0] PC = 32'b0;  

    // Initializing the instruction memory block
    INST_MEM instr_mem(
        .PC(PC),
        .reset(reset),
        .Instruction_code(Instruction_Code)
    );

    // Process block for positive clock edge and reset
    always @(posedge clock or posedge reset) begin
        if (reset) begin
            // Clear the program counter if reset is high
            PC <= 0;
        end else begin
            // Increment program counter by 4 on positive clock edge
            PC <= PC + 4;
        end
    end

endmodule
