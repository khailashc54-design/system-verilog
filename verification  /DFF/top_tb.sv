module top_tb;
  logic clk;
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  inter inf(clk);
  dff dut(.d(inf.d),.clk(inf.clk),.rst(inf.rst),.q(inf.q));
  
  p1 t1(inf);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #250$finish;
  end
endmodule

  
