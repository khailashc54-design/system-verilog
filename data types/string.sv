// Code your testbench here
// or browse Examples
module string_tb;
  string mm="kailash";
  initial begin 
    string s;
    $display("len=%0d",mm.len());
    s="swastina";
    $display("hw=%s",{mm,s});
    s.putc(1,"k");
    $display("d=%s",s);
    $display("lowercase=",mm.toupper());
    s="KAILASH";
    $display("compare=",mm.compare(s));
    s="Kailash";
    $display("compare=",mm.compare(s));
    s="KAILASH";
    $display("compare=",mm.icompare(s));
    
  end
endmodule
  //output
len=7
hw=kailashswastina
d=skastina
lowercase=KAILASH
compare=          1
compare=          1
compare=          0
