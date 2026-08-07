class packet;
  rand bit[7:0]a;
  rand bit[7:0]b;
  int count;
  function  pre_randomize();
    if(count==3)begin 
      rand_mode(0);
    $display("disable");
    end 
    else begin
      rand_mode(1);
      $display("enable ");
    end
          count++;

  endfunction
endclass
  module tb;
    packet p;
    initial begin 
      p=new();
      repeat (7)begin 
        $display("--------------------");
        p.randomize();
        
        $display("a=%0d b=%0d",p.a,p.b);
      end
    end
  endmodule
//============output=====================\\
--------------------
enable 
a=185 b=108
--------------------
enable 
a=91 b=128
--------------------
enable 
a=58 b=86
--------------------
disable
a=58 b=86
--------------------
enable 
a=7 b=82
--------------------
enable 
a=224 b=76
--------------------
enable 
a=211 b=214
           V C S   S i m u l a t i o n   R e p o r t
        
      
      
      
