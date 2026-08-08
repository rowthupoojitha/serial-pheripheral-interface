# SPI Master-Slave Communication using Verilog

## Overview

This project implements the Serial Peripheral Interface (SPI) protocol using Verilog HDL.

The design includes:

- SPI Master
- SPI Slave
- Top Module
- Testbench
- Simulation Results

## Features

- SPI Mode-0
- 8-bit data transfer
- Configurable clock divider
- Full-duplex communication
- Simulation using ModelSim/GTKWave

## Folder Structure

rtl/
tb/
sim/
docs/

## SPI Signals

| Signal | Description |
|---------|-------------|
| SCLK | Serial Clock |
| MOSI | Master Out Slave In |
| MISO | Master In Slave Out |
| SS | Slave Select |

## Simulation

Run the testbench.

Observe:

- MOSI transmission
- MISO response
- Clock
- Slave Select

## Future Improvements

- SPI Modes 1,2,3
- FIFO Buffer
- Multiple Slaves
- FPGA implementation