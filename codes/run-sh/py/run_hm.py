import os

f=50

clip=0
gprof=0

#yuvs = {"BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"}

yuvs = {"BQSquare_416x240_60.yuv"}

encpath = "pesquisa_ucpel/HM-16.9-approx"
homepath = "/home/icaro"
#homepath = "/home/grellert"
#yuvpath = "/workareas/share/video_sequences"
yuvpath = "/home/icaro/origCfP"

binout = "testesHEVC/0919"
out = "testesHEVC/0919"

#yuvs = os.listdir("%s"%yuvpath)
file = open("../hm/run_hm.sh","w")

for yuv in yuvs:
	for taps in [4,2,6,8]:
		for qp in [22,27,32,37]:
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
			if gprof == 0:
				if taps == 8:
					linha = "{ time %s/%s/bin/TAppEncoderStatic -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/%s/%s_%dqp_%df.bin ; } &> %s/%s/%s_%dqp_%df_hm_out" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,binout,nome,qp,f,homepath,out,yuv,qp,f)
				else:
					linha = "{ time %s/%s/bin/TAppEncoderStatic -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/%s/%s_%dqp_%df_%dtaps.bin ; } &> %s/%s/%s_%dqp_%df_%dtaps_hm_out" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,binout,nome,qp,f,taps,homepath,out,yuv,qp,f,taps)
			if gprof == 1:
				if taps == 8:
					linha = "%s/%s/bin/hm_16_9_gprof -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --BitstreamFile=%s/%s/%s_%dqp_%df_%dtaps.bin  > %s/%s/%s_%dqp_%df_hm_out && gprof %s/%s/bin/hm_16_9_gprof %s/pesquisa_ucpel/codes/run-sh/gmon.out > %s/testesHEVC/gprof/gprof_%s_%dqp_%df_hm.txt" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,homepath,binout,nome,qp,f,taps,homepath,out,yuv,qp,f,homepath,encpath,homepath,homepath,yuv,qp,f)
				else:
					linha = "%s/%s/bin/hm_16_9_gprof -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/%s/%s_%dqp_%df_%dtaps.bin  > %s/%s/%s_%dqp_%df_%dtaps_hm_out && gprof %s/%s/bin/hm_16_9_gprof %s/pesquisa_ucpel/codes/run-sh/gmon.out > %s/testesHEVC/gprof/gprof_%s_%dqp_%df_%dtaps_hm.txt" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,binout,nome,qp,f,taps,homepath,out,yuv,qp,f,taps,homepath,encpath,homepath,homepath,yuv,qp,f,taps)

			print >> file, linha
			file.close