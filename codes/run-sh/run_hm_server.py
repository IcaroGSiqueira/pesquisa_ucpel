import os

yuvs = {"BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1024_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv"}

f=60
homepath = "/home/grellert"
yuvpath = "/workareas/share/video_sequences"
#yuvpath = "/home/icaro/origCfP"

file = open("run_hm_server.sh","w")
for yuv in yuvs:
	for clip in [0]:
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
			if clip == 0: #original
				linha = "{ time %s/pesquisa_ucpel/HM-16.9_fme_aprox/bin/TAppEncoderStatic -c %s/pesquisa_ucpel/HM-16.9_fme_aprox/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --clip_before=%s --BitstreamFile=%s/pesquisa_ucpel/testesHEVC/bin/%s_orig_%dfr_hm.bin ; } &> %s/pesquisa_ucpel/testesHEVC/out/%s_qp%s_orig_%dfr_hm_out" %(homepath,homepath,yuvpath,yuv,h,w,f,fr,qp,clip,homepath,nome,f,homepath,yuv,qp,f)
			else:
				linha = "{ time %s/pesquisa_ucpel/HM-16.9_fme_aprox/bin/TAppEncoderStatic -c %s/pesquisa_ucpel/HM-16.9_fme_aprox/cfg/encoder_randomaccess_main.cfg --InputFile=%s/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --clip_before=%s --BitstreamFile=%s/pesquisa_ucpel/testesHEVC/bin/%s_clip%s_%dfr_hm.bin ; } &> %s/pesquisa_ucpel/testesHEVC/out/%s_qp%s_clip%s_%dfr_hm_out" %(homepath,homepath,yuvpath,yuv,h,w,f,fr,qp,clip,homepath,nome,clip,f,homepath,yuv,qp,clip,f)
			print >> file, linha
			file.close