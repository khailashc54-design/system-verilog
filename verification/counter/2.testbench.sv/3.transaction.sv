class transaction;
  rand bit rst;
  
  bit[3:0] cout;
  
  constraint c1{rst dist{1:=10,0:=90};}
  
  endclass
  
