module tb;
  typedef enum{apple,orange,pineapple,greenapple}fruit;
  fruit a;
  initial begin
    a =greenapple;
    $display("%s",a.name());
   a = a.first();
    $display("%s", a.name());
    a=a.next();
    $display("%s", a.name());
    a=a.last();
    $display("%s", a.name());
    a = a.prev();
    $display("%s", a.name());
  end
endmodule
