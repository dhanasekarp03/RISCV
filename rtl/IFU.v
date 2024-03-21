`include "INST_MEM.v"

module IFU(
    input clock, 
    input reset, 
    output reg [31:0] Instruction_Code
);
    reg [31:0] PC = 32'b0; // Initialize program counter to zero
    reg [31:0] count = 0; // Initialize count variable

    INST_MEM instr_mem(PC, reset, clock, Instruction_Code); // Instantiate Instruction Memory block

    always @(posedge clock or posedge reset)
    begin
        if (reset == 1)
            PC <= 0; // Clear program counter on reset
        else if (count > 0)
            PC <= PC + 4; // Increment program counter by 4
        else
        begin
            PC <= PC; // Maintain program counter
            count <= count + 1; // Increment count
        end
    end

endmodule
