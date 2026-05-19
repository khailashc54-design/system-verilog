module tb;
  initial begin 
  fork
    
   begin 
      
       $display("$time=%0t,dhoni",$time);
       #10;
       $display("$time=%0t,raina",$time);
  end
    begin 
      
      $display("$time=%0t,jadeja",$time);
       #20;
      $display("$time=%0t,hitman",$time);
  end
     begin 
      
      $display("$time=%0t,virat kholi",$time);
       #30;
      $display("$time=%0t,kailash ",$time);
  end
  join
    $display("$time=%0t,dube",$time);
 #20   $display("$time=%0t,dube",$time);
    
  
    end
endmodule 
  //  output
$time=0,dhoni
$time=0,jadeja
$time=0,virat kholi
$time=10,raina
$time=20,hitman
$time=30,kailash 
$time=30,dube
$time=50,dube
