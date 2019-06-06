import os

yuvs = {"BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1024_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","Kimono1_1920x1080_24.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv"}

f=60

homepath = "/home/grellert"
yuvpath = "/workareas/share/video_sequences"
#yuvpath = "/home/icaro/origCfP"

file = open("run_av1_server.sh","w")
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
		linha = "%s/pesquisa_ucpel/aom/build/aomenc -p 1 -t 1 --psnr -v --fps=%s/1 -w %s -h %s --min-q=%s --max-q=%s --limit=%s --good --tune=psnr --lag-in-frames=0 --end-usage=q --min-gf-interval=16 --max-gf-interval=16 -b 8 -o %s/TesteAV1/%s_%sframes.bin %s/%s 2> %s/TesteAV1/%s_qp%s_%sframes_av1_out"%(homepath,fr,w,h,qp,qp+8,f,homepath,nome,f,yuvpath,yuv,homepath,yuv,qp+3,f)
		print >> file, linha
		file.close