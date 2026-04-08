module tb;
  logic[3:0] a,b;
  initial begin 
    a=4'b0000;
    b=4'b1010;
    if(a==?b)
      $display("mached=%0d",a==?b);
    else
      $display("not mached=%0d",a==?b);
    
    a=4'b1010;
    b=4'b1010;
    if(a==?b)
      $display("mached=%0d",a==?b);
    else
      $display("not mached=%0d",a==?b);
    
    a=4'b0xx0;
    b=4'b1xz0;
    if(a==?b)
      $display("mached=%0d",a==?b);
    else
      $display("not mached=%0d",a==?b);
    
    
    a=4'b0000;
    b=4'b1010;
    if(a!=?b)
      $display("yes=%0d",a!=?b);
    else
      $display("no=%0d",a!=?b);
    
    
     a=4'b1010;
    b=4'b1010;
    if(a!=?b)
      $display("yes=%0d",a!=?b);
    else
      $display("no=%0d",a!=?b);
  end 
endmodule 
