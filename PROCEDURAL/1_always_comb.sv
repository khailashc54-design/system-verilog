module alu;
  logic [3:0]a;
  logic [3:0]b;
  logic [1:0]sel;
  logic [3:0]y;
  
  function logic[3:0]alu_op; 
    input logic [3:0]x;
    input logic [3:0]y;
    input logic [1:0]z;
    begin 
    
      case(z)
      2'b00:alu_op=x+y;
      2'b01:alu_op=x&y;
      2'b10:alu_op=x|y;
      2'b11:alu_op=x^y;
      default:alu_op=4'b0000;
      endcase
    end
    
  endfunction
  
  always_comb begin 
    y=alu_op(a,b,sel);
  end
  initial begin
    sel=00;
    
    a=4;b=3;
    #1;
    sel=01;
     a=4;b=3;
    #1;
    sel=10;
     a=4;b=3;
    #1;
     sel=11;
     a=4;b=3;
    #1;
     sel=2'bxx;
     a=4;b=3;
  end
  initial begin 
    $monitor("time=%0t|a=%0b b=%0b y=%0b sel=%0b",$time,a,b,sel,y);
   #10 $finish;
  end
endmodule
   
//=============================o/p============================//
time=0|a=100 b=11 y=0 sel=111
time=1|a=100 b=11 y=1 sel=0
time=2|a=100 b=11 y=10 sel=111
time=3|a=100 b=11 y=11 sel=111
time=4|a=100 b=11 y=x sel=0
Simulation complete via $finish(1) at time 10 NS + 0
./testbench.sv:46    #10 $finish;
    
    
    
  
