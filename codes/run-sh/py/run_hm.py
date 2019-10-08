import os

f=30

clip=0
gprof=1

#yuvs = ["BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"] #SERVIDOR

#yuvs = ["BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_832x480_30.yuv","RaceHorses_416x240_30.yuv","Traffic_2560x1600_30_crop.yuv"] #UCPEL_PC

yuvs = ["ParkScene_1920x1080_24.yuv"]

#yuvs = os.listdir("%s"%yuvpath)

homepath = "/home/icaro" #UCPEL
#homepath = "/home/grellert" #SERVIDOR
#yuvpath = "/videos" #SERVIDOR
yuvpath = "/home/icaro/origCfP" #UCPEL

encpath = "HM-16.9-approx" #UCPEL
#encpath = "hm-16.9_approx_ucpel" #SERVIDOR
binout = "testesHEVC/gpbin"
out = "testesHEVC/gpout"

file = open("%s/pesquisa_ucpel/codes/run-sh/hm/run_hm.sh"%homepath,"w")

for taps in [8]:#,6,4,2]:
	for yuv in yuvs:
		for qp in [37,32,27,22]:
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
				nome = vid+"_"+pix+"_"+fr+"_%dqp_"%(qp)+y
			w,h = pix.split("x")
			#print w,h,f,fr,qp
			if gprof == 0:
				if taps == 8:
					linha = "{ time %s/%s/bin/TAppEncoderStatic -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/%s/%s_%df.bin ; } &> %s/%s/%s_%dqp_%df_hm_out" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,binout,nome,f,homepath,out,yuv,qp,f)
				else:
					linha = "{ time %s/%s/bin/TAppEncoderStatic -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/%s/%s_%df_%dtaps.bin ; } &> %s/%s/%s_%dqp_%df_%dtaps_hm_out" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,binout,nome,f,taps,homepath,out,yuv,qp,f,taps)
			if gprof == 1:
				if taps == 8:
					linha = "%s/%s/bin/TAppEncoderStaticd -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --BitstreamFile=%s/%s/%s_%df.bin  > %s/%s/%s_%dqp_%df_hm_out && mv ./gmon.out %s/pesquisa_ucpel/codes/run-sh/hm/gmon_%s.out && gprof %s/%s/bin/TAppEncoderStaticd %s/pesquisa_ucpel/codes/run-sh/hm/gmon_%s.out > %s/testesHEVC/gprof/gprof_%s_%dqp_%df_hm.txt" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,homepath,binout,nome,f,homepath,out,yuv,qp,f,homepath,nome,homepath,encpath,homepath,nome,homepath,yuv,qp,f)
				else:
					linha = "%s/%s/bin/TAppEncoderStaticd -c %s/%s/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --fme_filter_ntaps=%s --BitstreamFile=%s/%s/%s_%df_%dtaps.bin  > %s/%s/%s_%dqp_%df_%dtaps_hm_out && mv ./gmon.out %s/pesquisa_ucpel/codes/run-sh/hm/gmon_%s_%staps.out && gprof %s/%s/bin/TAppEncoderStaticd %s/pesquisa_ucpel/codes/run-sh/hm/gmon_%s_%staps.out > %s/testesHEVC/gprof/gprof_%s_%dqp_%df_%staps_hm.txt" %(homepath,encpath,homepath,encpath,yuvpath,yuv,h,w,f,fr,qp,taps,homepath,binout,nome,f,taps,homepath,out,yuv,qp,f,taps,homepath,nome,taps,homepath,encpath,homepath,nome,taps,homepath,yuv,qp,f,taps)

			print >> file, linha
			file.close