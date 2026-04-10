module tb;
class subraction;
  int a,b,c;
  function void sub();
    c=a-b;
    c=a*b;
    c=a+b;
    c=a/b;
    endfunction
  function void display();
    $display("_____________");
    $display("value a=%0d",a);
    $display("value b=%0d",b);
    $display("sub c=%0d",c);
    $display("_____________");
    $display("value a=%0d",a);
    $display("value b=%0d",b);
    $display("mul d=%0d",c);
    $display("_____________");
    $display("value a=%0d",a);
    $display("value b=%0d",b);
    $display("add e=%0d",c);
    $display("_____________");
     $display("value a=%0d",a);
    $display("value b=%0d",b);
    $display("add f=%0d",c);
    $display("_____________");
    
  endfunction 
endclass 
initial begin 
  subraction s;
  s=new();
  repeat (3) begin 
    s.a=$urandom_range(5,0) ;
    s.b=$urandom_range(7,0) ;
    void'(s.sub());
    void'(s.display());
  end
end
  endmodule
