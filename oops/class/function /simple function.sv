module tb;

function byte show(int a,b);
   return a+b;
endfunction

initial begin
   show(10,20);
   $display("%0d", show(10,20));
end
endmodule
