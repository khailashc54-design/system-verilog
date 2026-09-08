class monitor  ;
  transaction trans;
  mailbox m2s;
  virtual inter inf;
  function new(virtual inter inf,mailbox m2s);
    
    this.m2s=m2s;
    
    this.inf=inf;
    
  endfunction 
  
  task main ();
    
  
    
    repeat(30)begin
        
      trans=new();
      
      @inf.cb;

      trans.rst=inf.rst;
      trans.cout=inf.cout;
      
      
      $display("[MONITOR ]|TIME=%0t|clk=%0b | rst=%0b |cout=%0d",$time,inf.clk,inf.rst,inf.cout);
      
      m2s.put(trans);
      
           
    end
    
  endtask
endclass
