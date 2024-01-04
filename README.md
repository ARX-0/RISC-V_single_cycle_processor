# <p align="center">MIPS32 Single Cycle Processor Implementation</p>
<p align="center">
  <img src="https://img.shields.io/badge/License-Apache_2.0-blue.svg" alt="License">
</p>



This repository contains the Verilog implementation of a single-cycle MIPS32 processor. The goal is to bridge the gap between academic understanding and practical execution, following the RISC philosophy.

## Overview

This processor supports R, I, and J type instructions as outlined in the MIPS architecture. The design has been inspired by the concepts discussed in the book "Digital Design and Computer Architecture" by David Money Harris & Sarah L. Harris (Pages 368-380).

## Software Used

- Quartus Prime Lite Edition

## Implementation Details

The processor components have been organized into different modules, each specified in its own Verilog file. To make it more user-friendly, the following steps can be followed to generate the Symbol files for each component:

1. Open the Verilog source file for a specific component in Quartus Prime.
2. For each component, go to File -> Create/Update -> Create Symbol Files (.bsf).

## Getting Started
### Creating Symbol Files

For better usability, it's recommended to generate Symbol files (.bsf) for each component in your Verilog source. Symbol files provide a graphical representation of the module, making it easier to understand the design hierarchy.

Follow these steps to create Symbol files for each component:

1. Open Quartus Prime and navigate to the project.
2. For each Verilog source file, open the file in Quartus Prime.
3. Once the file is open, go to **File -> Create/Update -> Create Symbol Files (.bsf)**.

### Understanding Data Flow
## From the book 
![WhatsApp Image 2023-12-28 at 12 26 19_95e02b90](https://github.com/ARX-0/mips32-processor/assets/143102635/f52a988a-8784-4873-81d3-2e91dc20b970)

## For ALU decoder (reference) - see codes for better understanding 
![image](https://github.com/ARX-0/mips32-processor/assets/143102635/d104a01d-52fc-41e3-a31c-1078ec85d3e4)

## Implementation of dataflow in verilog 
![WhatsApp Image 2023-12-30 at 11 45 38_7acbd921](https://github.com/ARX-0/mips32-processor/assets/143102635/12c9bee5-9cf1-4623-912b-33c61e2c4d96)
![WhatsApp Image 2023-12-30 at 11 45 38_f5ca21c0](https://github.com/ARX-0/mips32-processor/assets/143102635/6653a80c-89ea-4e0d-ab0d-907754afc5e4)

## THE CONTROL UNIT 
![WhatsApp Image 2023-12-30 at 12 05 51_a0ca6b93](https://github.com/ARX-0/mips32-processor/assets/143102635/f5fd862d-9642-40fa-a366-3254ee6ecabf)

## MIPS single-cycle processor INTERFACED to EXTERNAL MEMORY 
![image](https://github.com/ARX-0/mips32-processor/assets/143102635/8f137d3a-4433-4a9f-a720-645060b84b17)
![image](https://github.com/ARX-0/mips32-processor/assets/143102635/97dd298e-825d-4678-9416-bae21e1b7df3)

## FINAL mips32 single cycle processor implementation
![image](https://github.com/ARX-0/mips32-processor/assets/143102635/c81cbe48-b724-48aa-98c4-e81d105d749d)
![image](https://github.com/ARX-0/mips32-processor/assets/143102635/e5a18af3-71cb-43c2-bb09-6c0be2c13d9a)

Feel free to explore the Verilog source code, testbenches, and documentation for more detailed insights.

## Contributors

- AthiRam  <https://www.linkedin.com/in/athiram-r-s-b2bb99259/>

## License

This project is licensed under the [Apache License 2.0](LICENSE) - see the [LICENSE](LICENSE) file for details.
