# VHDL Sensitivity List Error

This repository demonstrates a common error in VHDL code involving incomplete sensitivity lists in processes.  The `bug.vhdl` file contains code with an incorrect sensitivity list that can lead to unexpected behavior.  The solution is provided in `bugSolution.vhdl`.

## Problem

The `wrong_sensitivity` entity attempts to transfer input data to output data on the rising edge of a clock. However, the process only has `clk` in its sensitivity list. If the `data_in` signal changes asynchronously with respect to the clock, the change in `data_in` will not be registered. 

## Solution

The corrected code adds `data_in` to the sensitivity list to ensure that the process is triggered whenever `data_in` changes, regardless of clock signal. This fixes the incomplete sensitivity list and ensures correct functionality even with asynchronous signal changes.

## How to Reproduce

1.  Compile and simulate `bug.vhdl`. Observe that the changes in `data_in` may not affect `data_out` if they happen outside the clock cycle.
2. Compile and simulate `bugSolution.vhdl`. Verify that `data_out` correctly reflects the changes in `data_in`, even asynchronously.
