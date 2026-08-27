`include "environment.sv"
program p1(inter inf);
  environment env;
  initial begin 
    env=new(inf);
    env.run();
  end
endprogram 
    
