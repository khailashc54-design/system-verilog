class driver;
  virtual inter viff;
  mailbox gentodri;
  function new( virtual inter viff, mailbox gentodri);
    this.viff=viff;
    this.gentodri=gentodri;
  endfunction 
  task main ();
    repeat(2)
      begin
        transaction trans;
        gentodri.get(trans);
        
        viff.a<=trans.a;
        viff.b<=trans.b;
        viff.cin<=trans.cin;
        #2;
        trans.display("driver s/g");
      end
  endtask 
endclass
    
