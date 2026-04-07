module tb;
  string d[4]='{"apple","orange","pine","palm"};
  initial begin
    $display("size=%0d",$size(d));
    for (int i=0;i<$size(d);i++)
      $display("value=%s",d[i]);
  end
  initial begin 
    for (int i=0,j=2;i<$size(d);i++)begin
      d[i][j]="0";
      $display("value[%0d]=%s",i,d[i]);
    end
  end
  
endmodule
