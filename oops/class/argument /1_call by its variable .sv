module tb;
  int x,y,result;
  function int add(int a,b);
    return a+b ;
    $display("%0d",result);
  endfunction 
  initial begin 
    add(20,10);
    result=add(x,y);
    display();
  end
endmodule 
