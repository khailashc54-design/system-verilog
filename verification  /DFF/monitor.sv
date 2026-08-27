class monitor;
  transaction trans;
  mailbox m2s;
  virtual inter inf;
  
  function new(virtual inter inf, mailbox m2s);
  this.m2s=m2s;
  this.inf=inf;
  endfunction
 
  task main();
    @inf.cb;
    repeat(10)begin
      trans=new();
      trans.d=inf.d;
      trans.rst=inf.rst;
      trans.q=inf.q;
      
//       void'(trans.randomized());
      $display("[MONITOR ] Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b",
                      $time,
                      inf.clk,
                      trans.rst,
                      trans.d,
                      trans.q);
    m2s.put(trans);
    end
  endtask 
endclass
    
    
