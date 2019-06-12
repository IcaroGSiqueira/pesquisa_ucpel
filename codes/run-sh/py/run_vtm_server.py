import os

f=60
simd=0

#yuvs = {"BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1024_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"}

yuvs = {"SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"}

homepath = "/home/grellert"
yuvpath = "/workareas/share/video_sequences"
#yuvs = os.listdir("%s" %yuvpath)
if simd==1:
	sd="SIMD"
else:
	sd="noSIMD"
file = open("../run_vtm_%s_server.sh"%sd,"w")
for yuv in yuvs:
	for qp in [37,32,27,22]:
		if "bit" in yuv:
			continue
		if "crop" in yuv:
			vid,pix,fr,y = yuv.split("_")
			nome = vid+"_"+pix+"_"+fr+"_qp%s_"%(qp)+y
		else:
			vid,pix,fps = yuv.split("_")
			fr,y = fps.split(".")
			nome = vid+"_"+pix+"_"+fr+"_qp%s_"%(qp)+y
		w,h = pix.split("x")
		#print w,h,f,fr,qp
		if simd == 1:
			linha = "{ time %s/pesquisa_ucpel/vtm_5.0/bin/EncoderAppStatic -c %s/pesquisa_ucpel/vtm_5.0/cfg/encoder_randomaccess_vtm.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --BitstreamFile=%s/testesVVC/bin/%s_%sfr_vtmSIMD.bin ; } &> %s/testesVVC/out/%s_qp%s_%sfr_vtmSIMD_out" %(homepath,homepath,yuvpath,yuv,h,w,f,fr,qp,homepath,nome,f,homepath,yuv,qp,f)
		else:
			linha = "{ time %s/pesquisa_ucpel/VTM_5.0_noSIMD/bin/EncoderAppStatic -c %s/pesquisa_ucpel/VTM_5.0_noSIMD/cfg/encoder_randomaccess_vtm.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --BitstreamFile=%s/pesquisa_ucpel/testesVVC/bin/%s_%sfr_vtmNoSIMD.bin ; }  &> %s/pesquisa_ucpel/testesVVC/out/%s_qp%s_%sfr_vtmNoSIMD_out" %(homepath,homepath,yuvpath,yuv,h,w,f,fr,qp,homepath,nome,f,homepath,yuv,qp,f)
		print >> file, linha
		file.close