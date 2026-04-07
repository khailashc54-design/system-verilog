module tb;
  int a[6]='{1,2,3,4,5,6};
  int sum;
  initial begin 
    foreach(a[i])begin
      $display("a[%0d]=%0d",a[i],i);
    end
    foreach(a[i])begin
      sum+=a[i];
      $display("a[%0d]=%0d,sum=%0d",i,a[i],sum);
    end
  end
endmodule
