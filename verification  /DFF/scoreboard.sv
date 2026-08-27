class scoreboard;
  transaction trans;
  mailbox m2s;
  virtual inter inf;
  
  function new(virtual inter inf, mailbox m2s);
  this.m2s=m2s;
  this.inf=inf;
  endfunction
 
  task main();
    repeat(10)begin 
      m2s.get(trans);
     if(trans.q == trans.d)
              $display("[SCOREBOARD] Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b | D_FF TEST PASSED ",$time,inf.clk,trans.rst,trans.d,trans.q);
      else
              $display("[SCOREBOARD] Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b | D_FF TEST FAILED ",$time,inf.clk,trans.rst,trans.d,trans.q);
    end 
  endtask
endclass 
