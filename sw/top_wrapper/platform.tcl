# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/sw/top_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/sw/top_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {top_wrapper}\
-hw {/localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/hw/top_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/sw}

platform write
platform generate -domains 
platform active {top_wrapper}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp setlib -name xilffs -ver 5.0
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp config num_logical_vol "1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp config num_logical_vol "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {top_wrapper}
platform generate
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {/localstorage/Temporary/UU/Embedded/FPGA/repo/uu-fpga-matmul/hw/top_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate -domains standalone_domain,zynq_fsbl 
platform clean
platform clean
platform generate
platform generate -domains standalone_domain,zynq_fsbl 
platform clean
platform generate
platform active {top_wrapper}
bsp reload
bsp reload
platform generate -domains 
platform generate -domains standalone_domain,zynq_fsbl 
platform clean
platform generate
platform clean
platform generate
