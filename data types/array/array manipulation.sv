module tb;
  int d[]='{2,4,5,6,6,6,0,7,9,4,3,4};
  int p[$];  
  initial begin 
    p = d.find(x) with (x == 2);
     $display("p = %p",p);
    p=d.find_index(x)with (x == 4);
     $display("p = %p",p);
    p=d.find_last(x) with (x<7);
     $display("p = %p",p);
    p=d.find_first_index(x) with(x>7);
    $display("p = %p",p);
    p=d.find_last_index(x) with(x==4);
    $display("p = %p",p);
    p=d.max();
    $display("p = %p",p);
    p=d.min();
    $display("p = %p",p);
    p=d.unique(x) with(x<4);
    $display("p = %p",p);
    p=d.unique_index();
    $display("p = %p",p);
  end
endmodule
//output
p = '{2}
p = '{1, 9, 11}
p = '{4}
p = '{8}
p = '{11}
p = '{9}
p = '{0}
p = '{2, 4}
p = '{0, 1, 2, 3, 6, 7, 8, 10}
