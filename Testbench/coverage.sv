class coverage;
  transaction trans;
  covergroup cg;
    option.per_instance=1;
    A:coverpoint trans.a;
    B:coverpoint trans.b;
    ALL:cross A,B;
  endgroup
  function new();
    cg=new();
  endfunction
  task run();
    forever begin
      common::mon2cov.get(trans);
      cg.sample();
    end
  endtask
endclass
