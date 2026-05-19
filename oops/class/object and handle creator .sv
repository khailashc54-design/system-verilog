// class 
class add;
    
int sum;
  function int adder (input int a,b);
    
    sum=a+b;
    $display("%0d",sum);
    return sum;
  endfunction
endclass
//module 
  module tb;
    add add1;//hadler creater 
  initial begin
     
    add1=new();// object creater 
    add1.adder(10,10);
   
  end
  endmodule 
