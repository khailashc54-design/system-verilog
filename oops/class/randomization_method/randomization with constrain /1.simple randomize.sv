class packet ;
  rand bit[4:0]a;
  rand bit[4:0]b;
  constraint c1{a<20;b<10;}
endclass
module tb;
  packet pkt;
  initial begin 
   
  pkt=new();
    repeat(10)begin
      if(pkt.randomize())begin 
        $display("success");
    $display("a=%0d b=%0d",pkt.a,pkt.b);
      end else
        $warning ("unsuccess");
    end
    
    
  end
endmodule
//=======================output===================\\
# success
# a=19 b=7
# success
# a=7 b=0
# success
# a=6 b=4
# success
# a=18 b=8
# success
# a=5 b=6
# success
# a=6 b=8
# success
# a=12 b=2
# success
# a=6 b=4
# success
# a=7 b=3
# success
# a=5 b=2
# exit
