// Code your testbench here
// or browse Examples
module dff;
  logic clk,rst;
  logic [3:0]d;
  logic [3:0]q;
  always_ff@(posedge clk or posedge rst)begin 
    if(rst)
      q<=0;
    else
      q<=d;
  end
  initial
    forever #2clk=~clk;
  initial begin 
    $monitor("time=%0t clk=%0d rst=%0d d=%0d q=%0d",$time,clk,rst,d,q);
    clk=0;
    rst=1;
    #1;
    rst=0;
    #1;
    d=0;
    #1;
    d=1;
    #10 $finish;
  end
endmodule
    //=============================output=======================//
time=0 clk=0 rst=1 d=x q=0
time=1 clk=0 rst=0 d=x q=0
time=2 clk=1 rst=0 d=0 q=0
time=3 clk=1 rst=0 d=1 q=0
time=4 clk=0 rst=0 d=1 q=0
time=6 clk=1 rst=0 d=1 q=1
time=8 clk=0 rst=0 d=1 q=1
time=10 clk=1 rst=0 d=1 q=1
time=12 clk=0 rst=0 d=1 q=1
$finish called from file "testbench.sv", line 25.
$finish at simulation time                   13
           V C S   S i m u l a t i o n   R e p o r t 
Time: 13 ns
