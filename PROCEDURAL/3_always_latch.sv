// Code your testbench here
// or browse Examples
module dff;
  logic en;
  logic [3:0]d;
  logic [3:0]q;
  always_latch 
    begin 
    if(en)
      q=d;
    end
 
  initial begin 
    $monitor("time=%0t en=%0d d=%0d q=%0d",$time,en,d,q);
    en=0;
    #1;
    en=1;
    d=0;
    #1;
    en=1;
    d=1;
    #10 $finish;
  end
endmodule
    
