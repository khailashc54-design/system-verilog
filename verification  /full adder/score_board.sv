class scoreboard;
  mailbox montosoc;
  function new(mailbox montosoc);
    this.montosoc=montosoc;
  endfunction 
  task main();
    transaction trans;
    repeat (3)
      begin
        montosoc.get(trans);
         trans.display("driver s/g");
        if(((trans.a^trans.b^trans.cin)==trans.sum))&&
          ((trans.a&trans.b)|(trans.a^trans.b)&trans.cin)==trans.carry)
          $display("pass");
        else
          $display("fail");
      end
  endtask
endclass
        
