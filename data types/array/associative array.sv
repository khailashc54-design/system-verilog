module tb;
  int array[string];
  initial begin
    array='{"apple":1,"pineapple":2,"orenge":0,"zoo":0};
    $display ("size=%0d",array.size());
    $display ("size=%0d",array.num());
    if(array.exists("apple"))begin
      $display ("yes");
    if(!array.exists("green apple"))
            $display ("no");
    end
    begin
    string f;
      if (array.first(f))
        $display ("first_array[%s]=%0d",f,array[f]);
      if(array.last(f))
        $display("last_array[%s]=%0d",f,array[f]);
    end
      begin
       string f="zoo";
        if(array.prev(f))
          $display("prev[%s]=%0d",f,array[f]);
      end
      begin
        string f="apple";
      if(array.next(f))
        $display("next=[%s]=%0d",f,array[f]);
      end
    
  end
endmodule
  //output
size=4
size=4
yes
no
first_array[apple]=1
last_array[zoo]=0
prev[pineapple]=2
next=[orenge]=0
