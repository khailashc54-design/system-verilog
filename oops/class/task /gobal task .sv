task vote(input int age);
  
  if (age>=18)
    $display("eligible for vote");
  else
    $display(" not eligible for vote");
endtask 
module tb;
  initial begin 
    vote(44);
  end
  initial begin 
    vote(13);
  end
  endmodule 
    
