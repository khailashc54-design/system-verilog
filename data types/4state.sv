module state4;
  logic a;
  real b;
  time c;
  integer d;
  initial begin
    $display("value of logic=%0b,real=%.3f,time=%0b,integer=%0b",a,b,c,d);
      a=4'b01xz;
  b=4'b1110;
  d=15'b111111111111111;
  c=d+d;
    $display("value of logic=%0b,real=%.3f,time=%0b,integer=%0b",a,b,c,d);
  end
endmodule
//output
value of logic=x,real=0.000,time=x,integer=x
value of logic=z,real=14.000,time=1111111111111110,integer=111111111111111
