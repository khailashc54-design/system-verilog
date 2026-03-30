module tb;
  logic [3:0][7:0]d[2][5];
  initial begin
    foreach(d[i])begin
      foreach(d[i][j])begin
        d[i][j]=$random;
        $display("d[%0d][%0d]=%0h",i,j,d[i][j]);
      end
    end
    $display("d=%p",d);
  end
endmodule
//output

d[0][0]=12153524
d[0][1]=c0895e81
d[0][2]=8484d609
d[0][3]=b1f05663
d[0][4]=6b97b0d
d[1][0]=46df998d
d[1][1]=b2c28465
d[1][2]=89375212
d[1][3]=f3e301
d[1][4]=6d7cd0d
d='{'{'h12153524, 'hc0895e81, 'h8484d609, 'hb1f05663, 'h6b97b0d}, '{'h46df998d, 'hb2c28465, 'h89375212, 'hf3e301, 'h6d7cd0d}}
