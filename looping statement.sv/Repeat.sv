
module tb;
  initial begin
  repeat (5)
    $display("hello");
  end
  initial begin
    repeat (5)
      #10
      $display("time =%0t",$time);
  end
endmodule
  
