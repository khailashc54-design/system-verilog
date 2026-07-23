module tb;

  int x = 10;

  function automatic void  change(ref int a);

   a = a + 20;

    $display("Inside function a = %0d", a);

  endfunction


  initial begin

    $display("Before function call x = %0d", x);

    change(x);

    $display("After function call x = %0d", x);

  end

endmodule
