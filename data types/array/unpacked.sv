module tb;
  longint d[4][5];
  initial begin
    foreach(d[i])begin
      foreach(d[i][j])begin
        d[i][j]=$urandom_range(10,0);
    $display("d[%0d][%0d]=%0d",i,j,d[i][j]);
      end
    end
    
  end
endmodule
