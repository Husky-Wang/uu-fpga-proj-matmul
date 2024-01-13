# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/sw_sd/top_wrapper_sd/platform.tcl
# 
# OR launch xsct and run below command.
# source /localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/sw_sd/top_wrapper_sd/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {top_wrapper_sd}\
-hw {/localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/hw_sd/top_wrapper_sd.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/sw_sd}

platform write
platform generate -domains 
platform active {top_wrapper_sd}
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_domain}
bsp reload
bsp setlib -name xilffs -ver 5.0
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
platform generate -domains 
platform clean
platform generate
platform active {top_wrapper_sd}
platform config -updatehw {/localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/hw_sd/top_wrapper_sd.xsa}
platform generate -domains 
platform generate -domains standalone_domain,zynq_fsbl 
platform generate -domains standalone_domain,zynq_fsbl 
platform clean
platform clean
platform generate
