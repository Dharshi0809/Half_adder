`include "h_common.sv"
`include "h_transaction.sv"
`include "h_generator.sv"
`include "h_interface.sv"
`include "h_driver.sv"
`include "h_coverage.sv"
`include "h_monitor.sv"
`include "h_scoreboard.sv"
`include "h_agent.sv"
`include "h_environment.sv"
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
