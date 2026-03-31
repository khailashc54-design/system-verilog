module tb;
  int i;
  initial begin 
    for (i=1;i<10;i++)
      if(i==4)begin
        break;
    $display("value=%0d",i);
      end else 
      continue;
    $display("value=%0d",i);
    
  end 
endmodule
      
    
