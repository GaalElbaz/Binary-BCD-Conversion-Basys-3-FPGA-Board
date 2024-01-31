# Binary to BCD Converter

## Overview
Implementing a Binary to Binary-Coded Decimal (BCD) converter on the Basys 3 FPGA board, this project is crafted with SystemVerilog and developed using Xilinx Vivado.

## Features

- **Binary to BCD Conversion:** Converts an 8-bit binary number to a 12-bit BCD representation.
- **Algorithm:** Utilizes the Shift-and-Add-3 algorithm for the conversion process.
    1. Shift the binary number left one bit.
    2. After 8 shifts, the BCD number is in the Hundreds, Tens, and Units columns.
    3. If any BCD column value is 5 or greater, add 3 to that value.
    4. Repeat the process.

## Implementation Details

- **Hardware Description Language (HDL):** SystemVerilog
- **FPGA Board:** Basys 3
- **Development Tool:** Xilinx Vivado

## Usage

1. **Switch Control:** Utilize the Basys 3 board switches to control the input binary number.
2. **7-Segment Display:** The 7-segment display on the Basys 3 board will showcase the BCD representation of the converted number.


