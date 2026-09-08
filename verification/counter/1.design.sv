module counter(input clk,rst,output reg [3:0]cout );
  
  always@(posedge clk or posedge rst)begin
    if(rst)
      cout<=4'b0000;
  else
    cout++;
  end
endmodule 
