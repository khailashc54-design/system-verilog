module state2_tb;
  //b[7:0];
  int v;
  bit b;
  byte a;
  shortint d;
  longint c;
  initial begin
    $display("value of bit=%0b,int=%0b,byte=%0b,shortint=%0b,longint=%0b",b,v,a,d,c);
  a=4'b01xz;
  b=4'b1110;
  v=3;
  d=15'b111111111111111;
  c=d+d;
    $display("value of bit=%0d,int=%0d,byte=%0d,shortint=%0d,longint=%0d",b,v,a,d,c);

  end
endmodule
//output
value of bit=0,int=0,byte=0,shortint=0,longint=0
value of bit=0,int=3,byte=4,shortint=32767,longint=65534
