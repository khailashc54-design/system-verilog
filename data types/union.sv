module tb;
  union {bit [31:0]a ;bit[3:0][7:0] b;}y;
  union{bit[31:0]k;bit[0:3][7:0]s;}h;
  initial begin 
    //little endian
    y.a=32'h87654321;
    $display("value=%0h",y.a);
    foreach(y.b[i])
      $display("value[%0d]=%0h",i,y.b[i]);
    y.b[2]=8'hff;
    y.b[0]=8'hcc;
    $display("total=%0h",y.a);
  end
  initial begin
    //big endian 
    h.k=32'h13141516;
    $display("value=%0h",h.k);
    foreach(h.s[i])
      $display("value[%0d]=%0h",i,h.s[i]);
    h.s[2]=8'hff;
    h.s[0]=8'hcc;
    $display("total=%0h",h.s);
  end
endmodule
//output
value=87654321
value[3]=87
value[2]=65
value[1]=43
value[0]=21
total=87ff43cc
value=13141516
value[0]=13
value[1]=14
value[2]=15
value[3]=16
total=cc14ff16
