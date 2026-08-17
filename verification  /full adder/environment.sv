`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
 class environment;  
   generator gen;
   driver dri;
   monitor mon;
   scoreboard soc;
   
   mailbox gentodri;
   mailbox montosoc;
   virtual inter viff;
   
   function new( virtual inter viff);
     this.viff=viff;
     
     gentodri=new();
     montosoc=new();
     gen=new(gentodri);
     dri=new(viff,gentodri);
     mon=new(viff,montosoc);
     soc=new(montosoc);
   endfunction
   task test();
     fork
       gen.main();
       dri.main();
       mon.main();
       soc.main();
     join
   endtask
 endclass
