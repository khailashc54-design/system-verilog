module tb;
  typedef int  num_one;
  num_one a;
  typedef enum {apple,pineapple,green,orange} fruit;
  fruit b;
  initial begin
      $monitor("value b=%0d",b);
    a=$random_range(10,-1);
     $display("value a=%0d",a);
    #5;
    b= pineapple;
    #5;
   b=orange;
  end
  initial begin
    a=$urandom_range(10000,50000);
    $display("value a=%0d",a);
    b=orange;
    
    $display("value b=%0d",b);
  end
endmodule  
