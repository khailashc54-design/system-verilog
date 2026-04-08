module b;
  int a,b;
  initial begin 
    a=5;
    #30 $display("value a=%0d t=%0t",a,$time);
    b=a++;
    #20  $display("value a=%0d t=%0t",a,$time);
    #10 $display("value b=%0d t=%0t",b,$time );
    b=++a;
    #10 $display("value b=%0d t=%0t",b,$time );
    #10  $display("value a=%0d t=%0t",a,$time);
    b=--a;
    #10 $display("value b=%0d t=%0t",b,$time );
    #10  $display("value a=%0d t=%0t",a,$time);
    b=a--;
    #10 $display("value b=%0d t=%0t",b,$time );
    #10  $display("value a=%0d t=%0t",a,$time);
    b=a++ +a++;
    #10 $display("value b=%0d t=%0t",a,$time );
    #10  $display("value a=%0d t=%0t",b,$time);
  end 
endmodule 
  
