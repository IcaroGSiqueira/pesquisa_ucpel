import os
yuvs = os.listdir("/home/icaro/origCfP")

f=10
homepath = "/home/icaro"

file = open("run_vtm_server.sh","w")
for yuv in yuvs:
	if "416" not in yuv:
		continue
	for taps in [8,6,4,2]:
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
			linha = "%s/HM-16.9/bin/EncoderAppStatic -c %s/HM-16.9/cfg/encoder_randomaccess_vtm.cfg --InputFile=%s/origCfP/%s --SourceHeight=%s --SourceWidth=%s -f %s -fr %s -q %s --n_taps=%s --BitstreamFile=%s/testesVVC/bin/%s_%st_vtm.bin  > %s/testesVVC/out/%s_qp%s_%st_vtm_out" %(homepath,homepath,homepath,yuv,h,w,f,fr,qp,taps,homepath,nome,taps,homepath,yuv,qp,taps)
			print >> file, linha
			file.close