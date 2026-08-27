class transaction;
  rand bit d;
  rand bit q;
  rand bit rst;

  
  constraint c1 {rst dist{0:=20,1:=80};}
endclass
  
