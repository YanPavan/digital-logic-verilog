# Digital Logic Design with Verilog

This repository contains Verilog implementations of basic combinational logic circuits, with a focus on hierarchical design, simulation, and verification.

## Implemented Designs

- 2-to-1 multiplexer
- 4-to-1 multiplexer built hierarchically from 2-to-1 multiplexers
- 2-to-4 decoder
- 3-to-8 decoder built hierarchically from 2-to-4 decoders

## Verification

The repository includes Verilog testbenches used to:

- Test multiple input combinations
- Verify expected outputs
- Test enable/disable behavior
- Generate waveform files for simulation analysis

## Concepts Practiced

- Gate-level Verilog
- Hierarchical digital design
- Multiplexers and decoders
- Boolean logic
- Testbench development
- Waveform analysis
- Testing and debugging

## Repository Structure

```text
digital-logic-verilog/
├── src/
│   ├── two_to_one_mux.v
│   ├── four_to_one_mux.v
│   ├── two_to_four_decoder.v
│   └── three_to_eight_decoder.v
│
├── testbench/
│   ├── four_to_one_mux_tb.v
│   └── three_to_eight_decoder_tb.v
│
└── README.md
