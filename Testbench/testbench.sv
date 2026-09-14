`include "common.sv"
`include "transaction.sv"
`include "generator.sv"
`include "interface.sv"
`include "driver.sv"
`include "coverage.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "agent.sv"
`include "environment.sv"
module top;
  intf pif();
  environment env;
  initial begin
    env=new();
    env.run();
  end
  half_adder HA(
    .a(pif.a),
    .b(pif.b),
    .sum(pif.sum),
    .carry(pif.carry));
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  end
  initial begin
    #100
    $display("coverage=%0.2f %%",$get_coverage());
    $finish;
  end
endmodule
