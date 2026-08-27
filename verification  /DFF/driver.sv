class driver;
  transaction trans;
  mailbox g2d;
  virtual inter inf;
  
  function new(virtual inter inf, mailbox g2d);
  this.g2d=g2d;
  this.inf=inf;
  endfunction
 
  task main();
    @inf.cb;
    repeat(10)begin
      trans=new();
      void'(trans.randomize());
      $display("[DRIVER] Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b",
                      $time,
                      inf.clk,
                      trans.rst,
                      trans.d,
                      trans.q);
    g2d.get(trans);
    end
  endtask 
endclass

    
    
