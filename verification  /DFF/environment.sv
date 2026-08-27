`include "transaction.sv"
`include "generator.sv" 
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
class environment;
  virtual inter inf;
  generator gen;
  transaction trans;
  driver dir;
  monitor mon;
  scoreboard scb;
  mailbox g2d;
  mailbox m2s;
  function new( virtual inter inf);
    this.inf=inf;
    g2d=new();
    m2s=new();
    gen=new(inf,g2d);
    dir=new(inf,g2d);
    mon=new(inf,m2s);
    scb=new(inf,m2s);
  endfunction 
    
    task run();
      fork 
        gen.main();
        dir.main();
        mon.main();
        scb.main();
      join
    endtask
endclass

        
    
