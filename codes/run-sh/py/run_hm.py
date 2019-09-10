import os

f=50
clip=0

#yuvs = {"BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"}

#yuvs = {"BasketballPass_416x240_50.yuv"}

homepath = "/home/icaro"
#yuvpath = "/workareas/share/video_sequences"
yuvpath = "/home/icaro/origCfP"

yuvs = os.listdir("/home/icaro/origCfP")
file = open("../hm/run_hm.sh","w")
for qp in [22,27,32,37]:
	for taps in [2,4,6]:
		for yuv in yuvs:
			if ".py" in yuv:
				continue
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
			linha = "%s/pesquisa_ucpel/HM-16.9-approx/bin/TAppEncoderStatic -c %s/pesquisa_ucpel/HM-16.9-approx/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/testesHEVC/0919/%s_orig_%df_%dtaps_hm_novo.bin > %s/testesHEVC/0919/%s_qp%s_orig_%df_%dtaps_hm_out_novo" %(homepath,homepath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,nome,f,taps,homepath,yuv,qp,f,taps)
			print >> file, linha
			file.close