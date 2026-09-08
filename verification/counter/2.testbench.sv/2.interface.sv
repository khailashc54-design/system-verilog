interface inter(input clk );
  logic rst;
  logic [3:0]cout;
  
  clocking cb @(posedge clk );
    default input #1step output #1;
   output rst;
    input cout;
    
  endclocking
    modport dir (clocking cb, input clk);
    modport mon (clocking cb, input clk);
endinterface
    
  
  
