class generator ;
  transaction trans;
  mailbox g2d;
  virtual inter inf;
  int r_count;
  function new(virtual inter inf,mailbox g2d);
    
    this.g2d=g2d;
    
    this.inf=inf;
    
  endfunction 
  
  task main ();
    
  
    
    repeat(30)begin
      trans=new();
       @inf.cb;
      if(trans.randomize())begin;
        r_count++;
      
      $display("[GENERATOR]|TIME=%0t|clk=%0b | rst=%0b",$time,inf.clk,trans.rst);
        end else
          $display("RANDOMIZATION FAIL");
          
      
      g2d.put(trans);
       
      
    end
    $display("RAND COUNT=%0d",r_count);
    
  endtask
endclass
  
