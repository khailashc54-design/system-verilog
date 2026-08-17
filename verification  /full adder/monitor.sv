class monitor;
  virtual inter viff;
  mailbox montosoc;
  function new( virtual inter viff, mailbox montosoc);
    this.viff=viff;
    this.montosoc=montosoc;
  endfunction 
  task main ();
    repeat(2)
      begin
        transaction trans;
        trans=new();
        
        trans.a=viff.a;
        trans.b=viff.b;
        trans.cin=viff.cin;
        trans.sum= viff.sum;
        trans.carry=viff.carry;
        #2;
        montosoc.put(trans);
        trans.display("monitor s/g");
      end
  endtask 
endclass
