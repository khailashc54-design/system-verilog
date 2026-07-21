class trans;
  int adder;
  int data;
   
  function new(int a,int d);
    adder=a;
    data=d;
  endfunction
endclass
 
class rr extends trans;
  bit w;
  function new(int a,int d,bit wr);
    super.new(a,d);
    w=wr;
  endfunction
endclass
module tb;
  rr tr;
  
  initial begin 
    tr=new(10,11,1);
    
    $display("value a=%0d",tr.adder);
    $display("value d=%0d",tr.data);
    $display("value w=%0d",tr.w);
  end
endmodule
