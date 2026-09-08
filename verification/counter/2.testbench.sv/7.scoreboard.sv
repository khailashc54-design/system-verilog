class scoreboard;
  transaction trans;
  mailbox m2s ;
  virtual inter inf;
  int p_count,f_count,t_count,r_count;
  int prev_q;
   bit [3:0] expected;
  function new(virtual inter inf,mailbox m2s);
    
    this. m2s=m2s;
    
    this.inf=inf;
    

    
  endfunction 
  
  task main ();
    
    repeat(30)begin
//     @inf.cb;
          t_count++;
      
      m2s.get(trans);
   

      if (trans.rst)begin
  expected = 0;
        r_count++;
        
        $display("RST DECTECTED");
       
        
        end else
  expected = prev_q;
      prev_q = expected + 1;
    
    
      if (trans.cout == expected)begin
        p_count++;
        
        $display("[SCOREBOARD] Time=%0t | rst=%0b",$time, trans.rst);
        $display("expected=%0d cout=%0d",expected,trans.cout);
        $display("COUNTER PASS");
      end else begin
        f_count++;
        
        $display("[SCOREBOARD] Time=%0t | rst=%0b ",
                 $time, trans.rst);
         $display("expected=%0d cout=%0d",expected,trans.cout);
        $display("COUNTER FAIL");
      end

      
    end
    
    $display("PASS COUNT=%0d",p_count);
    $display("FAILCOUNT=%0d",f_count);
    $display("RST COUNT=%0d",r_count);
    $display("TOTAL COUNT=%0d",t_count);
    if(t_count == p_count)
      $display("ALL TEST CASED PASED");
    else
      $display("TEST CASE FAILED");
  endtask
endclass
