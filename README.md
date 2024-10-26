# 4-Bit Synchronous Counter

## Overview
This repository contains a Verilog implementation of a 4-bit synchronous counter. The counter increments its value on every clock pulse, providing a simple example of digital design concepts, particularly focusing on synchronous circuits.

## Features
- **4-bit output**: Counts from 0 to 15 (0 to 1111 in binary).
- **Synchronous operation**: The counter updates its value based on the clock signal.
- **Reset functionality**: The counter can be reset to 0 using an active-high reset signal.
- **Testbench included**: A Verilog testbench to simulate and verify the counter's functionality.

## Tools Used
- **Verilog**: The hardware description language used for designing the counter.
- **Icarus Verilog**: A simulator for Verilog code.
- **GTKWave**: A waveform viewer to visualize the simulation results.
- **Docker**: Used to create a consistent development environment.
- **VS Code**: An Integrated Development Environment (IDE) for coding.

### Acknowledgments
Thanks to Igor Freire's blog that helped in setting up VS Code to implement and test this verilog code:
https://igorfreire.com.br/2023/06/18/vscode-setup-for-systemverilog-development/
