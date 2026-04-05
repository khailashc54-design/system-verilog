// Code your design here
module  ff ;
 struct {
  int a;
  int b;
  int c;
  struct{
    int d;
    int e;
    int f;
  }d0;
}d1;
  
  always_comb begin
    d1.a=10;
    d1.b=9;
    d1.c=15;
    d1.d0.d=1;
    d1.d0.e=13;
    d1.d0.f=12;                                                             
    $display("value a=%0d",d1.a);
    $display("value b=%0d",d1.b);
    $display("value c=%0d",d1.c);
    $display("value d=%0h",d1.d0.d);
    $display("value e=%0h",d1.d0.e);
    $display("value f=%0h",d1.d0.f);
    d1='{2,3,4,'{5,6,7}};
//     d1='{5,6,7};
    $display("value a=%0d",d1.a);
    $display("value b=%0d",d1.b);
    $display("value c=%0d",d1.c);
    $display("value d=%0h",d1.d0.d);
    $display("value e=%0h",d1.d0.e);
    $display("value f=%0h",d1.d0.f);
    
    
    $display("value f=%p",d1);
//     $display("value f=%0p",d1);
  end
endmodule
// output
value a=10
value b=9
value c=15
value d=1
value e=d
value f=c
value a=2
value b=3
value c=4
value d=5
value e=6
value f=7
value f='{a:2, b:3, c:4, d0:'{d:5, e:6, f:7}}
