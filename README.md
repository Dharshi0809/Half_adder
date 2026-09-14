Half Adder – SystemVerilog Verification

Overview

This project implements a 1-bit Half Adder using Verilog HDL and verifies its functionality using a SystemVerilog-based verification environment.

The Half Adder takes two 1-bit inputs and produces two outputs:

* Sum
* Carry

DUT – Half Adder

Inputs:

 `a` – 1-bit input
 `b` – 1-bit input

Outputs:

* `sum` – Sum output
* `carry` – Carry output

Logic:

Sum = A XOR B
Carry = A AND B

SystemVerilog Verification

The verification environment consists of:

* Transaction – Stores and transfers test data
* Generator – Generates different input transactions
* Driver – Applies inputs to the DUT
* Monitor – Observes DUT inputs and outputs
* Scoreboard – Compares expected and actual results
* Coverage – Measures functional coverage
* Interface – Connects the testbench with the DUT
* Environment – Connects the verification components

## Functional Coverage

Functional coverage is used to ensure that all possible input combinations are tested.

Coverage includes:

* Input A
* Input B
* Cross coverage of A and B

## Truth Table

| A | B | Sum | Carry |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

## Verification Flow

Generator → Driver → DUT → Monitor → Scoreboard → Expected vs Actual

Functional coverage is collected during the verification process to ensure that the required input scenarios are exercised.

## Tools & Technologies

* Verilog HDL
* SystemVerilog
* Synopsys VCS
* Synopsys Verdi

## Project Structure

Half_adder/
├── DUT/
│   └── design.sv
│
├── Testbench/
│   ├── testbench.sv
│   ├── h_transaction.sv
│   ├── h_generator.sv
│   ├── h_driver.sv
│   ├── h_monitor.sv
│   ├── h_scoreboard.sv
│   ├── h_agent.sv
│   ├── h_environment.sv
│   ├── h_interface.sv
│   ├── h_common.sv
│   └── h_coverage.sv
│
└── README.md

## Objective

The objective of this project is to demonstrate SystemVerilog-based RTL verification using a structured testbench with transaction-based stimulus generation, monitoring, scoreboard checking, and functional coverage.
