class arthemetic;
   int a,b,c;
   function new(int a=0,int b=0);
     this.a=a;
     this.b=b;
     c=a+b;
   endfunction
   function display();
     $display("value=%0d",c);
   endfunction
 endclass
// tb
  module tb;
  arthemetic a1,a2;
  initial begin
    a1=new();
    a2=a1;
    a2.display();
    a1=new(3,4);
    a2.display();
    a1.display();
  end
endmodule
// output
value=0
value=0
value=7
