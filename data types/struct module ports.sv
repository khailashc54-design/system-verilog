//Code your design here
module structure;
  typedef struct packed{int a;int name;struct packed{int area;}a1;}parent;
  typedef struct packed {int a;int name;struct packed {int area;}a3;}child;
  parent a2;
  child a4;
  initial begin
    a2='{20,30,'{40}};
    a4.a=a2.a;
    a4.a3.area=a2.a1.area;
    a4.name=a2.name;
    $display("value a=%0d",a4.a);
    $display("value b=%0d",a4.name);
    $display("value a=%0d",a2.a1.area);
    
  end
endmodule

  
