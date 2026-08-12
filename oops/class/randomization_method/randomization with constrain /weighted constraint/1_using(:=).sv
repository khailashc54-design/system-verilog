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
