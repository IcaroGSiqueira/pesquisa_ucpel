import os

f=30

server=0
OPT=0
gprof=1

#yuvs = os.listdir("/home/icaro/origCfP")

if server == 1:	
	homepath = "/home/grellert"
	yuvpath = "/videos"
	out = "pesquisa_ucpel/output_AV1/server"

	yuvs = ["BasketballDrill_832x480_50.yuv","BasketballDrive_1920x1080_50.yuv","BasketballPass_416x240_50.yuv","Kimono_1920x1080_24.yuv","BlowingBubbles_416x240_50.yuv","ParkScene_1920x1080_24.yuv","BQMall_832x480_60.yuv","BQSquare_416x240_60.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","FourPeople_1280x720_60.yuv","Johnny_1280x720_60.yuv","PartyScene_832x480_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","Traffic_2560x1600_30_crop.yuv","SlideEditing_1280x720_30.yuv","Tennis_1920x1080_24.yuv"] 
else:
	homepath = "/home/icaro"
	yuvpath = "/home/icaro/origCfP"
	out = "pesquisa_ucpel/output_AV1/local"

	yuvs = ["BlowingBubbles_416x240_50.yuv","BQSquare_416x240_60.yuv","BasketballPass_416x240_50.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","BasketballDrill_832x480_50.yuv","BQMall_832x480_60.yuv","PartyScene_832x480_50.yuv","ParkScene_1920x1080_24.yuv","BasketballDrive_1920x1080_50.yuv","Kimono_1920x1080_24.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv","PeopleOnStreet_2560x1600_30_crop.yuv","Traffic_2560x1600_30_crop.yuv"]

if OPT == 1:
	if gprof == 0:
		bina = "aomenc_OPT"
		inf = "OPT"
	else:
		bina = "aomenc_gprof_OPT"
		inf = "gprof_OPT"
else:
	if gprof == 0:
		bina = "aomenc_noOPT"
		inf = "noOPT"
	else:
		bina = "aomenc_gprof_noOPT"
		inf = "gprof_noOPT"

file = open("../aom/run2_av1.sh","w")
for qp in [34,29,24,19]:
	for yuv in yuvs:

		if ".py" in yuv:
			continue
		if "bit" in yuv:
			continue

		if "crop" in yuv:
			vid,pix,fr,y = yuv.split("_")
			nome = vid+"_"+pix+"_"+fr+"_qp%s"%(qp+3)
		else:
			vid,pix,fps = yuv.split("_")
			fr,y = fps.split(".")
			nome = vid+"_"+pix+"_"+fr

		w,h = pix.split("x")
		info = "%sqp_%sfframes_"%(qp+3,f) + inf

		#qp = map(float,qp) !!--end-usage=q!!--AVALIAR

		if gprof == 1:
			linha = "%s/aom/build/%s --fps=%s/1 -w %s -h %s --min-q=%s --max-q=%s --limit=%s --rt -b 8 -o %s/%s/bin/%s_%s.bin %s/%s 2> %s/%s/out/%s_%s"%(homepath,bina,fr,w,h,qp,qp+8,f,homepath,out,nome,info,yuvpath,yuv,homepath,out,nome,info)
			linha2 = "mv %s/pesquisa_ucpel/codes/run-sh/aom/gmon.out %s/%s/gmon/gmon_%s_%s.out"%(homepath,homepath,out,nome,info)
			linha3 = "gprof %s/aom/build/%s %s/%s/gmon/gmon_%s_%s.out > %s/%s/gprof/%s_%s.txt"%(homepath,bina,homepath,out,nome,info,homepath,out,nome,info)
			#linha4 =  "echo %s_%s DONE!"%(nome,info)
			print >> file, linha + " && " + linha2 + " && " + linha3# + linha4
		else:
			linha = "{ time %s/aom/build/%s --fps=%s/1 -w %s -h %s --min-q=%s --max-q=%s --limit=%s --rt -b 8 -o %s/%s/bin/%s_%s.bin %s/%s ; } 2> %s/%s/out/%s_%s"%(homepath,bina,fr,w,h,qp,qp+8,f,homepath,out,nome,info,yuvpath,yuv,homepath,out,nome,info)
			print >> file, linha

		print >> file, ""

		file.close