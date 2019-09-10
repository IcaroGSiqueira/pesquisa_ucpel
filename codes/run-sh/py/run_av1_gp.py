import os

f=60

#yuvs = ["BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1024_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"]

yuvs = ["BQSquare_416x240_60.yuv"]

#homepath = "/home/grellert"
homepath = "/home/icaro"
#yuvpath = "/videos"
yuvpath = "/home/icaro/origCfP"

file = open("../aom/run_av1_gp.sh","w")
for qp in [19,24,29,34]:
	for yuv in yuvs:
		if ".py" in yuv:
			continue
		if "bit" in yuv:
			continue
		if "crop" in yuv:
			vid,pix,fr,y = yuv.split("_")
			nome = vid+"_"+pix+"_"+fr+"_qp%s_"%(qp+3)+y
		else:
			vid,pix,fps = yuv.split("_")
			fr,y = fps.split(".")
			nome = vid+"_"+pix+"_"+fr+"_qp%s_"%(qp+3)+y
		w,h = pix.split("x")
		
		#qp = map(float,qp)
		linha = "%s/pesquisa_ucpel/aom_1.0/build/aomenc -p 1 -t 1 --psnr -v --fps=%s/1 -w %s -h %s --min-q=%s --max-q=%s --limit=%s --good --tune=psnr --lag-in-frames=0 --end-usage=q --min-gf-interval=16 --max-gf-interval=16 -b 8 -o %s/testesAV1/gpbin/%s.bin %s/%s 2> %s/testesAV1/gpout/%s_qp%s_av1_out && gprof %s/pesquisa_ucpel/aom_1.0/build/aomenc %s/pesquisa_ucpel/codes/run-sh/aom/gmon.out > %s/testesAV1/gprof/gprof_%s_qp%s_av1.txt"%(homepath,fr,w,h,qp,qp+8,f,homepath,nome,yuvpath,yuv,homepath,yuv,qp+3,homepath,homepath,homepath,yuv,qp+3)
		print >> file, linha
		file.close