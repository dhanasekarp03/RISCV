/*
ALU module, which takes two operands of size 32-bits each and a 4-bit ALU_control as input.
Operation is performed on the basis of ALU_control value and output is 32-bit ALU_result. 
If the ALU_result is zero, a ZERO FLAG is set.
*/

/*
ALU Control lines | Function
-----------------------------
        0000    add
        0001    sub
        0010	or
        0100	and
        1000	xor
        0011    set less than
       
*/

module ALU (
    input [31:0] in1,in2, 
    input[3:0] alu_control,
    output reg [31:0] alu_result,
    output reg zero_flag
);
    always @(*)
    begin
        // Operating based on control input
        case(alu_control)

        4'b0000: alu_result = in1+in2;
        4'b0001: alu_result = in1-in2;
        4'b0010: alu_result = in1 || in2;
        4'b0011: alu_result = in1 &&in2;
        4'b0100: alu_result = in1^in2;
        4'b0101: begin 
            if(in1<in2)
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