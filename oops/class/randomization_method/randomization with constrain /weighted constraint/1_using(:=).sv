class packet;
  rand bit [4:0] a;
  rand bit [4:0] b;
  constraint c1 {a dist {[0:3]:= 80,[4:15] := 20};}
endclass
module tb;

  packet pkt;
  int count[32];

  initial begin
    pkt = new();
    repeat(50) begin
      if (pkt.randomize()) begin
        $display("a = %0d", pkt.a);
        count[pkt.a]++;
      end
    end
    $display("------------- COUNT -------------");
    for (int i = 0; i < 32; i++) begin
      if (count[i] != 0)
        $display("Number %0d occurred %0d times", i, count[i]);
    end

  end

endmodule
//=========================output========================\\
a = 12
a = 3
a = 3
a = 1
a = 0
a = 7
a = 2
a = 15
a = 0
a = 1
a = 3
a = 0
a = 0
a = 5
a = 5
a = 1
a = 6
a = 3
a = 3
a = 0
a = 9
a = 3
a = 7
a = 12
a = 6
a = 1
a = 14
a = 0
a = 8
a = 3
a = 7
a = 12
a = 0
a = 9
a = 8
a = 0
a = 6
a = 1
a = 3
a = 2
a = 1
a = 0
a = 3
a = 9
a = 0
a = 2
a = 9
a = 8
a = 1
a = 1
------------- COUNT -------------
Number 0 occurred 10 times
Number 1 occurred 8 times
Number 2 occurred 3 times
Number 3 occurred 9 times
Number 5 occurred 2 times
Number 6 occurred 3 times
Number 7 occurred 3 times
Number 8 occurred 3 times
Number 9 occurred 4 times
Number 12 occurred 3 times
Number 14 occurred 1 times
Number 15 occurred 1 times
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
