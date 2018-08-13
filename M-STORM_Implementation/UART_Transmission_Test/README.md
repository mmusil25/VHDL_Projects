### UART Transmission Test

This folder contains a VHDL entity and its dependencies for the Xilinx ZCU104 dev board that was used
to test register access and UART transmission. The entity collects values from the rings_testable.vhd
entity and pre_processes them for transmission using the UART_TX_CTRL.vhd entity. A state machine is
implemented to control data flow and add characters between values such as commas "," and line feeds 
in order that the serial output can be read as a .csv.

This program is a part of a larger project for FPGA failure analysis. This program is relatively simple
but the more advanced assets are intellectual property of IRT Saint-EXupery. 