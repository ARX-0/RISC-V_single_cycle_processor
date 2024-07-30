# <p align="center">High Speed Single Cycle Processor Implementation</p>
<p align="center">
  <img src="https://img.shields.io/badge/License-Apache_2.0-blue.svg" alt="License">
</p>

<p align="center">
  This repository contains the Verilog implementation of a single-cycle processor. The goal is to bridge the gap between academic understanding and practical execution, following the RISC philosophy.
</p>

## <p align="center">Overview</p>

<p align="center">
  This processor supports R, I, and J type instructions as outlined in the MIPS architecture. The design has been inspired by the concepts discussed in the book "Digital Design and Computer Architecture" by David Money Harris & Sarah L. Harris (Pages 368-380).
</p>

## <p align="center">Software Used</p>

<p align="center">
  - Quartus Prime Lite Edition
</p>

## <p align="center">Implementation Details</p>

<p align="center">
  The processor components have been organized into different modules, each specified in its own Verilog file. To make it more user-friendly, the following steps can be followed to generate the Symbol files for each component:
</p>

<p align="center">
  1. Open the Verilog source file for a specific component in Quartus Prime.
</p>

<p align="center">
  2. For each component, go to File -> Create/Update -> Create Symbol Files (.bsf).
</p>

## <p align="center">Getting Started</p>

<p align="center">
  <b>Creating Symbol Files</b>
</p>

<p align="center">
  For better usability, it's recommended to generate Symbol files (.bsf) for each component in your Verilog source. Symbol files provide a graphical representation of the module, making it easier to understand the design hierarchy.
</p>

<p align="center">
  Follow these steps to create Symbol files for each component:
</p>

<p align="center">
  1. Open Quartus Prime and navigate to the project.
</p>

<p align="center">
  2. For each Verilog source file, open the file in Quartus Prime.
</p>

<p align="center">
  3. Once the file is open, go to <b>File -> Create/Update -> Create Symbol Files (.bsf)</b>.
</p>

## <p align="center">Understanding Data Flow</p>

### <p align="center">From the book</p>
<p align="center">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/f52a988a-8784-4873-81d3-2e91dc20b970" alt="Data Flow Image">
</p>

### <p align="center">For main decoder (reference) - see codes for better understanding</p>
<p align="center">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/d104a01d-52fc-41e3-a31c-1078ec85d3e4" alt="ALU Decoder Image">
</p>

### <p align="center">Implementation of dataflow in verilog</p>
<p align="center">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/12c9bee5-9cf1-4623-912b-33c61e2c4d96" alt="Dataflow Implementation Image 1">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/6653a80c-89ea-4e0d-ab0d-907754afc5e4" alt="Dataflow Implementation Image 2">
</p>

## <p align="center">THE CONTROL UNIT</p>

<p align="center">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/f5fd862d-9642-40fa-a366-3254ee6ecabf" alt="Control Unit Image">
</p>

## <p align="center">MIPS single-cycle processor INTERFACED to EXTERNAL MEMORY</p>

<p align="center">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/8f137d3a-4433-4a9f-a720-645060b84b17" alt="Processor to Memory Image 1">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/97dd298e-825d-4678-9416-bae21e1b7df3" alt="Processor to Memory Image 2">
</p>

## <p align="center">FINAL single cycle processor implementation</p>

<p align="center">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/c81cbe48-b724-48aa-98c4-e81d105d749d" alt="Final Processor Image 1">
  <img src="https://github.com/ARX-0/mips32-processor/assets/143102635/e5a18af3-71cb-43c2-bb09-6c0be2c13d9a" alt="Final Processor Image 2">
</p>

<p align="center">
  Feel free to explore the Verilog source code, testbenches, and documentation for more detailed insights.
</p>

## Contributors

  - AthiRam  <https://www.linkedin.com/in/athiram-r-s-b2bb99259/>


## License

  This project is licensed under the <a href="LICENSE">Apache License 2.0</a> - see the <a href="LICENSE">LICENSE</a> file for details.

