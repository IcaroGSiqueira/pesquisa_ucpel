
/home/icaro/vtm/bin/EncoderAppStaticd_gprof -c /home/icaro/vtm/cfg/encoder_randomaccess_vtm.cfg --InputFile="/home/icaro/origCfP/BasketballPass_416x240_50fps_8bit_420.yuv" -fr 50 --SourceWidth=416 --SourceHeight=240 -q 37 -f 32 --InputBitDepth=8 --SIMD=SCALAR --BitstreamFile="/home/icaro/pesquisa_ucpel/output_VTM/local/bin/BasketballPass_416x240_50fps_8bit_37qp_32fframes_RA_gprof_noOPT.bin" > /home/icaro/pesquisa_ucpel/output_VTM/local/out/BasketballPass_416x240_50fps_8bit_37qp_32fframes_RA_gprof_noOPT.txt && mv /home/icaro/pesquisa_ucpel/codes/run-sh/vtm/gmon.out /home/icaro/pesquisa_ucpel/output_VTM/local/gmon/gmon_BasketballPass_416x240_50fps_8bit_37qp_32fframes_RA_gprof_noOPT.out && gprof /home/icaro/vtm/bin/EncoderAppStaticd_gprof /home/icaro/pesquisa_ucpel/output_VTM/local/gmon/gmon_BasketballPass_416x240_50fps_8bit_37qp_32fframes_RA_gprof_noOPT.out > /home/icaro/pesquisa_ucpel/output_VTM/local/gprof/BasketballPass_416x240_50fps_8bit_37qp_32fframes_RA_gprof_noOPT.txt && echo "BasketballPass_416x240_50fps_8bit_37qp_32fframes_RA_gprof_noOPT DONE!" && cd /home/icaro/pesquisa_ucpel && sh git_upl.sh

/home/icaro/vtm/bin/EncoderAppStaticd_gprof -c /home/icaro/vtm/cfg/encoder_randomaccess_vtm.cfg --InputFile="/home/icaro/origCfP/Cactus_1920x1080_50fps_8bit_420.yuv" -fr 50 --SourceWidth=1920 --SourceHeight=1080 -q 22 -f 32 --InputBitDepth=8 --SIMD=SCALAR --BitstreamFile="/home/icaro/pesquisa_ucpel/output_VTM/local/bin/Cactus_1920x1080_50fps_8bit_22qp_32fframes_RA_gprof_noOPT.bin" > /home/icaro/pesquisa_ucpel/output_VTM/local/out/Cactus_1920x1080_50fps_8bit_22qp_32fframes_RA_gprof_noOPT.txt && mv /home/icaro/pesquisa_ucpel/codes/run-sh/vtm/gmon.out /home/icaro/pesquisa_ucpel/output_VTM/local/gmon/gmon_Cactus_1920x1080_50fps_8bit_22qp_32fframes_RA_gprof_noOPT.out && gprof /home/icaro/vtm/bin/EncoderAppStaticd_gprof /home/icaro/pesquisa_ucpel/output_VTM/local/gmon/gmon_Cactus_1920x1080_50fps_8bit_22qp_32fframes_RA_gprof_noOPT.out > /home/icaro/pesquisa_ucpel/output_VTM/local/gprof/Cactus_1920x1080_50fps_8bit_22qp_32fframes_RA_gprof_noOPT.txt && echo "Cactus_1920x1080_50fps_8bit_22qp_32fframes_RA_gprof_noOPT DONE!" && cd /home/icaro/pesquisa_ucpel && sh git_upl.sh

