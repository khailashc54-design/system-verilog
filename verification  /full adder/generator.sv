class generator;
  transaction trans;
  
  mailbox gentodri;
  function new(mailbox gentodri);
    this.gentodri=gentodri;
  endfunction 
  task main();
    repeat(2)
      begin 
   
        trans=new();
    
        trans.randomize();
    
        trans.display("generator s/g");
        
        gentodri.put(trans);
      end
  endtask
endclass
  
  
