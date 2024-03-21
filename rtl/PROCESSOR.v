`include "CONTROL.v"
`include "DATAPATH.v"
`include "IFU.v"

module PROCESSOR( 
    input clock,
    input reset,
    output reg zero
);

    wire [31:0] instruction_code;
    wire [3:0] alu_control;
    wire regwrite;

    // Instantiate Instruction Fetch Unit
    IFU IFU_module(clock, reset, instruction_code);

    // Instantiate Control Unit
    CONTROL control_module(instruction_code[31:25], instruction_code[14:12], instruction_code[6:0], alu_control, regwrite);

    // Instantiate Data Path Unit
    DATAPATH datapath_module(instruction_code[19:15], instruction_code[24:20], instruction_code[11:7], alu_control, regwrite, clock, reset, zero);

endmodule
