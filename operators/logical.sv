module tb;
  logic [3:0] a,b;
  int c;
  initial begin
    a=0;b=0;
    c=a&&b;
    $display("value a=%0d",c);
    a=0;b=3;
    c=a&&b;
    $display("value a=%0d",c);a=0;b=0;
    a=3;b=3;
    c=a&&b;
    $display("value a=%0d",c);
    $display("----------------");
    a=0;b=0;
    c=a||b;
    $display("value b=%0d",c);
     a=1;b=0;
    c=a||b;
    $display("value b=%0d",c);
    a=9;b=3;
    c=a||b;
    $display("value b=%0d",c);
    $display("----------------");
    a=0;b=0;
    c=!(a ||b);
    $display("value=%0d",c);
    a=3;b=4;
    c=!(a ||b);
    $display("value=%0d",c);
end
endmodule 

    
