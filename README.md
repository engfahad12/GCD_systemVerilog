**GCD Implementation in SystemVerilog**

**Description**
This project provides a SystemVerilog implementation of a module that calculates the Greatest Common Divisor (GCD) of two integers using the Euclidean algorithm. It includes the main GCD module and a testbench for verification.

**Features**_
- Implements the Euclidean algorithm for GCD.
- Supports two integer inputs.
- Fully synthesizable and FPGA-friendly.
- 
**Getting Started**
To use this project, you will need:
- A SystemVerilog simulator (e.g., ModelSim, XSIM, Vivado).
- Optional: An FPGA development board for hardware testing.
1. Clone this repository:
   git clone https://github.com/fahadhussain-1/GCD_SystemVerilog.git
2. Open the project files in your SystemVerilog simulator.
3. Run the testbench to verify functionality.
   
**Usage**
The `GCD` module has the following interface:
Port Name	Direction	Width	Description
clk	Input	1-bit	Clock signal
rst	Input	1-bit	Synchronous reset
X	Input	32-bit	First input integer
Y	Input	32-bit	Second input integer
Result	Output	32-bit	Computed GCD
done	Output	1-bit	Completion flag

**Results**
The module was simulated using the provided testbench. Below are some example inputs and outputs:
Input A	Input B	Computed GCD
56	98	14
48	18	6
101	103	1
 ![image](https://github.com/user-attachments/assets/87d97352-098e-4b3a-b5e1-44cd897fc3c9)
Figure 1: GCD of 48 and 18 is 6

**Contributing**
Contributions, issues, and feature requests are welcome! Feel free to fork this repository and submit a pull request.

**Acknowledgments**
This project was inspired by digital design practices and coursework. Special thanks to the open-source hardware community for tools and support.

