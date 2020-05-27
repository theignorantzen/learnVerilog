# learnVerilog

A collection of HDL modules for most commonly studied digital circuits.

To run and test any of the modules you can just download the respective _module.v_ file and its testbench file _tb_module.v_ with the help of iVerilog or any other program supporting Verilog like **Vivado** or **ModelSim**.

For `iVerilog` use the following commands:

```
iverilog -o mysim example.v tb_example.v
vvp mysim
```

If you want to view the waveform download gtkwave. gtkwave is free and easy to use. Run the following command to see waveform.

```
gtkwave example.vcd
```

A more easy and hassle-free way would be to run it using [EDA Playground](https://www.edaplayground.com/) (It is an online free simulator)
