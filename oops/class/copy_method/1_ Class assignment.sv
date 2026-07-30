class transaction ;
  bit[7:0]adder;
  bit[7:0]data;
  virtual task display();
    $display("adder=%0d,data=%0d",adder,data);
  endtask
endclass
module assign_copy;
  transaction tr1,tr2;
  initial begin 
  tr1=new();
  tr2=tr1;
  tr1.adder=4;
  tr1.data=5;
  $display("before");
  tr1.display();
  tr2.display();
  tr2.adder=44;
  
  
  $display("after");
    tr1.display();
  tr2.display();
  end
endmodule

//========================output==================\\
before
adder=4,data=5
adder=4,data=5
after
adder=44,data=5
adder=44,data=5
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

  
  

