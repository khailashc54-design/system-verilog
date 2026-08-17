include "environment.sv"
program test(inter viff);
  environment envn;
  initial begin 
    envn=new(viff);
    envn.test();
  end 
endprogram 
    
