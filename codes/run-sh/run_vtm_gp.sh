/home/grellert/pesquisa_ucpel/VTM_5.0_noSIMD/bin/EncoderAppStaticd -c /home/grellert/pesquisa_ucpel/VTM_5.0_noSIMD/cfg/encoder_randomaccess_vtm.cfg --InputFile=/videos/BasketballPass_416x240_50.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 50 -q 37 --BitstreamFile=/home/grellert/testesVVC/bingp/BasketballPass_416x240_50_qp37_yuv.bin  > /home/grellert/testesVVC/outgp/BasketballPass_416x240_50.yuv_qp37_vtm_out && gprof /home/grellert/pesquisa_ucpel/VTM_5.0_noSIMD/bin/EncoderAppStaticd /home/grellert/pesquisa_ucpel/codes/run-sh/gmon.out > /home/grellert/testesVVC/gprof/gprof_BasketballPass_416x240_50.yuv_qp37_vtm.txt
