#Revision 1: Added ring_basys.vhd output to UART2 pins
#Mark Musil 26, July, 2018
#
#CLOCKS
#PS_REF_CLK 33.33 MHz from U182 IDT 8T49N287A
#Other net PACKAGE_PIN R24 - PS_REF_CLK Bank 503 - PS_REF_CLK
#CLK_125 125 MHz U69 SI5341B
# CLOCKS
# 125 MHz (PL BANK 68) from U182 IDT 8T49N287A Q6
set_property PACKAGE_PIN E23 [get_ports "CLK_125_N"];
set_property IOSTANDARD LVDS [get_ports "CLK_125_N"];
set_property PACKAGE_PIN F23 [get_ports "CLK_125_P"];  # Clock input to the ring_basys entity
set_property IOSTANDARD LVDS [get_ports "CLK_125_P"];
# 300 MHz (PL BANK 64) from U182 IDT 8T49N287A Q4
set_property PACKAGE_PIN AH17 [get_ports "CLK_300_N"] ;
set_property IOSTANDARD DIFF_SSTL12 [get_ports "CLK_300_N"] ;
set_property PACKAGE_PIN AH18 [get_ports "CLK_300_P"] ;
set_property IOSTANDARD DIFF_SSTL12 [get_ports "CLK_300_P"] ;
#MEMORY
# DDR4 SODIMM SOCKET J1 (PL BANKS 64, 65, 66)
set_property PACKAGE_PIN AH16 [get_ports "DDR4_SODIMM_A0"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A0"] ;
set_property PACKAGE_PIN AG14 [get_ports "DDR4_SODIMM_A1"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A1"] ;
set_property PACKAGE_PIN AG15 [get_ports "DDR4_SODIMM_A2"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A2"] ;
set_property PACKAGE_PIN AF15 [get_ports "DDR4_SODIMM_A3"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A3"] ;
set_property PACKAGE_PIN AF16 [get_ports "DDR4_SODIMM_A4"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A4"] ;
set_property PACKAGE_PIN AJ14 [get_ports "DDR4_SODIMM_A5"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A5"] ;
set_property PACKAGE_PIN AH14 [get_ports "DDR4_SODIMM_A6"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A6"] ;
set_property PACKAGE_PIN AF17 [get_ports "DDR4_SODIMM_A7"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A7"] ;
set_property PACKAGE_PIN AK17 [get_ports "DDR4_SODIMM_A8"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A8"] ;
set_property PACKAGE_PIN AJ17 [get_ports "DDR4_SODIMM_A9"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A9"] ;
set_property PACKAGE_PIN AK14 [get_ports "DDR4_SODIMM_A10"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A10"] ;
set_property PACKAGE_PIN AK15 [get_ports "DDR4_SODIMM_A11"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A11"] ;
set_property PACKAGE_PIN AL18 [get_ports "DDR4_SODIMM_A12"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A12"] ;
set_property PACKAGE_PIN AK18 [get_ports "DDR4_SODIMM_A13"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_A13"] ;
set_property PACKAGE_PIN AL15 [get_ports "DDR4_SODIMM_BA0"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_BA0"] ;
set_property PACKAGE_PIN AL16 [get_ports "DDR4_SODIMM_BA1"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_BA1"] ;
set_property PACKAGE_PIN AC16 [get_ports "DDR4_SODIMM_BG0"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_BG0"] ;
set_property PACKAGE_PIN AB16 [get_ports "DDR4_SODIMM_BG1"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_BG1"] ;
set_property PACKAGE_PIN AE24 [get_ports "DDR4_SODIMM_DQ0"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ0"] ;
set_property PACKAGE_PIN AE23 [get_ports "DDR4_SODIMM_DQ1"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ1"] ;
set_property PACKAGE_PIN AF22 [get_ports "DDR4_SODIMM_DQ2"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ2"] ;
set_property PACKAGE_PIN AF21 [get_ports "DDR4_SODIMM_DQ3"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ3"] ;
set_property PACKAGE_PIN AG20 [get_ports "DDR4_SODIMM_DQ4"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ4"] ;
set_property PACKAGE_PIN AG19 [get_ports "DDR4_SODIMM_DQ5"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ5"] ;
set_property PACKAGE_PIN AH21 [get_ports "DDR4_SODIMM_DQ6"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ6"] ;
set_property PACKAGE_PIN AG21 [get_ports "DDR4_SODIMM_DQ7"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ7"] ;
set_property PACKAGE_PIN AA20 [get_ports "DDR4_SODIMM_DQ8"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ8"] ;
set_property PACKAGE_PIN AA19 [get_ports "DDR4_SODIMM_DQ9"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ9"] ;
set_property PACKAGE_PIN AD19 [get_ports "DDR4_SODIMM_DQ10"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ10"] ;
set_property PACKAGE_PIN AC18 [get_ports "DDR4_SODIMM_DQ11"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ11"] ;
set_property PACKAGE_PIN AE20 [get_ports "DDR4_SODIMM_DQ12"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ12"] ;
set_property PACKAGE_PIN AD20 [get_ports "DDR4_SODIMM_DQ13"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ13"] ;
set_property PACKAGE_PIN AC19 [get_ports "DDR4_SODIMM_DQ14"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ14"] ;
set_property PACKAGE_PIN AB19 [get_ports "DDR4_SODIMM_DQ15"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ15"] ;
set_property PACKAGE_PIN AJ22 [get_ports "DDR4_SODIMM_DQ16"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ16"] ;
set_property PACKAGE_PIN AJ21 [get_ports "DDR4_SODIMM_DQ17"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ17"] ;
set_property PACKAGE_PIN AK20 [get_ports "DDR4_SODIMM_DQ18"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ18"] ;
set_property PACKAGE_PIN AJ20 [get_ports "DDR4_SODIMM_DQ19"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ19"] ;
set_property PACKAGE_PIN AK19 [get_ports "DDR4_SODIMM_DQ20"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ20"] ;
set_property PACKAGE_PIN AJ19 [get_ports "DDR4_SODIMM_DQ21"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ21"] ;
set_property PACKAGE_PIN AL23 [get_ports "DDR4_SODIMM_DQ22"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ22"] ;
set_property PACKAGE_PIN AL22 [get_ports "DDR4_SODIMM_DQ23"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ23"] ;
set_property PACKAGE_PIN AN23 [get_ports "DDR4_SODIMM_DQ24"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ24"] ;
set_property PACKAGE_PIN AM23 [get_ports "DDR4_SODIMM_DQ25"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ25"] ;
set_property PACKAGE_PIN AP23 [get_ports "DDR4_SODIMM_DQ26"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ26"] ;
set_property PACKAGE_PIN AN22 [get_ports "DDR4_SODIMM_DQ27"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ27"] ;
set_property PACKAGE_PIN AP22 [get_ports "DDR4_SODIMM_DQ28"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ28"] ;
set_property PACKAGE_PIN AP21 [get_ports "DDR4_SODIMM_DQ29"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ29"] ;
set_property PACKAGE_PIN AN19 [get_ports "DDR4_SODIMM_DQ30"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ30"] ;
set_property PACKAGE_PIN AM19 [get_ports "DDR4_SODIMM_DQ31"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ31"] ;
set_property PACKAGE_PIN AC13 [get_ports "DDR4_SODIMM_DQ32"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ32"] ;
set_property PACKAGE_PIN AB13 [get_ports "DDR4_SODIMM_DQ33"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ33"] ;
set_property PACKAGE_PIN AF12 [get_ports "DDR4_SODIMM_DQ34"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ34"] ;
set_property PACKAGE_PIN AE12 [get_ports "DDR4_SODIMM_DQ35"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ35"] ;
set_property PACKAGE_PIN AF13 [get_ports "DDR4_SODIMM_DQ36"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ36"] ;
set_property PACKAGE_PIN AE13 [get_ports "DDR4_SODIMM_DQ37"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ37"] ;
set_property PACKAGE_PIN AE14 [get_ports "DDR4_SODIMM_DQ38"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ38"] ;
set_property PACKAGE_PIN AD14 [get_ports "DDR4_SODIMM_DQ39"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ39"] ;
set_property PACKAGE_PIN AG8 [get_ports "DDR4_SODIMM_DQ40"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ40"] ;
set_property PACKAGE_PIN AF8 [get_ports "DDR4_SODIMM_DQ41"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ41"] ;
set_property PACKAGE_PIN AG10 [get_ports "DDR4_SODIMM_DQ42"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ42"] ;
set_property PACKAGE_PIN AG11 [get_ports "DDR4_SODIMM_DQ43"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ43"] ;
set_property PACKAGE_PIN AH13 [get_ports "DDR4_SODIMM_DQ44"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ44"] ;
set_property PACKAGE_PIN AG13 [get_ports "DDR4_SODIMM_DQ45"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ45"] ;
set_property PACKAGE_PIN AJ11 [get_ports "DDR4_SODIMM_DQ46"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ46"] ;
set_property PACKAGE_PIN AH11 [get_ports "DDR4_SODIMM_DQ47"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ47"] ;
set_property PACKAGE_PIN AK9 [get_ports "DDR4_SODIMM_DQ48"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ48"] ;
set_property PACKAGE_PIN AJ9 [get_ports "DDR4_SODIMM_DQ49"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ49"] ;
set_property PACKAGE_PIN AK10 [get_ports "DDR4_SODIMM_DQ50"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ50"] ;
set_property PACKAGE_PIN AJ10 [get_ports "DDR4_SODIMM_DQ51"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ51"] ;
set_property PACKAGE_PIN AL12 [get_ports "DDR4_SODIMM_DQ52"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ52"] ;
set_property PACKAGE_PIN AK12 [get_ports "DDR4_SODIMM_DQ53"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ53"] ;
set_property PACKAGE_PIN AL10 [get_ports "DDR4_SODIMM_DQ54"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ54"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ55"] ;
set_property PACKAGE_PIN AL11 [get_ports "DDR4_SODIMM_DQ55"] ;
set_property PACKAGE_PIN AM8 [get_ports "DDR4_SODIMM_DQ56"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ56"] ;
set_property PACKAGE_PIN AM9 [get_ports "DDR4_SODIMM_DQ57"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ57"] ;
set_property PACKAGE_PIN AM10 [get_ports "DDR4_SODIMM_DQ58"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ58"] ;
set_property PACKAGE_PIN AM11 [get_ports "DDR4_SODIMM_DQ59"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ59"] ;
set_property PACKAGE_PIN AP11 [get_ports "DDR4_SODIMM_DQ60"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ60"] ;
set_property PACKAGE_PIN AN11 [get_ports "DDR4_SODIMM_DQ61"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ61"] ;
set_property PACKAGE_PIN AP9 [get_ports "DDR4_SODIMM_DQ62"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ62"] ;
set_property PACKAGE_PIN AP10 [get_ports "DDR4_SODIMM_DQ63"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DQ63"] ;
set_property PACKAGE_PIN AH22 [get_ports "DDR4_SODIMM_DM0_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM0_B"] ;
set_property PACKAGE_PIN AE18 [get_ports "DDR4_SODIMM_DM1_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM1_B"] ;
set_property PACKAGE_PIN AL20 [get_ports "DDR4_SODIMM_DM2_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM2_B"] ;
set_property PACKAGE_PIN AP19 [get_ports "DDR4_SODIMM_DM3_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM3_B"] ;
set_property PACKAGE_PIN AF11 [get_ports "DDR4_SODIMM_DM4_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM4_B"] ;
set_property PACKAGE_PIN AH12 [get_ports "DDR4_SODIMM_DM5_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM5_B"] ;
set_property PACKAGE_PIN AK13 [get_ports "DDR4_SODIMM_DM6_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM6_B"] ;
set_property PACKAGE_PIN AN12 [get_ports "DDR4_SODIMM_DM7_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_DM7_B"] ;
set_property PACKAGE_PIN AG23 [get_ports "DDR4_SODIMM_DQS0_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS0_C"] ;
set_property PACKAGE_PIN AF23 [get_ports "DDR4_SODIMM_DQS0_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS0_T"] ;
set_property PACKAGE_PIN AB18 [get_ports "DDR4_SODIMM_DQS1_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS1_C"] ;
set_property PACKAGE_PIN AA18 [get_ports "DDR4_SODIMM_DQS1_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS1_T"] ;
set_property PACKAGE_PIN AK23 [get_ports "DDR4_SODIMM_DQS2_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS2_C"] ;
set_property PACKAGE_PIN AK22 [get_ports "DDR4_SODIMM_DQS2_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS2_T"] ;
set_property PACKAGE_PIN AN21 [get_ports "DDR4_SODIMM_DQS3_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS3_C"] ;
set_property PACKAGE_PIN AM21 [get_ports "DDR4_SODIMM_DQS3_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS3_T"] ;
set_property PACKAGE_PIN AD12 [get_ports "DDR4_SODIMM_DQS4_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS4_C"] ;
set_property PACKAGE_PIN AC12 [get_ports "DDR4_SODIMM_DQS4_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS4_T"] ;
set_property PACKAGE_PIN AH9 [get_ports "DDR4_SODIMM_DQS5_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS5_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS5_T"] ;
set_property PACKAGE_PIN AG9 [get_ports "DDR4_SODIMM_DQS5_T"] ;
set_property PACKAGE_PIN AL8 [get_ports "DDR4_SODIMM_DQS6_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS6_C"] ;
set_property PACKAGE_PIN AK8 [get_ports "DDR4_SODIMM_DQS6_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS6_T"] ;
set_property PACKAGE_PIN AN8 [get_ports "DDR4_SODIMM_DQS7_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS7_C"] ;
set_property PACKAGE_PIN AN9 [get_ports "DDR4_SODIMM_DQS7_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_DQS7_T"] ;
set_property PACKAGE_PIN AG18 [get_ports "DDR4_SODIMM_CK0_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_CK0_C"] ;
set_property PACKAGE_PIN AF18 [get_ports "DDR4_SODIMM_CK0_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_CK0_T"] ;
set_property PACKAGE_PIN AD17 [get_ports "DDR4_SODIMM_CKE0"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_CKE0"] ;
set_property PACKAGE_PIN AJ15 [get_ports "DDR4_SODIMM_CK1_C"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_CK1_C"] ;
set_property PACKAGE_PIN AJ16 [get_ports "DDR4_SODIMM_CK1_T"] ;
set_property IOSTANDARD DIFF_POD12 [get_ports "DDR4_SODIMM_CK1_T"] ;
set_property PACKAGE_PIN AM15 [get_ports "DDR4_SODIMM_CKE1"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_CKE1"] ;
set_property PACKAGE_PIN AA14 [get_ports "DDR4_SODIMM_CAS_B"] ;
set_property IOSTANDARD SSTL21 [get_ports "DDR4_SODIMM_CAS_B"] ;
set_property PACKAGE_PIN AD15 [get_ports "DDR4_SODIMM_RAS_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_RAS_B"] ;
set_property PACKAGE_PIN AA16 [get_ports "DDR4_SODIMM_WE_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_WE_B"] ;
set_property PACKAGE_PIN AC17 [get_ports "DDR4_SODIMM_ACT_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_ACT_B"] ;
set_property PACKAGE_PIN AB15 [get_ports "DDR4_SODIMM_ALERT_B"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_ALERT_B"] ;
set_property PACKAGE_PIN AD16 [get_ports "DDR4_SODIMM_PARITY"] ;
set_property IOSTANDARD POD12 [get_ports "DDR4_SODIMM_PARITY"] ;
set_property PACKAGE_PIN AE15 [get_ports "DDR4_SODIMM_ODT0"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_ODT0"] ;
set_property PACKAGE_PIN AM16 [get_ports "DDR4_SODIMM_ODT1"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_ODT1"] ;
set_property PACKAGE_PIN AA15 [get_ports "DDR4_SODIMM_CS0_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_CS0_B"] ;
set_property PACKAGE_PIN AL17 [get_ports "DDR4_SODIMM_CS1_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_CS1_B"] ;
set_property PACKAGE_PIN AN17 [get_ports "DDR4_SODIMM_CS2_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_CS2_B"] ;
set_property PACKAGE_PIN AN16 [get_ports "DDR4_SODIMM_CS3_B"] ;
set_property IOSTANDARD SSTL12 [get_ports "DDR4_SODIMM_CS3_B"] ;
set_property PACKAGE_PIN AB14 [get_ports "DDR4_SODIMM_RESET_B"] ;
set_property IOSTANDARD LVCMOS12 [get_ports "DDR4_SODIMM_RESET_B"] ;
#DDR4 COMPONENT 64-BIT PS DDR Bank 504 Interface
#Other net PACKAGE_PIN AN34 DDR4_A0
#Other net PACKAGE_PIN AM34 DDR4_A1
#Other net PACKAGE_PIN AM33 DDR4_A2
#Other net PACKAGE_PIN AL34 DDR4_A3
#Other net PACKAGE_PIN AL33 DDR4_A4
#Other net PACKAGE_PIN AK33 DDR4_A5
#Other net PACKAGE_PIN AK30 DDR4_A6
#Other net PACKAGE_PIN AJ30 DDR4_A7
#Other net PACKAGE_PIN AJ31 DDR4_A8
#Other net PACKAGE_PIN AH31 DDR4_A9
#Other net PACKAGE_PIN AG31 DDR4_A10
#Other net PACKAGE_PIN AF31 DDR4_A11
#Other net PACKAGE_PIN AG30 DDR4_A12
#Other net PACKAGE_PIN AF30 DDR4_A13
#Other net PACKAGE_PIN AG29 DDR4_A14_WE_B
#Other net PACKAGE_PIN AG28 DDR4_A15_CAS_B
#Other net PACKAGE_PIN AF28 DDR4_A16_RAS_B
#Other net PACKAGE_PIN AE27 DDR4_BA0
#Other net PACKAGE_PIN AE28 DDR4_BA1
#Other net PACKAGE_PIN AD27 DDR4_BG0
#Other net PACKAGE_PIN AN24 DDR4_DM0
#Other net PACKAGE_PIN AM29 DDR4_DM1
#Other net PACKAGE_PIN AH24 DDR4_DM2
#Other net PACKAGE_PIN AJ29 DDR4_DM3
#Other net PACKAGE_PIN AD29 DDR4_DM4
#Other net PACKAGE_PIN Y29 DDR4_DM5
#Other net PACKAGE_PIN AC32 DDR4_DM6
#Other net PACKAGE_PIN Y32 DDR4_DM7
#Other net PACKAGE_PIN AP27 DDR4_DQ0
#Other net PACKAGE_PIN AP25 DDR4_DQ1
#Other net PACKAGE_PIN AP26 DDR4_DQ2
#Other net PACKAGE_PIN AM26 DDR4_DQ3
#Other net PACKAGE_PIN AP24 DDR4_DQ4
#Other net PACKAGE_PIN AL25 DDR4_DQ5
#Other net PACKAGE_PIN AM25 DDR4_DQ6
#Other net PACKAGE_PIN AM24 DDR4_DQ7
#Other net PACKAGE_PIN AM28 DDR4_DQ8
#Other net PACKAGE_PIN AN28 DDR4_DQ9
#Other net PACKAGE_PIN AP29 DDR4_DQ10
#Other net PACKAGE_PIN AP28 DDR4_DQ11
#Other net PACKAGE_PIN AM31 DDR4_DQ12
#Other net PACKAGE_PIN AP31 DDR4_DQ13
#Other net PACKAGE_PIN AN31 DDR4_DQ14
#Other net PACKAGE_PIN AM30 DDR4_DQ15
#Other net PACKAGE_PIN AF25 DDR4_DQ16
#Other net PACKAGE_PIN AG25 DDR4_DQ17
#Other net PACKAGE_PIN AG26 DDR4_DQ18
#Other net PACKAGE_PIN AJ25 DDR4_DQ19
#Other net PACKAGE_PIN AG24 DDR4_DQ20
#Other net PACKAGE_PIN AK25 DDR4_DQ21
#Other net PACKAGE_PIN AJ24 DDR4_DQ22
#Other net PACKAGE_PIN AK24 DDR4_DQ23
#Other net PACKAGE_PIN AH28 DDR4_DQ24
#Other net PACKAGE_PIN AH27 DDR4_DQ25
#Other net PACKAGE_PIN AJ27 DDR4_DQ26
#Other net PACKAGE_PIN AK27 DDR4_DQ27
#Other net PACKAGE_PIN AL26 DDR4_DQ28
#Other net PACKAGE_PIN AL27 DDR4_DQ29
#Other net PACKAGE_PIN AH29 DDR4_DQ30
#Other net PACKAGE_PIN AL28 DDR4_DQ31
#Other net PACKAGE_PIN AB29 DDR4_DQ32
#Other net PACKAGE_PIN AB30 DDR4_DQ33
#Other net PACKAGE_PIN AC29 DDR4_DQ34
#Other net PACKAGE_PIN AD32 DDR4_DQ35
#Other net PACKAGE_PIN AC31 DDR4_DQ36
#Other net PACKAGE_PIN AE30 DDR4_DQ37
#Other net PACKAGE_PIN AC28 DDR4_DQ38
#Other net PACKAGE_PIN AE29 DDR4_DQ39
#Other net PACKAGE_PIN AC27 DDR4_DQ40
#Other net PACKAGE_PIN AA27 DDR4_DQ41
#Other net PACKAGE_PIN AA28 DDR4_DQ42
#Other net PACKAGE_PIN AB28 DDR4_DQ43
#Other net PACKAGE_PIN W27 DDR4_DQ44
#Other net PACKAGE_PIN W29 DDR4_DQ45
#Other net PACKAGE_PIN W28 DDR4_DQ46
#Other net PACKAGE_PIN V27 DDR4_DQ47
#Other net PACKAGE_PIN AA32 DDR4_DQ48
#Other net PACKAGE_PIN AA33 DDR4_DQ49
#Other net PACKAGE_PIN AA34 DDR4_DQ50
#Other net PACKAGE_PIN AE34 DDR4_DQ51
#Other net PACKAGE_PIN AD34 DDR4_DQ52
#Other net PACKAGE_PIN AB31 DDR4_DQ53
#Other net PACKAGE_PIN AC34 DDR4_DQ54
#Other net PACKAGE_PIN AC33 DDR4_DQ55
#Other net PACKAGE_PIN AA30 DDR4_DQ56
#Other net PACKAGE_PIN Y30 DDR4_DQ57
#Other net PACKAGE_PIN AA31 DDR4_DQ58
#Other net PACKAGE_PIN W30 DDR4_DQ59
#Other net PACKAGE_PIN Y33 DDR4_DQ60
#Other net PACKAGE_PIN W33 DDR4_DQ61
#Other net PACKAGE_PIN W34 DDR4_DQ62
#Other net PACKAGE_PIN Y34 DDR4_DQ63
#Other net PACKAGE_PIN AN26 DDR4_DQS0_T
#Other net PACKAGE_PIN AN27 DDR4_DQS0_C
#Other net PACKAGE_PIN AN29 DDR4_DQS1_T
#Other net PACKAGE_PIN AP30 DDR4_DQS1_C
#Other net PACKAGE_PIN AH26 DDR4_DQS2_T
#Other net PACKAGE_PIN AJ26 DDR4_DQS2_C
#Other net PACKAGE_PIN AK28 DDR4_DQS3_T
#Other net PACKAGE_PIN AK29 DDR4_DQS3_C
#Other net PACKAGE_PIN AD30 DDR4_DQS4_T
#Other net PACKAGE_PIN AD31 DDR4_DQS4_C
#Other net PACKAGE_PIN Y27 DDR4_DQS5_T
#Other net PACKAGE_PIN Y28 DDR4_DQS5_C
#Other net PACKAGE_PIN AB33 DDR4_DQS6_T
#Other net PACKAGE_PIN AB34 DDR4_DQS6_C
#Other net PACKAGE_PIN W31 DDR4_DQS7_T
#Other net PACKAGE_PIN W32 DDR4_DQS7_C
#Other net PACKAGE_PIN AL31 DDR4_CK_T
#Other net PACKAGE_PIN AN32 DDR4_CK_C
#Other net PACKAGE_PIN AN33 DDR4_CKE
#Other net PACKAGE_PIN AP33 DDR4_CS_B
#Other net PACKAGE_PIN AE25 DDR4_ACT_B
#Other net PACKAGE_PIN AB26 DDR4_ALERT_B
#Other net PACKAGE_PIN AP32 DDR4_ODT
#Other net PACKAGE_PIN AA26 DDR4_PAR
#Other net PACKAGE_PIN AD26 DDR4_RESET_B
#Other net PACKAGE_PIN AC26 SODIMM_ZQ
#QSPI
#QSPI_LWR U119 is connected to PS MIO Bank 500
#Other net PACKAGE_PIN A24 MIO0_QSPI_LWR_CLK
#Other net PACKAGE_PIN C24 MIO1_QSPI_LWR_DQ1
#Other net PACKAGE_PIN B24 MIO2_QSPI_LWR_DQ2
#Other net PACKAGE_PIN E25 MIO3_QSPI_LWR_DQ3
#Other net PACKAGE_PIN A25 MIO4_QSPI_LWR_DQ0
#Other net PACKAGE_PIN D25 MIO5_QSPI_LWR_CS_B
#FMC
# FMC LPC J5 (PL BANKS 67, 68)
set_property PACKAGE_PIN E14 [get_ports "FMC_LPC_CLK0_M2C_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_CLK0_M2C_N"] ;
set_property PACKAGE_PIN E15 [get_ports "FMC_LPC_CLK0_M2C_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_CLK0_M2C_P"] ;
set_property PACKAGE_PIN F10 [get_ports "FMC_LPC_CLK1_M2C_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_CLK1_M2C_N"] ;
set_property PACKAGE_PIN G10 [get_ports "FMC_LPC_CLK1_M2C_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_CLK1_M2C_P"] ;
set_property PACKAGE_PIN F16 [get_ports "FMC_LPC_LA00_CC_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA00_CC_N"] ;
set_property PACKAGE_PIN F17 [get_ports "FMC_LPC_LA00_CC_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA00_CC_P"] ;
set_property PACKAGE_PIN H17 [get_ports "FMC_LPC_LA01_CC_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA01_CC_N"] ;
set_property PACKAGE_PIN H18 [get_ports "FMC_LPC_LA01_CC_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA01_CC_P"] ;
set_property PACKAGE_PIN K20 [get_ports "FMC_LPC_LA02_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA02_N"] ;
set_property PACKAGE_PIN L20 [get_ports "FMC_LPC_LA02_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA02_P"] ;
set_property PACKAGE_PIN K18 [get_ports "FMC_LPC_LA03_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA03_N"] ;
set_property PACKAGE_PIN K19 [get_ports "FMC_LPC_LA03_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA03_P"] ;
set_property PACKAGE_PIN L16 [get_ports "FMC_LPC_LA04_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA04_N"] ;
set_property PACKAGE_PIN L17 [get_ports "FMC_LPC_LA04_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA04_P"] ;
set_property PACKAGE_PIN J17 [get_ports "FMC_LPC_LA05_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA05_N"] ;
set_property PACKAGE_PIN K17 [get_ports "FMC_LPC_LA05_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA05_P"] ;
set_property PACKAGE_PIN G19 [get_ports "FMC_LPC_LA06_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA06_N"] ;
set_property PACKAGE_PIN H19 [get_ports "FMC_LPC_LA06_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA06_P"] ;
set_property PACKAGE_PIN J15 [get_ports "FMC_LPC_LA07_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA07_N"] ;
set_property PACKAGE_PIN J16 [get_ports "FMC_LPC_LA07_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA07_P"] ;
set_property PACKAGE_PIN E17 [get_ports "FMC_LPC_LA08_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA08_N"] ;
set_property PACKAGE_PIN E18 [get_ports "FMC_LPC_LA08_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA08_P"] ;
set_property PACKAGE_PIN G16 [get_ports "FMC_LPC_LA09_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA09_N"] ;
set_property PACKAGE_PIN H16 [get_ports "FMC_LPC_LA09_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA09_P"] ;
set_property PACKAGE_PIN K15 [get_ports "FMC_LPC_LA10_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA10_N"] ;
set_property PACKAGE_PIN L15 [get_ports "FMC_LPC_LA10_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA10_P"] ;
set_property PACKAGE_PIN A12 [get_ports "FMC_LPC_LA11_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA11_N"] ;
set_property PACKAGE_PIN A13 [get_ports "FMC_LPC_LA11_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA11_P"] ;
set_property PACKAGE_PIN F18 [get_ports "FMC_LPC_LA12_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA12_N"] ;
set_property PACKAGE_PIN G18 [get_ports "FMC_LPC_LA12_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA12_P"] ;
set_property PACKAGE_PIN F15 [get_ports "FMC_LPC_LA13_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA13_N"] ;
set_property PACKAGE_PIN G15 [get_ports "FMC_LPC_LA13_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA13_P"] ;
set_property PACKAGE_PIN C12 [get_ports "FMC_LPC_LA14_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA14_N"] ;
set_property PACKAGE_PIN C13 [get_ports "FMC_LPC_LA14_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA14_P"] ;
set_property PACKAGE_PIN C16 [get_ports "FMC_LPC_LA15_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA15_N"] ;
set_property PACKAGE_PIN D16 [get_ports "FMC_LPC_LA15_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA15_P"] ;
set_property PACKAGE_PIN C17 [get_ports "FMC_LPC_LA16_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA16_N"] ;
set_property PACKAGE_PIN D17 [get_ports "FMC_LPC_LA16_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA16_P"] ;
set_property PACKAGE_PIN E10 [get_ports "FMC_LPC_LA17_CC_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA17_CC_N"] ;
set_property PACKAGE_PIN F11 [get_ports "FMC_LPC_LA17_CC_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA17_CC_P"] ;
set_property PACKAGE_PIN D10 [get_ports "FMC_LPC_LA18_CC_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA18_CC_N"] ;
set_property PACKAGE_PIN D11 [get_ports "FMC_LPC_LA18_CC_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA18_CC_P"] ;
set_property PACKAGE_PIN C11 [get_ports "FMC_LPC_LA19_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA19_N"] ;
set_property PACKAGE_PIN D12 [get_ports "FMC_LPC_LA19_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA19_P"] ;
set_property PACKAGE_PIN E12 [get_ports "FMC_LPC_LA20_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA20_N"] ;
set_property PACKAGE_PIN F12 [get_ports "FMC_LPC_LA20_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA20_P"] ;
set_property PACKAGE_PIN A10 [get_ports "FMC_LPC_LA21_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA21_N"] ;
set_property PACKAGE_PIN B10 [get_ports "FMC_LPC_LA21_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA21_P"] ;
set_property PACKAGE_PIN H12 [get_ports "FMC_LPC_LA22_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA22_N"] ;
set_property PACKAGE_PIN H13 [get_ports "FMC_LPC_LA22_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA22_P"] ;
set_property PACKAGE_PIN A11 [get_ports "FMC_LPC_LA23_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA23_N"] ;
set_property PACKAGE_PIN B11 [get_ports "FMC_LPC_LA23_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA23_P"] ;
set_property PACKAGE_PIN A6 [get_ports "FMC_LPC_LA24_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA24_N"] ;
set_property PACKAGE_PIN B6 [get_ports "FMC_LPC_LA24_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA24_P"] ;
set_property PACKAGE_PIN C6 [get_ports "FMC_LPC_LA25_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA25_N"] ;
set_property PACKAGE_PIN C7 [get_ports "FMC_LPC_LA25_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA25_P"] ;
set_property PACKAGE_PIN B8 [get_ports "FMC_LPC_LA26_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA26_N"] ;
set_property PACKAGE_PIN B9 [get_ports "FMC_LPC_LA26_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA26_P"] ;
set_property PACKAGE_PIN A7 [get_ports "FMC_LPC_LA27_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA27_N"] ;
set_property PACKAGE_PIN A8 [get_ports "FMC_LPC_LA27_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA27_P"] ;
set_property PACKAGE_PIN L13 [get_ports "FMC_LPC_LA28_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA28_N"] ;
set_property PACKAGE_PIN M13 [get_ports "FMC_LPC_LA28_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA28_P"] ;
set_property PACKAGE_PIN J10 [get_ports "FMC_LPC_LA29_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA29_N"] ;
set_property PACKAGE_PIN K10 [get_ports "FMC_LPC_LA29_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA29_P"] ;
set_property PACKAGE_PIN D9 [get_ports "FMC_LPC_LA30_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA30_N"] ;
set_property PACKAGE_PIN E9 [get_ports "FMC_LPC_LA30_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA30_P"] ;
set_property PACKAGE_PIN E7 [get_ports "FMC_LPC_LA31_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA31_N"] ;
set_property PACKAGE_PIN F7 [get_ports "FMC_LPC_LA31_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA31_P"] ;
set_property PACKAGE_PIN E8 [get_ports "FMC_LPC_LA32_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA32_N"] ;
set_property PACKAGE_PIN F8 [get_ports "FMC_LPC_LA32_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA32_P"] ;
set_property PACKAGE_PIN C8 [get_ports "FMC_LPC_LA33_N"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA33_N"] ;
set_property PACKAGE_PIN C9 [get_ports "FMC_LPC_LA33_P"] ;
set_property IOSTANDARD LVDS [get_ports "FMC_LPC_LA33_P"] ;
# HDMI
set_property PACKAGE_PIN AP3 [get_ports "HDMI_RX0_C_N"] ;
set_property PACKAGE_PIN AP4 [get_ports "HDMI_RX0_C_P"] ;
set_property PACKAGE_PIN AN1 [get_ports "HDMI_RX1_C_N"] ;
set_property PACKAGE_PIN AN2 [get_ports "HDMI_RX1_C_P"] ;
set_property PACKAGE_PIN AL1 [get_ports "HDMI_RX2_C_N"] ;
set_property PACKAGE_PIN AL2 [get_ports "HDMI_RX2_C_P"] ;
set_property PACKAGE_PIN AN5 [get_ports "HDMI_TX0_N"] ;
set_property PACKAGE_PIN AN6 [get_ports "HDMI_TX0_P"] ;
set_property PACKAGE_PIN AM3 [get_ports "HDMI_TX1_N"] ;
set_property PACKAGE_PIN AM4 [get_ports "HDMI_TX1_P"] ;
set_property PACKAGE_PIN AL5 [get_ports "HDMI_TX2_N"] ;
set_property PACKAGE_PIN AL6 [get_ports "HDMI_TX2_P"] ;
set_property PACKAGE_PIN AD7 [get_ports "HDMI_SI5324_OUT_C_N"] ;
set_property PACKAGE_PIN AD8 [get_ports "HDMI_SI5324_OUT_C_P"] ;
set_property PACKAGE_PIN F13 [get_ports "HDMI_REC_CLOCK_C_N"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_REC_CLOCK_C_N"] ;
set_property PACKAGE_PIN G14 [get_ports "HDMI_REC_CLOCK_C_P"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_REC_CLOCK_C_P"] ;
set_property PACKAGE_PIN F21 [get_ports "HDMI_TX_LVDS_OUT_N"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_TX_LVDS_OUT_N"] ;
set_property PACKAGE_PIN G21 [get_ports "HDMI_TX_LVDS_OUT_P"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_TX_LVDS_OUT_P"] ;
set_property PACKAGE_PIN AC9 [get_ports "HDMI_RX_CLK_C_N"] ;
set_property IOSTANDARD AC10 [get_ports "HDMI_RX_CLK_C_P"] ;
set_property PACKAGE_PIN M8 [get_ports "HDMI_RX_PWR_DET"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_PWR_DET"] ;
set_property PACKAGE_PIN M10 [get_ports "HDMI_RX_HPD"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_HPD"] ;
set_property PACKAGE_PIN M9 [get_ports "HDMI_RX_SNK_SCL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_SNK_SCL"] ;
set_property PACKAGE_PIN M11 [get_ports "HDMI_RX_SNK_SDA"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_SNK_SDA"] ;
set_property PACKAGE_PIN N11 [get_ports "HDMI_TX_EN"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_EN"] ;
set_property PACKAGE_PIN M12 [get_ports "HDMI_TX_CEC"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_CEC"] ;
set_property PACKAGE_PIN N13 [get_ports "HDMI_TX_HPD"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_HPD"] ;
set_property PACKAGE_PIN N8 [get_ports "HDMI_TX_SRC_SCL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_SRC_SCL"] ;
set_property PACKAGE_PIN N9 [get_ports "HDMI_TX_SRC_SDA"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_SRC_SDA"] ;
set_property PACKAGE_PIN N12 [get_ports "HDMI_CTL_SCL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_CTL_SCL"] ;
set_property PACKAGE_PIN P12 [get_ports "HDMI_CTL_SDA"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_CTL_SDA"] ;
set_property PACKAGE_PIN G8 [get_ports "HDMI_SI5324_LOL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_SI5324_LOL"] ;
set_property PACKAGE_PIN H8 [get_ports "HDMI_SI5324_RST"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_SI5324_RST"] ;
# HDMI I/F (PL BANK 88 CONTROL, MGTH BANK 227 TX/RX + RX_CLK)
set_property PACKAGE_PIN F21 [get_ports "HDMI_TX_LVDS_OUT_N"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_TX_LVDS_OUT_N"] ;
set_property PACKAGE_PIN G21 [get_ports "HDMI_TX_LVDS_OUT_P"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_TX_LVDS_OUT_P"] ;
set_property PACKAGE_PIN E22 [get_ports "HDMI_REC_CLOCK_N"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_REC_CLOCK_N"] ;
set_property PACKAGE_PIN F22 [get_ports "HDMI_REC_CLOCK_P"] ;
set_property IOSTANDARD LVDS [get_ports "HDMI_REC_CLOCK_P"] ;
set_property PACKAGE_PIN E5 [get_ports "HDMI_RX_PWR_DET"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_PWR_DET"] ;
set_property PACKAGE_PIN F6 [get_ports "HDMI_RX_HPD"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_HPD"] ;
set_property PACKAGE_PIN C2 [get_ports "HDMI_RX_LS_OE"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_LS_OE"] ;
set_property PACKAGE_PIN D2 [get_ports "HDMI_RX_SNK_SCL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_SNK_SCL"] ;
set_property PACKAGE_PIN E2 [get_ports "HDMI_RX_SNK_SDA"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_RX_SNK_SDA"] ;
set_property PACKAGE_PIN E3 [get_ports "HDMI_TX_HPD"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_HPD"] ;
set_property PACKAGE_PIN A2 [get_ports "HDMI_TX_EN"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_EN"] ;
set_property PACKAGE_PIN A3 [get_ports "HDMI_TX_CEC"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_CEC"] ;
set_property PACKAGE_PIN B1 [get_ports "HDMI_TX_SRC_SCL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_SRC_SCL"] ;
set_property PACKAGE_PIN C1 [get_ports "HDMI_TX_SRC_SDA"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_SRC_SDA"] ;
set_property PACKAGE_PIN D1 [get_ports "HDMI_CTL_SCL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_CTL_SCL"] ;
set_property PACKAGE_PIN E1 [get_ports "HDMI_CTL_SDA"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_CTL_SDA"] ;
set_property PACKAGE_PIN N11 [get_ports "HDMI_8T49N241_LOL"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_8T49N241_LOL"] ;
set_property PACKAGE_PIN M12 [get_ports "HDMI_8T49N241_RST"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_8T49N241_RST"] ;
set_property PACKAGE_PIN N13 [get_ports "HDMI_TX_LS_OE"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_LS_OE"] ;
set_property PACKAGE_PIN N8 [get_ports "HDMI_TX_CT_HPD"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "HDMI_TX_CT_HPD"] ;
# GPIO
# GPIO LED DS38/37/39/40 (ACTIVE HIGH) (PL BANK 88)
set_property PACKAGE_PIN D5 [get_ports "LED"] ;    #ring_basys output indicates character transmission
set_property IOSTANDARD LVCMOS33 [get_ports "LED"] ;
set_property PACKAGE_PIN D6 [get_ports "GPIO_LED_1_LS"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_LED_1_LS"] ;
set_property PACKAGE_PIN A5 [get_ports "GPIO_LED_2_LS"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_LED_2_LS"] ;
set_property PACKAGE_PIN B5 [get_ports "GPIO_LED_3_LS"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_LED_3_LS"] ;
# GPIO 4-POLE DIP SW13 (ACTIVE HIGH) (PL BANK 88)
set_property PACKAGE_PIN F4 [get_ports "GPIO_DIP_SW3"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_DIP_SW3"] ;
set_property PACKAGE_PIN F5 [get_ports "GPIO_DIP_SW2"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_DIP_SW2"] ;
set_property PACKAGE_PIN D4 [get_ports "GPIO_DIP_SW1"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_DIP_SW1"] ;
set_property PACKAGE_PIN E4 [get_ports "GPIO_DIP_SW0"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_DIP_SW0"] ;
# GPIO PB SW14/15/17/18 (ACTIVE HIGH) (PL BANK 88)
set_property PACKAGE_PIN B4 [get_ports "RESET_BTN "] ; #ring_basys input halts ring oscillators
set_property IOSTANDARD LVCMOS33 [get_ports "RESET_BTN "] ;
set_property PACKAGE_PIN C4 [get_ports "GPIO_PB_SW1"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_PB_SW1"] ;
set_property PACKAGE_PIN B3 [get_ports "GPIO_PB_SW2"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_PB_SW2"] ;
set_property PACKAGE_PIN C3 [get_ports "GPIO_PB_SW3"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "GPIO_PB_SW3"] ;
# GPIO PB SW20 ASSIGNED TO CPU_RESET (ACTIVE HIGH) (PL BANK 87)
set_property PACKAGE_PIN M11 [get_ports "CPU_RESET"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "CPU_RESET"] ;
# PMOD
# PMOD0 RT. ANGLE RECEPTACLE J55 2X6 (PL BANK 87)
set_property PACKAGE_PIN G8 [get_ports "PMOD0_0"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_0"] ;
set_property PACKAGE_PIN H8 [get_ports "PMOD0_1"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_1"] ;
set_property PACKAGE_PIN G7 [get_ports "PMOD0_2"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_2"] ;
set_property PACKAGE_PIN H7 [get_ports "PMOD0_3"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_3"] ;
set_property PACKAGE_PIN G6 [get_ports "PMOD0_4"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_4"] ;
set_property PACKAGE_PIN H6 [get_ports "PMOD0_5"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_5"] ;
set_property PACKAGE_PIN J6 [get_ports "PMOD0_6"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_6"] ;
set_property PACKAGE_PIN J7 [get_ports "PMOD0_7"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PMOD0_7"] ;
#I2C BUS
# PL I2C
set_property PACKAGE_PIN N12 [get_ports "PL_I2C1_SCL_LS"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PL_I2C1_SCL_LS"] ;
set_property PACKAGE_PIN P12 [get_ports "PL_I2C1_SDA_LS"] ;
set_property IOSTANDARD LVCMOS33 [get_ports "PL_I2C1_SDA_LS"] ;
#USB UART
set_property PACKAGE_PIN A20 [get_ports "UART2_TXD_FPGA_RXD"] ;   
set_property IOSTANDARD LVCMOS18 [get_ports "UART2_TXD_FPGA_RXD"] ;
set_property PACKAGE_PIN C19 [get_ports "UART_TXD"] ; #Output of ring_basys.vhd
set_property IOSTANDARD LVCMOS18 [get_ports "UART_TXD"] ;
set_property PACKAGE_PIN C18 [get_ports "UART2_RTS_B"] ;
set_property IOSTANDARD LVCMOS18 [get_ports "UART2_RTS_B"] ;
set_property PACKAGE_PIN A19 [get_ports "UART2_CTS_B"] ;
set_property IOSTANDARD LVCMOS18 [get_ports "UART2_CTS_B"] ;
#PS GTR BANK 505
#Other net PACKAGE_PIN U29 GT0_DP_TX_P
#Other net PACKAGE_PIN U30 GT0_DP_TX_N
#Other net PACKAGE_PIN R29 GT1_DP_TX_P
#Other net PACKAGE_PIN R30 GT1_DP_TX_N
#Other net PACKAGE_PIN P31 GT2_USB0_TX_P
#Other net PACKAGE_PIN P32 GT2_USB0_TX_N
#Other net PACKAGE_PIN R33 GT2_USB0_RX_P
#Other net PACKAGE_PIN R34 GT2_USB0_RX_N
#Other net PACKAGE_PIN N29 GT3_SATA1_TX_P
#Other net PACKAGE_PIN N30 GT3_SATA1_TX_N
#Other net PACKAGE_PIN N33 GT3_SATA1_RX_P
#Other net PACKAGE_PIN N34 GT3_SATA1_RX_N
#Other net PACKAGE_PIN P27 GTR_REF_CLK_SATA_C_P
#Other net PACKAGE_PIN P28 GTR_REF_CLK_SATA_C_N
#Other net PACKAGE_PIN M27 GTR_REF_CLK_USB3_C_P
#Other net PACKAGE_PIN M28 GTR_REF_CLK_USB3_C_N
#Other net PACKAGE_PIN M31 GTR_REF_CLK_DP_C_P
#Other net PACKAGE_PIN M32 GTR_REF_CLK_DP_C_N
