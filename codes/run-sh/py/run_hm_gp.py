import os

f=5

#yuvs = {"BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1024_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"}

yuvs = {"BQSquare_416x240_60.yuv"}

#homepath = "/home/grellert"
homepath = "/home/icaro"
#yuvpath = "/workareas/share/video_sequences"
yuvpath = "/home/icaro/origCfP"

file = open("../hm/run_hm_gp.sh","w")
for yuv in yuvs:
	for qp in [22,27,32,37]:
		if "crop" in yuv:
			vid,pix,fr,y = yuv.split("_")
			nome = vid+"_"+pix+"_"+fr+"_qp%s_"%(qp)+y
		else:
			vid,pix,fps = yuv.split("_")
			fr,y = fps.split(".")
			nome = vid+"_"+pix+"_"+fr+"_qp%s_"%(qp)+y
		if ".py" in yuv:
			continue
		if "bit" in yuv:
			continue
		w,h = pix.split("x")
		#print w,h,f,fr,qp

		linha = "%s/pesquisa_ucpel/HM-16.9_fme_aprox/bin/hm_16_9_gprof -c %s/pesquisa_ucpel/HM-16.9_fme_aprox/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --BitstreamFile=%s/testesHEVC/bingp/%s.bin  > %s/testesHEVC/outgp/%s_qp%s_hm_out && gprof %s/pesquisa_ucpel/HM-16.9_fme_aprox/bin/hm_16_9_gprof %s/pesquisa_ucpel/codes/run-sh/gmon.out > %s/testesHEVC/gprof/gprof_%s_qp%s_hm.txt" %(homepath,homepath,yuvpath,yuv,h,w,f,fr,qp,homepath,nome,homepath,yuv,qp,homepath,homepath,homepath,yuv,qp)
		print >> file, linha
		file.close