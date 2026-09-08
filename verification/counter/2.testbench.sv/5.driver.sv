class driver ;
  transaction trans;
  mailbox g2d;
  virtual inter inf;
  function new(virtual inter inf,mailbox g2d);
    
    this.g2d=g2d;
    
    this.inf=inf;
    
  endfunction 
  
  task main ();
    
   
    
    repeat(30)begin
      trans=new();
         g2d.get(trans); 
      
      inf.cb.rst<=trans.rst;
//       inf.cout<=trans.cout;
      
      @inf.cb;
      
      
//       void'(trans.randomize());
      
      $display("[DRIVER]|TIME=%0t|clk=%0b | rst=%0b",$time,inf.clk,trans.rst);
      
        
      
    end
    
  endtask
endclass
