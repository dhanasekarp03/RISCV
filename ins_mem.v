module ins_mem(rst,read_address,instruction);
  input rst;
  input [31:0] read_address);
  output [31:0]instruction;
  
  reg [31:0]memory[63:0];
  int i;
  
  assign instruction = memory[read_address];
  
  always @(posedge rst)
    begin
      for(i=0;i<4;i=i+1)begin
        memory[i]=32'd0;
      end
    end
endmodule
