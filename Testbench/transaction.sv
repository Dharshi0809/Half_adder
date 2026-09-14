class transaction;
  rand bit a,b;
  bit sum,carry;
  function void print(string tag="");
    
    $display("[%s],a=%0d,b=%0d,sum=%0d,carry=%0d",tag,a,b,sum,carry);
  endfunction
endclass
