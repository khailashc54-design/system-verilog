class transaction;
  rand logic a,b,cin;
  logic sum,carry;
  function void display();
    $display("a=%0d b=%0d cin=%0d|sum=%0d carry=%0d",a,b,cin,carry);
  endfunction
endclass
