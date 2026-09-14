class monitor;
  virtual intf vif;
  function new();
    vif=top.pif;
  endfunction
  task run();
    transaction trans;
    forever begin
      @common::drv_done;
      trans=new();
      trans.a=vif.a;
      trans.b=vif.b;
      trans.sum=vif.sum;
      trans.carry=vif.carry;
      common::mon2scb.put(trans);
      common::mon2cov.put(trans);
      trans.print("monitor class signal");
      ->common::mon_done;
    end
  endtask
endclass
