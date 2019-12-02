# GPP & BCS scripts
## rc -files ../scripts/setupe.tcl


if {[file exists /proc/cpuinfo]} {
  sh grep "model name" /proc/cpuinfo
  sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"
########################################################
## Include TCL utility scripts..
########################################################

include load_etc.tcl

##############################################################################
## Preset global variables and attributes
##############################################################################
# Top module name.
set DESIGN FME_INTER_2

#filtro_croma_Hibrido 

# set VHDLS {comp32_10bits_v1.vhd comp32_9bits_v1.vhd comp42_8bits_v1.vhd complemento2_10bits.vhd complemento2_8bits.vhd complemento2_9bits.vhd compressor_3entradas.vhd compressor_4entradas.vhd horizontal_v2.vhd mux_1bit.vhd }
#set VERILOGS {barreira.v }
#set PERIOD 66666

# change switch activity; low use 50%, medium: propagate from other nodes to nodes not declared, high: propagate with more accuracy. default: low{low | medium | high}
set POW_EFF high
set SYN_EFF high
set MAP_EFF low
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs
set _REPORTS_PATH reports
set _LOG_PATH logs
set _RESULTS_PATH results
shell rm -rf logs/ outputs/ rc.* reports/ results/
#shell mkdir outputss_${DATE}
shell mkdir outputs
shell mkdir reports
shell mkdir logs
shell mkdir results
#45nm
#set_attribute lib_search_path{/home/gppaim/Vitor}
#set_attribute lib_search_path {. /opt/tools/cadence/design_kits/NandGate045/NangateOpenCellLibrary_PDKv1_3_v2009_07/liberty/ /opt/tools/cadence/design_kits/NandGate045/NangateOpenCellLibrary_PDKv1_3_v2009_07/verilog/ /opt/tools/cadence/design_kits/NandGate045/NangateOpenCellLibrary_PDKv1_3_v2009_07/lef/ /opt/tools/cadence/design_kits/NandGate045/NangateOpenCellLibrary_PDKv1_3_v2009_07/technology/techfile/encounter /opt/tools/cadence/design_kits/NandGate045/NangateOpenCellLibrary_PDKv1_3_v2009_07/technology/techfile/virtuoso } /
#65nm
set DK_PATH "/pdk/st/cmos065_421"

set lib_lvt_best_1_35V "${DK_PATH}/CORE65LPLVT_SNPS-AVT-CDS_4.1/libs/CORE65LPLVT_bc_1.35V_125C.lib \
                        ${DK_PATH}/CLOCK65LPLVT_SNPS-AVT-CDS_2.1/libs/CLOCK65LPLVT_bc_1.35V_125C.lib"

set lef_lvt_best_1_35V "${DK_PATH}/adv_EncounterTechnoKit_cmos065_7m4x0y2z_4.2/TECH/cmos065_7m4x0y2z_DBLCUT_RULE.lef \
                        ${DK_PATH}/PRHS65_SNPS-AVT-CDS_5.0/CADENCE/LEF/PRHS65_soc.lef \
                        ${DK_PATH}/CORE65LPLVT_SNPS-AVT-CDS_4.1/CADENCE/LEF/CORE65LPLVT.lef \
                        ${DK_PATH}/CLOCK65LPLVT_SNPS-AVT-CDS_2.1/LEF/CLOCK65LPLVT.lef"

set lib_svt_worst_1_25V "${DK_PATH}/CORE65LPSVT_SNPS-AVT-CDS_4.1/libs/CORE65LPSVT_wc_1.25V_125C.lib \
                        ${DK_PATH}/CLOCK65LPSVT_SNPS-AVT-CDS_2.1/libs/CLOCK65LPSVT_wc_1.25V_125C.lib"

set lef_svt_worst_1_25V "${DK_PATH}/adv_EncounterTechnoKit_cmos065_7m4x0y2z_4.2/TECH/cmos065_7m4x0y2z_Worst.lef \
                        ${DK_PATH}/PRHS65_SNPS-AVT-CDS_5.0/CADENCE/LEF/PRHS65_soc.lef \
                        ${DK_PATH}/CORE65LPSVT_SNPS-AVT-CDS_4.1/CADENCE/LEF/CORE65LPSVT_soc.lef \
                        ${DK_PATH}/CLOCK65LPSVT_SNPS-AVT-CDS_2.1/CADENCE/LEF/CLOCK65LPSVT_soc.lef"

set lib_svt_worst_1_0V "${DK_PATH}/CORE65LPSVT_SNPS-AVT-CDS_4.1/libs/CORE65LPSVT_wc_1.00V_125C.lib \
                        ${DK_PATH}/CLOCK65LPSVT_SNPS-AVT-CDS_2.1/libs/CLOCK65LPSVT_wc_1.00V_125C.lib"

set lib_svt_worst_0_9V "${DK_PATH}/CORE65LPSVT_SNPS-AVT-CDS_4.1/libs/CORE65LPSVT_wc_0.90V_125C.lib \
                        ${DK_PATH}/CLOCK65LPSVT_SNPS-AVT-CDS_2.1/libs/CLOCK65LPSVT_wc_0.90V_125C.lib"
                    
set lef_svt_worst_1_0V "${DK_PATH}/adv_EncounterTechnoKit_cmos065_7m4x0y2z_4.2/TECH/cmos065_7m4x0y2z_Worst.lef \
                        ${DK_PATH}/PRHS65_SNPS-AVT-CDS_5.0/CADENCE/LEF/PRHS65_soc.lef \
                        ${DK_PATH}/CORE65LPSVT_SNPS-AVT-CDS_4.1/CADENCE/LEF/CORE65LPSVT_soc.lef \
                        ${DK_PATH}/CLOCK65LPSVT_SNPS-AVT-CDS_2.1/CADENCE/LEF/CLOCK65LPSVT_soc.lef"
                  
set lef_svt_worst_0_9V "${DK_PATH}/adv_EncounterTechnoKit_cmos065_7m4x0y2z_4.2/TECH/cmos065_7m4x0y2z_Worst.lef \
                        ${DK_PATH}/PRHS65_SNPS-AVT-CDS_5.0/CADENCE/LEF/PRHS65_soc.lef \
                        ${DK_PATH}/CORE65LPSVT_SNPS-AVT-CDS_4.1/CADENCE/LEF/CORE65LPSVT_soc.lef \
                        ${DK_PATH}/CLOCK65LPSVT_SNPS-AVT-CDS_2.1/CADENCE/LEF/CLOCK65LPSVT_soc.lef"



                  
set captables "${DK_PATH}/adv_EncounterTechnoKit_cmos065_7m4x0y2z_4.2/TECH/cmos065_7m4x0y2z_Best.captable"
set_attribute library ${lib_svt_worst_1_25V}
set_attribute lef_library ${lef_svt_worst_1_25V}
set_attribute cap_table_file ${captables}



set_attribute script_search_path {. ../../} /
set_attribute hdl_search_path {. ../rtl ../package} /
#luma-Hibrido

##Default undriven/unconnected setting is 'none'.  
#set_attribute hdl_unconnected_input_port_value 0 | 1 | x | none /
set_attribute hdl_unconnected_input_port_value 0
##set_attribute hdl_undriven_output_port_value   0 | 1 | x | none /
set_attribute hdl_undriven_output_port_value   0
##set_attribute hdl_undriven_signal_value        0 | 1 | x | none /
set_attribute hdl_undriven_signal_value        0

set_attribute find_takes_multiple_names true

#HDL ERRORS
set_attribute hdl_error_on_blackbox true /
set_attribute hdl_error_on_latch true /
set_attribute hdl_error_on_negedge true /

#TIMING
# retime_effort_level high or low
#set_attribute retime_effort_level high / 
#set_attribute retime_optimize_reset true /



#set_attribute wireload_mode top /
set_attribute information_level 7 /
set_attribute lp_power_unit uW /

 #   set_attribute avoid true HS65_LS_FA1X4
 #   set_attribute avoid true HS65_LS_FA1X9
 #   set_attribute avoid true HS65_LS_FA1X18
 #   set_attribute avoid true HS65_LS_FA1X27
 #   set_attribute avoid true HS65_LS_FA1X35
 #   set_attribute avoid true HS65_LS_HA1X4
 #   set_attribute avoid true HS65_LS_HA1X9
 #   set_attribute avoid true HS65_LS_HA1X18
 #   set_attribute avoid true HS65_LS_HA1X27
 #   set_attribute avoid true HS65_LS_HA1X35



###############################################################
## Library setup
###############################################################
# from synopsys path
#NangateOpenCellLibrary_functional.lib
#set_attribute library $LIBRARY
#NangateOpenCellLibrary_typical_conditional_ecsm.lib
# NangateOpenCellLibrary_fast_conditional_ecsm.lib }
# NangateOpenCellLibrary_low_temp_conditional_ecsm.lib }
# NangateOpenCellLibrary_slow_conditional_ecsm.lib }
# NangateOpenCellLibrary_typical_conditional_ecsm.lib }
# NangateOpenCellLibrary_worst_low_conditional_ecsm.lib}

#set_attribute preserve false {D_CELLSL_MOSLP_typ_1_80V_25C.lib}
#set_attribute avoid false {D_CELLSL_MOSLP_typ_1_80V_25C.lib}low
# 
# set_attribute dp_perform_csa_operations true 
#set_attribute avoid true FA_X1
#set_attribute avoid true HA_X1
# desabilitar p/ nao compressor
# set_attribute avoid true XNOR2_X1 
# set_attribute avoid true XNOR2_X2
# set_attribute dp_perform_csa_operations true
#Wire Delay Estimation
# from cadence path
#45nm
#set_attribute lef_library {NangateOpenCellLibrary.lef NCSU_FreePDK_45nm.tf}    
#set_attr cap_table_file {NCSU_FreePDK_45nm.capTbl}

set_attr interconnect_mode ple /
set_attribute hdl_track_filename_row_col true /

#
###############################################################
## Clock gating 'e uma merxxxda
###############################################################
#set_attr lp_insert_clock_gating true /
#set_attribute lp_insert_operand_isolation true /
#set_attr lp_multi_vt_optimization_effort high /

####################################################################
## Load RTL Design verilog or vhdl, (create a single top file to call all others)
####################################################################
puts "Reading HDLs..."
# read_hdl -v2001 hibrid_adder.v
# read_hdl -vhdl horizontal_v1
#  read_hdl  $VERILOGS -v2001
#  read_hdl  -vhdl  STD_SAD.vhd -library  work 
  read_hdl -vhdl FME_INTER_2.vhd

# chroma: filtro_croma.vhd FSM.vhd mux_2entradas.vhd RCA_radix4_8b.vhd registrador.vhd somador.vhd
# chroma_hibrido: eduardohibm2.vhd filtro_croma_Hibrido.vhd FSM.vhd mux_2entradas.vhd registrador.vhd somadorHibrido.vhd SumHibrido.vhd
# luma_hibrido: filtro_luma_Hibrido.vhd eduardohibm2.vhd FSM.vhd mux_2entradas.vhd registrador.vhd somadorHibrido.vhd

puts "Elaborate Design..."
elaborate $DESIGN
puts "Runtime & Memory after 'read_hdl'"
timestat Elaboration

check_design -unresolved

####################################################################
## Constraints Setup
####################################################################
read_sdc ../../constraints.sdc


define_clock -period 2322 -name clock_name [find [find / -design $DESIGN] -port clk]
path_adjust -delay -100 -to [find / -clock *] -name folga

# 1 megahertz clock
#set_attribute clock_setup_uncertainty {1000 1000} [find / -clock 1MHz]
# 1 nanosecond uncertainty for rise and fall
#set_attribute slew {100 100 1000 1000} [find / -clock 1MHz
# between 0.1 and 1 ns slew rate
#external_delay -clock [find / -clock clock_name] -output 200 [all_outputs]
#external_delay -clock [find / -clock clock_name] -input 200 [all_inputs]

#set_load 0.005 [all_outputs]
# this command sets the max power at 3mV. The tool will optimize a bit but it wont necessarily reach that goal.


puts "The number of exceptions is [llength [find /designs/$DESIGN -exception *]]"
if {![file exists ${_OUTPUTS_PATH}]} {
  file mkdir ${_OUTPUTS_PATH}
  puts "Creating directory ${_OUTPUTS_PATH}"
}
report timing -lint
###################################################################################################
## Architecture setup ( Multiply, CSA)
###################################################################################################
#select multiplier
#sintax: set_attribute user_sub_arch {booth | non_booth | radix8} \[find /designs* -subdesign name]
#set_attribute user_sub_arch booth [find / -design $DESIGN]

# turn off Carry Save Adders:  set_attr dp_perform_csa_operations {false | true} 
#set_attr dp_perform_csa_operations false
  # within a particular subdesign:
#set_attribute allow_csa_subdesign false [find /designs* -subdesign name]
 #set_attr dp_perform_shannon_operations true
 #set_attr dp_perform_sharing_operations true
 #set_attr dp_perform_speculation_operations true

################################################################################
## Power Directives- only make difference if swicthing activity file is provided
################################################################################
#set_attribute lp_optimize_dynamic_power_first true design $DESIGN 
#set_attribute lp_clock_gating_cell [find /lib* -libcell <cg_libcell_name>] "/designs/$DESIGN"
#set_attribute max_leakage_power 0.0 "/designs/$DESIGN"
#this command sets the max power at 2mW. The tool will optimize a bit but it wont necessarilly reach that goal
#set_attribute max_dynamic_power 0 design $DESIGN 
# change switch activity; low use 50%, medium: propagate from other nodes to nodes not declared, high: propagate with more accuracy. default: low
#set_attribute lp_power_analysis_effort {low | medium | high}
#set_attribute lp_power_analysis_effort $POW_EFF
#set_attribute lp_power_optimization_weight <value from 0 to 1> "/designs/$DESIGN"
#set_attribute lp_power_optimization_weight 1 design $DESIGN

# Builds  detailed power models for more accurate RTL power analysis.
# build_rtl_power_models -clean_up_netlist -design $DESIGN

#report power -rtl_cross_reference [-detail] [-flat ] [> file]
# -detail: RTL line and a list of the instances that correspond to that RTL
# -flat  : reports power information for all modules in the current hierarchy.
# report power -rtl_cross_reference -flat > $_REPORTS_PATH/RC_power_rtl_cross_ref.txt
# report power -rtl > $_REPORTS_PATH/RC_power_rtl.txt
# write_saif $DESIGN > $_OUTPUTS_PATH/rtl.saif  

 #report power -rtl_cross_reference -flat > $_REPORTS_PATH/RC_power_rtl_cross_ref.txt
#---------- removido por causar  segmentation violation ---------------
 #report power -rtl > $_REPORTS_PATH/RC_power_rtl.txt
 #write_saif $DESIGN > $_OUTPUTS_PATH/rtl.saif  

#############################################################################
## Swicthing Activity (before synthesis to mapped) 
#############################################################################
## read_tcf <TCF file name>
## read_saif <SAIF file name>
## read_vcd <VCD file name>
#read_vcd -static -module $DESIGN -vcd_module DUT1 ./tool_pipe.vcd
#read_vcd -activity_profile -module $DESIGN -vcd_module radix2_direto_tb ./tool_pipe.vcd.vhd       -Hibrido
#puts " Reading VCD file  "
# read_vcd -static -module $DESIGN -vcd_module DUT  ../../interpolacao_croma/croma.vcd
#  read_vcd -static -module $DESIGN -vcd_module DUT_CBB  ../../interpolacao_croma/filter_BB.vcd
#  read_vcd -static -module $DESIGN -vcd_module DUT_CBD  ../../interpolacao_croma/filter_BD.vcd
#  read_vcd -static -module $DESIGN -vcd_module DUT_CBP  ../../interpolacao_croma/filter_BP.vcd
#  read_vcd -static -module $DESIGN -vcd_module DUT_CBS  ../../interpolacao_croma/filter_BS.vcd
#  read_vcd -static -module $DESIGN -vcd_module DUT_CPS  ../../interpolacao_croma/filter_PS.vcd
#  read_vcd -static -module $DESIGN -vcd_module DUT_CRH  ../../interpolacao_croma/filter_RH.vcd

# build_rtl_power_models
#---------- se criado  "build_rtl_power_models" não DEVE ser lido ---------------
# read_saif $_OUTPUTS_PATH/rtl.saif
# Report (making sure tool knows power values)
#---------- removido por causar  segmentation violation ---------------
# report power > $_REPORTS_PATH/RC_power_bef_gen.txt
#report power -depth 1 > $_REPORTS_PATH/RC_power_short_bef_gen.txt

####################################################################################################
## Synthesizing to generic 
####################################################################################################
# turn off Carry Save Adders:   
#set_attr dp_perform_csa_operations false /

#set_max_fanout 3 $DESIGN

synthesize -to_generic -eff $SYN_EFF
puts "Runtime & Memory after 'synthesize -to_generic'"
timestat GENERIC
#report datapath > $_REPORTS_PATH/${DESIGN}_datapath_generic.log

report gates >generic_gates.log
## ungroup -threshold <value>

#set_max_fanout 3 $DESIGN

####################################################################################################
## Synthesizing to gates
####################################################################################################
synthesize -to_mapped -eff $MAP_EFF -incr
puts "Runtime & Memory after 'synthesize -to_map -no_incr'"
timestat MAPPED
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_map.log
#clock_gating share -hier ; # if clock gating disabled this is unnecessary

##Post global map netlist for LEC verification..
#write_hdl -lec > ${_OUTPUTS_PATH}/${DESIGN}_global_mapped.v
#write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_global_mapped.v -logfile ${_LOG_PATH}/rtl2globalmap.lec.log > ${_OUTPUTS_PATH}/rtl2globalmap.lec.do

#######################################################################################################
## Incremental Synthesis
#######################################################################################################
#synthesize -to_mapped -eff $MAP_EFF -incr   
puts "Runtime & Memory after incremental synthesis"
timestat INCREMENTAL

check_design -all

#read_vcd -static -module $DESIGN -vcd_module DUT  $VCDFILE

# retime - improves perfomance of the design by either optimizing the area or clock period
#retime -prepare -effort high $DESIGN
# -min_delay options optimizes design for timing
#retime -min_delay -effort high $DESIGN
# Retiming takes care of technology dependent optimizations.
#retime -min_area -effort high $DESIGN
# Retiming takes care of technology dependent optimizations.

#build_rtl_power_models -clean_up_netlist -design updown_counter

#############################################################################
## Swicthing Activity (after synthesis to mapped)
#############################################################################
# write sdf
write_sdf  -nosplit_timing_check -edges check_edge  >  barreira.sdf
#${_OUTPUTS_PATH}/${DESIGN}_SDF.sdf


#############################################################################
## Reports & Results
#############################################################################
#write -m  > ${_OUTPUTS_PATH}/${DESIGN}_m.hvsyn
#write_sdc > ${_OUTPUTS_PATH}/${DESIGN}_m.sdc
#write_script > ${_OUTPUTS_PATH}/${DESIGN}_m.script

# Timing reports for all modules
#report timing -worst 1 -through  C_structure/*[*] > $_REPORTS_PATH/RC_timing_C.txt
#report timing -worst 1 -through  D_structure/*[*] > $_REPORTS_PATH/RC_timing_D.txt
#report timing -worst 1 -through  E_structure/*[*] > $_REPORTS_PATH/RC_timing_E.txt

# Report worst timing
report timing > $_REPORTS_PATH/RC_timing.log
report area -depth 2 > $_REPORTS_PATH/RC_area.log
report area  > $_REPORTS_PATH/RC_area_short.log
report gates -power > $_REPORTS_PATH/RC_gates_power.log
report power -verbose > $_REPORTS_PATH/RC_power_verbose.log
report power -depth 1 > $_REPORTS_PATH/RC_power_short.log
report clock_gating > $_REPORTS_PATH/clock_gating.log
#write_encounter design -basename $_RESULTS_PATH/encountere $DESIGN

#adding timescale information do generated gates for use in simulation
#shell "sed -i '1i `timescale 1ns/10ps' $_RESULTS_PATH/udp_ip_struct.v" This line doesn't work on RC
#shell echo "`timescale 1ns/10ps" > temp
#shell cat $_RESULTS_PATH/encountere.v >> temp
#shell mv temp $_RESULTS_PATH/encountere.v


write_hdl -generic > martool_generic.v 
write_hdl -mapped  > martool.v

report qor

puts "Final Runtime & Memory."
timestat FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"

file copy [get_attr stdout_log /] ${_LOG_PATH}/.
report power -depth 0 -verbose >power.log
report timing >timing.log
report area  -depth 4 >area.log
report gates >gates.log
report yield >yield.log
report ple >ple.log
#report cell_delay_calculation [find [find / -design $DESIGN] -net *] > cell_delay.log
report datapath > datapath.log
#report net_cap_calculation n_0  > net_0.log
#report net_cap_calculation n_1  > net_1.log
#%report net_cap_calculation n_180  > net_180.log
 
  report gates -power

quit

