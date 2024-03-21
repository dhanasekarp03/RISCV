module REG_FILE(
    input [4:0] read_reg_num1,
    input [4:0] read_reg_num2,
    input [4:0] write_reg,
    input [31:0] write_data,
    output [31:0] read_data1,
    output [31:0] read_data2,
    input regwrite,
    input clock,
    input reset
);

    reg [31:0] reg_memory [31:0]; // 32 memory locations each 32 bits wide

    // When reset is asserted, initialize registers with some values
  always @(posedge clock)
    begin
      if (!reset) begin
            for (int i = 0; i < 32; i++)
                reg_memory[i] = i;
end
//          else begin
//             // If reset is de-asserted, initialize to 1
//             for (int i = 0; i < 32; i++)
//                 reg_memory[i] = 0;
//         end
    end

    // The register file will always output the values corresponding to read register numbers 
    // It is independent of any other signal
    assign read_data1 = reg_memory[read_reg_num1];
    assign read_data2 = reg_memory[read_reg_num2];

    // If clock edge is positive and regwrite is 1, we write data to specified register
    always @(posedge clock)
    begin
        if (regwrite) begin
            reg_memory[write_reg] <= write_data;
        end     
    end

endmodule
