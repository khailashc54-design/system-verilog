module fa(fa_inter intf);
assign intf.sum=intf.a^intf.b^intf.cin;
 assign  intf.carry=(intf.a&intf.b)|(intf.b&intf.cin)|(intf.a&intf.cin);
endmodule

interface fa_inter;
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic carry;

 
//modport for dut
modport dut(input  a,b,cin,output  sum,carry);
//modeport for tb
modport tb(output  a,b,cin,input  sum,carry);
endinterface

//testbench
module tb;

    fa_inter intf();           // Create the interface

    fa dut(intf);   // Connect interface to DUT

    initial begin

        intf.a   = 0;
        intf.b   = 0;
        intf.cin = 0;
        #10;

        intf.a   = 0;
        intf.b   = 0;
        intf.cin = 1;
        #10;

        intf.a   = 0;
        intf.b   = 1;
        intf.cin = 0;
        #10;

        intf.a   = 0;
        intf.b   = 1;
        intf.cin = 1;
        #10;

        intf.a   = 1;
        intf.b   = 0;
        intf.cin = 0;
        #10;

        intf.a   = 1;
        intf.b   = 0;
        intf.cin = 1;
        #10;

        intf.a   = 1;
        intf.b   = 1;
        intf.cin = 0;
        #10;

        intf.a   = 1;
        intf.b   = 1;
        intf.cin = 1;
        #10;

        $finish;
    end

    initial begin
      $monitor("a=%b b=%b cin=%b sum=%b carry=%b",intf.a,intf.b,intf.cin,intf.sum,intf.carry);
    end

endmodule
