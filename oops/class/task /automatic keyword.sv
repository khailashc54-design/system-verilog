module tb;

  task automatic  show();
  int c;
   c=c+1;
   $display("%0d",c);
  
endtask

initial begin
  show();
  show();
  show();
end

endmodule
//ouput
# KERNEL: 1
# KERNEL: 1
# KERNEL: 1
