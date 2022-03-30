################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name blp_s_aclk_ctrl_00 -period 10 [get_ports blp_s_aclk_ctrl_00]
create_clock -name blp_s_aclk_kernel_00 -period 5 [get_ports blp_s_aclk_kernel_00]
create_clock -name blp_s_aclk_kernel_01 -period 3.333 [get_ports blp_s_aclk_kernel_01]
create_clock -name blp_s_aclk_pcie_00 -period 4 [get_ports blp_s_aclk_pcie_00]
create_clock -name gt0_refclk_clk_p -period 6.206 [get_ports gt0_refclk_clk_p]
create_clock -name gt1_refclk_clk_p -period 6.206 [get_ports gt1_refclk_clk_p]

################################################################################
# Kernel clock overridden by user
create_clock -name USER_blp_s_aclk_kernel_00 -period 2.0 [get_ports blp_s_aclk_kernel_00]
