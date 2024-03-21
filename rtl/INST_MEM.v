module INST_MEM(
    input [31:0] PC, // Program counter input
    input reset, clock,
    output [31:0] Instruction_Code // Output instruction code
);

    reg [7:0] Memory [23:0]; // Byte addressable memory with 32 locations

    assign Instruction_Code = {Memory[PC+3], Memory[PC+2], Memory[PC+1], Memory[PC]};

    always @(posedge clock)
    begin
        if (reset == 0)
        begin
            // Setting 32-bit instruction: add t1, s0, s1 => 0x00940333 
            Memory[3] = 8'h00;
            Memory[2] = 8'h94;
            Memory[1] = 8'h03;
            Memory[0] = 8'h33;
            // Setting 32-bit instruction: sub t2, s3, s2 => 0x412983b3
            Memory[7] = 8'h41;
            Memory[6] = 8'h29;
            Memory[5] = 8'h83;
            Memory[4] = 8'hb3;
            // Setting 32-bit instruction: or a7, a4, a5 => 0x00f768b3
            Memory[11] = 8'h00;
            Memory[10] = 8'hf7;
            Memory[9] = 8'h68;
            Memory[8] = 8'hb3;
            // Setting 32-bit instruction: and t6, a2, a3 => 0x00d67fb3
            Memory[15] = 8'h00;
            Memory[14] = 8'hd6;
            Memory[13] = 8'h7f;
            Memory[12] = 8'hb3;
            // Setting 32-bit instruction: xor t3, s6, s7 => 0x017b4e33
            Memory[19] = 8'h01;
            Memory[18] = 8'h7b;
            Memory[17] = 8'h4e;
            Memory[16] = 8'h33;
            // Setting 32-bit instruction: slt t5, s10, s11 => 0x01bdaf33
            Memory[23] = 8'h01;
            Memory[22] = 8'hbd;
            Memory[21] = 8'haf;
            Memory[20] = 8'h33;
        end
    end

endmodule
