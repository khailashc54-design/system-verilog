module tb;

  task static show();
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
//output
# KERNEL: 1
# KERNEL: 2
# KERNEL: 3
