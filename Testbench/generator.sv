class generator;
  transaction trans;
  task run();
    repeat(10) begin
      trans=new();
      trans.randomize();
      trans.print("generator class signals");
      $display("----------------------------");
      common::gen2drv.put(trans);
    end
  endtask
endclass
