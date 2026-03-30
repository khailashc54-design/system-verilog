module tb;
 bit clk;

  always #10 clk = ~clk;
  initial begin
  	bit [3:0] counter;

    $display ("Countera = %0d", counter);      
		do begin
			@ (posedge clk);
			counter ++;
          $display ("Counterb = %0d", counter);      
        end while (counter < 5);
    $display ("Counterc = %0d", counter);     
    $finish;
  end
endmodule

//output
Countera = 0
Counterb = 1
Counterb = 2
Counterb = 3
Counterb = 4
Counterb = 5
Counterc = 5
