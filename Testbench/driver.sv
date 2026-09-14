class driver;
  virtual intf vif;
  function new();
    vif=top.pif;
  endfunction
  task run();
    repeat(10) begin
      transaction trans;
      common::gen2drv.get(trans);
      vif.a=trans.a;
      vif.b=trans.b;
      #1;
      trans.sum=vif.sum;
      trans.carry=vif.carry;
      trans.print("driver class signal");
      ->common::drv_done;
      @common::mon_done;
    end
  endtask
endclass
      
