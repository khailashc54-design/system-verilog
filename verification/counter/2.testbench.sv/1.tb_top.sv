`include "interface.sv"
`include "test.sv"

module top_tb;
  logic clk ;
  inter inf(clk);
  
  initial begin 
    clk=1;
    inf.rst=1;
    #0;
    inf.rst=0;
    forever #5clk=~clk;
  end
  
  counter dut (.clk(inf.clk),.rst(inf.rst),.cout(inf.cout));
  
  p1 t1(inf);
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
    #320;$finish;


  end
endmodule 
  
