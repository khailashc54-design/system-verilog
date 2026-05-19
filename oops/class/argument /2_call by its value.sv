// call by its value 
module tb;
  int result;
  function int add(int a,b);
    return a+b ;

  endfunction 
  initial begin 
    result=add(10,20);

    $display("%0d",result);
  end
endmodule 
