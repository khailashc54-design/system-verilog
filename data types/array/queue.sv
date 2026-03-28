module tb;
  int num[$:6]={1,2,6,7,4,8};
  initial begin
    $display("number=%0d",num.size());
    num.insert (3,9);
    $display("number=%p",num);
    num.push_back(7);
    $display("number=%p",num);
   num.pop_back();
     $display("number=%p",num);
     num.pop_front();
      $display("number=%p",num);
    num.push_front(7);
     $display("number=%p",num);
     num.push_back(7);
    $display("number=%p",num);
  end
endmodule
             
  
