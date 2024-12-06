# SG13G2_ASIC-Design-Template
This template repository is suited for analog-digital mixed signal design with the 130nm BiCMOS open-source SG13G2 PDK by IHP and the IIC-OSIC-Tools. 

IHP SG13G2 PDK: https://github.com/IHP-GmbH/IHP-Open-PDK

IIC-OSIC-Tools: https://github.com/iic-jku/IIC-OSIC-TOOLS

The installation of IIC-OSIC-Tools is explained under SG13G2_ASIC-Design-Template/doc/Docker-Tutorial.pdf

Temporary note: The current IIC-OSIC-Tools image is only compatible if the current tag is set to DOCKER_TAG=next.

The recommended folder structure makes it easy for automation with shell scripts. VHDL files are read and converted into Verilog files (...). If directly Verilog files are available, this step can be skipped. With OpenROAD flow-scripts (ORFS) the newly generated Verilog file is synthesized and a layout is created. The synthesized Verilog file is then converted into a .xspice file with qflow scripts (..., ..., ...) which can be included into Xschem for analog-digital mixed simulation. All these scripts are automated with run_all.sh and can be cleaned again with clean_all.sh. The template contains a 4-Bit counter to get an understanding of the structure and the file paths within the scripts.

Step-by-step introduction to set this repo up for your design:

- Download or clone this folder / repo into the foss/designs folder of your IIC-OSIC-Tools environment.
- Shift or copy the .designinit file from foss/designs/SG13G2_ASIC-Design-Template to foss/designs. This will change the used PDK to SG13G2 by IHP
- Rename the repo as you wish.
- Execute \texttt{clean\_all.sh}
- Add your VHDL code to the \texttt{vhdl} folder
- Add your \texttt{Xschem} files and testbench to the \texttt{xschem} folder
- Adapt VHDL paths in \texttt{vhdl2verilog.sh} in \texttt{verilog} folder. If the design is already done in Verilog, this step can be skipped. Do not forget to comment out this step also in \texttt{run\_all.sh}.
- Add config files to \texttt{orfs/flow/designs/ihp-sg13g2}. It is a good idea to copy an existing folder (e.g. counter) and adapt these files. Do not forget to set the path to the Verilog file in \texttt{config.mk}.
- Adapt name and Verilog path in \texttt{run\_all.sh}
- In the Xschem testbench, include the generated .xspice file with an absolute-path, otherwise ngspice will not find the file.
- Create a symbol with all needed pins (also VDD and VSS) and assign the pin order with SHIFT+S. The pin order can be found in the .xspice file (left signal = 0 to right signal = N-1). In the properties (open with key "q"), the type should be set to \texttt{type=primitive}.



For more detailed information, please refer to Option B in SG13G2_ASIC-Design-Template/doc/AMS_simulation.pdf.
