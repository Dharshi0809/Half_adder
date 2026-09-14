class scoreboard;
  task run;
  forever begin
    transaction trans;
    trans=new();
    common::mon2scb.get(trans);
    trans.print("scoreboard class signal");
    $display("----------------------------");
    if(((trans.a ^ trans.b)==trans.sum)
       &&((trans.a & trans.b)==trans.carry))
      $display("-----its a winnnnn-----");
    else
      $display("-----you lose----------");
  end
  endtask
endclass
