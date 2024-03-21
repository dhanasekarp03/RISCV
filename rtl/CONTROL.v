module CONTROL(
       input [6:0] funct7,
       input [2:0] funct3,
       input [6:0] opcode,
       output reg [3:0] alu_control,
       output reg regwrite_control
);
   always @(funct3 or funct7 or opcode)
   begin
       if (opcode == 7'b0110011) begin // Checking for R-type instructions

           regwrite_control = 1; // Setting register write control

           case (funct3)
               0: begin
                   if (funct7 == 0)
                       alu_control = 4'b0000; // Setting ALU control for ADD
                   else if (funct7 == 32)
                       alu_control = 4'b0001; // Setting ALU control for SUB
               end
             
               6: alu_control = 4'b0010; // Setting ALU control for logical OR
               7: alu_control = 4'b0011; // Setting ALU control for logical AND
               4: alu_control = 4'b0100; // Setting ALU control for XOR
               2: alu_control = 4'b0101; // Setting ALU control for SLT
           endcase

       end
   end
endmodule
