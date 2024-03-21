module ALU (
    input [31:0] in1, in2,  // Input operands
    input [3:0] alu_control, // ALU control lines
    output reg [31:0] alu_result, // Result of ALU operation
    output reg zero_flag // Flag indicating if result is zero
);
    always @(*)
    begin
        // Operating based on control input
        case(alu_control)
            4'b0000: alu_result = in1 + in2; // Addition
            4'b0001: alu_result = in1 - in2; // Subtraction
            4'b0010: alu_result = in1 || in2; // Logical OR
            4'b0011: alu_result = in1 && in2; // Logical AND
            4'b0100: alu_result = in1 ^ in2; // XOR
            4'b0101: begin 
                if (in1 < in2) // Set on less than
                    alu_result = 1; 
                else
                    alu_result = 0;
            end
        endcase

        // Setting Zero_flag if ALU_result is zero
        if (alu_result == 0)
            zero_flag = 1'b1;
        else
            zero_flag = 1'b0;
    end
endmodule
