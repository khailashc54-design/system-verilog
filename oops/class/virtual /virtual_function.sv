class transaction ;
  bit[7:0]adder;
  bit[7:0]data;
  virtual function  void display();
    $display("operation");
    $display("adder=%0d,data=%0d",adder,data);
  endfunction 
endclass

class write extends transaction;
  function void  display();
    $display("write opetration");
    $display("adder=%0d,data=%0d",adder,data);
  endfunction 
endclass


class read extends transaction;
  function void  display();
    $display("read opetration");
    $display("adder=%0d,data=%0d",adder,data);
  endfunction 
endclass

module poly;
  transaction tr1,tr2;
  write wr=new();
  read rd=new();
  initial begin 
    wr.adder=11;
  wr.data=10;
    rd.adder=11;
  rd.data=12;
    
    tr1=wr;
    tr1.display();
    tr2=rd;
    tr2.display();
  end
endmodule
//===========================output===========================\\
write opetration
adder=11,data=10
read opetration
adder=11,data=12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

