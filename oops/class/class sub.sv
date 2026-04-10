module tb;
class subraction;
  int a,b,c;
  function void sub();
    c=a-b;
    endfunction
  function void display();
    $display("value a=%0d",a);
    $display("value b=%0d",b);
    $display("value c=%0d",c);
  endfunction 
endclass 
initial begin 
  subraction s;
  s=new();
  repeat (2) begin 
    s.a=$urandom_range(5,0) ;
    s.b=$urandom_range(7,0) ;
    void'( s.sub());
    void'(  s.display());
  end
end
  endmodule
//output
value a=5
value b=3
value c=2
value a=1
value b=1
value c=0
