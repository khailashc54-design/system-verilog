module tb;
  logic [3:0] a;
  initial begin 
    a=15;
    $display("and=%b",&a);
    $display("or=%b",|a);
    $display("xor=%b",^a);
    $display("nand=%b",~&a);
    $display("nor=%b",~|a);
    $display("xnor=%b",~^a);
    $display("----------------");
    
    a=11;
    $display("and=%b",&a);
    $display("or=%b",|a);
    $display("xor=%b",^a);
    $display("nand=%b",~&a);
    $display("nor=%b",~|a);
    $display("xnor=%b",~^a);
    
  end
endmodule
