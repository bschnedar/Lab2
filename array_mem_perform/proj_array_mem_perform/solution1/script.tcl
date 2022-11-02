############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_array_mem_perform
set_top array_mem_perform
add_files array_mem_perform.c
add_files -tb result.golden.dat
add_files -tb array_mem_perform_test.c
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
source "./proj_array_mem_perform/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
