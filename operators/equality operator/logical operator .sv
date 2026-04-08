module tb;
 logic [3:0]a,b;
  initial begin
    a=4'b1010;
    b=4'b1010;
    
    if(a==b)begin
      $display("equal=%0d",a==b);
      end 
    else 
        $display("not equal=%0d",a==b);
     a=4'b1010;
    b=4'b1010;
    if(a!=b)
      $display("YES=%0d",a!=b);
  else
    $display("NO=%0d",a!=b);
    a=4'b1010;
    b=4'b1xx0;
    if(a!=b)
      $display("YES=%0d",a!=b);
  else
    $display("no=%0d",a!=b);
  end 
endmodule 
  
