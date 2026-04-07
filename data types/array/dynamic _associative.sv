module tb;
  int k[][string];
  initial begin
    k=new[3];
    k[0]='{"apple":1,"orange":2};
    k[1]='{"pine":4,"palm":5};
    k[2]='{"kai":2,"lash":6};
    foreach(k[i])
      foreach(k[i][j])
        $display("k[%0d][%s]=%0d",i,j,k[i][j]);
  end
endmodule
