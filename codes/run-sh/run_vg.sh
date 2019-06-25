cd /home/icaro/pesquisa_ucpel/HM-16.9_fme_aprox/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesHEVC/BQSquare_416x240_60_qp37_yuv_hm_valg  ./hm_16_9_valgrind -c ../cfg/encoder_randomaccess_main.cfg  --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 37 
cd /home/icaro/pesquisa_ucpel/HM-16.9_fme_aprox/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesHEVC/BQSquare_416x240_60_qp32_yuv_hm_valg  ./hm_16_9_valgrind -c ../cfg/encoder_randomaccess_main.cfg  --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 32 
cd /home/icaro/pesquisa_ucpel/HM-16.9_fme_aprox/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesHEVC/BQSquare_416x240_60_qp27_yuv_hm_valg  ./hm_16_9_valgrind -c ../cfg/encoder_randomaccess_main.cfg  --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 27 
cd /home/icaro/pesquisa_ucpel/HM-16.9_fme_aprox/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesHEVC/BQSquare_416x240_60_qp22_yuv_hm_valg  ./hm_16_9_valgrind -c ../cfg/encoder_randomaccess_main.cfg  --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 22 
#cd /home/icaro/pesquisa_ucpel/VTM_5.0_noSIMD/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesVVC/BQSquare_416x240_60_qp37_yuv_vtm_valg ./EncoderAppStatic -c ../cfg/encoder_randomaccess_vtm.cfg   --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 37 
#cd /home/icaro/pesquisa_ucpel/VTM_5.0_noSIMD/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesVVC/BQSquare_416x240_60_qp32_yuv_vtm_valg ./EncoderAppStatic -c ../cfg/encoder_randomaccess_vtm.cfg   --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 32 
#cd /home/icaro/pesquisa_ucpel/VTM_5.0_noSIMD/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesVVC/BQSquare_416x240_60_qp27_yuv_vtm_valg ./EncoderAppStatic -c ../cfg/encoder_randomaccess_vtm.cfg   --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 27 
#cd /home/icaro/pesquisa_ucpel/VTM_5.0_noSIMD/bin/ && valgrind --tool=callgrind --callgrind-out-file=/home/icaro/testesVVC/BQSquare_416x240_60_qp22_yuv_vtm_valg ./EncoderAppStatic -c ../cfg/encoder_randomaccess_vtm.cfg   --InputFile=/home/icaro/origCfP/BQSquare_416x240_60.yuv --SourceHeight=240 --SourceWidth=416 -f 5 -fr 60 -q 22 
