interface inter(input clk);
  logic d;
  logic rst;
  logic q;
  
  clocking cb @(posedge clk);
    default input #1ns output #0;
    output rst;
    output d;
    input q;
  endclocking
endinterface
