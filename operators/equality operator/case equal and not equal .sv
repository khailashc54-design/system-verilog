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
    
    if(a!==b)
      $display("YES=%0d",a!==b);
  else
    $display("NO=%0d",a!==b);
    
    
    end
  initial begin 
    
    a=4'b10x1;
    b=4'b10x0;
    if(a==b)begin
      $display("equal=%0d",a==b);
      end 
    else 
      $display("not Equal=%0d",a==b);
    
    if(a!==b)
    $display("yes=%0d",a!==b);
  else
    $display("no=%0d",a!==b);
  
  end
  initial begin 
    
     a=1'bx;
      b=1'bx;
    
    if(a==b)begin
      $display("equal=%0d",a==b);
      end 
    else 
        $display("not equal=%0d",a==b);
  end
endmodule
    
