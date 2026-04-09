class arthemetic;
   int a,b,c;
   function void sum();
     c=a+b;
     endfunction
   function void display();
     $display("value=%0d",c);
   endfunction
   function sum1(int a,int b);
     this.a=a;
     this.b=b;
     c=a+b;
   endfunction
 endclass
//tb
  module tb;
  arthemetic a1,a2;
  initial begin
    a1=new();
    a2=a1;
    a2.display();
    a1.a=4;
    a1.b=5;
    a2.sum();
    a2.display();
    a1.sum1(5,1);
    a2.display();
  end
endmodule
