module tb;
  logic[3:0][2:0] n;
  initial begin
    n='{ 3'b100,3'b10,3'b11,3'b00};
       $display("value=%0b", n);
    for(int i=0;i<4;i++) begin
      for(int j=0;j<3;j++)
        $display("n[%0d][%0d]=[%0h]", i,j,n[i][j]);
    end
  end
endmodule

//output
value=100010011000
n[0][0]=[0]
n[0][1]=[0]
n[0][2]=[0]
n[1][0]=[1]
n[1][1]=[1]
n[1][2]=[0]
n[2][0]=[0]
n[2][1]=[1]
n[2][2]=[0]
n[3][0]=[0]
n[3][1]=[0]
n[3][2]=[1]
