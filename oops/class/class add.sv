class add;
  int a;
  int b;
  int c;
  function  void  cc();
    a=5;
    
    b=4;
    c=a+b;
  endfunction
endclass
module tb;
  add s;
  initial begin
    s=new();
     s.cc();
    $display("a=%0d",s.a);
    $display("b=%0d",s.b);
    $display("c=%0d",s.c);
    $display("--------");
    
  end
endmodule
