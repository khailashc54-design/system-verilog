module tb;
  int d[]='{2,4,5,6,6,6,8,9,4,3,4}; 
 shortint b[];
  initial begin 
    $display("value=%p",d);
    $display("value=%p",d.size());
    b=new[d.size()+1](b);
    $display("value=%p",b);
    foreach(b[i])
      b[i]=$urandom;
    $display("value=%p",b);
    d.delete();
    $display("value=%p",d.size());
    
   end
endmodule 
//output
value='{2, 4, 5, 6, 6, 6, 8, 9, 4, 3, 4}
value=11
value='{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
value='{14853, -3083, -1427, -7829, -13057, 29800, -8885, 21482, 15403, 31689, -24309, 14808}
value=0
