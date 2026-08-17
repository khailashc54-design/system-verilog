`include "test.sv"
module tb;
  inter interf();
  test tst();
  full_adder(.a(interf.a),
             .b(interf.b),
             .cin(interf.cin),
             .sum(interf.sum),
             .carry(interf.carry));
  
  test tst(viff);
  
  initial begin
  $dumfile("dump");
  $dumvars;
  end
endmodule
