import os
pathin = "/grellert/testesVVC/out"
out = open("/home/grellert/testesVVC/vtm-noSIMD.csv","w")
#out = open("/home/grellert/testesVVC/vtm-SIMD.csv","w")
yuvs = sorted(os.listdir("/home/%s"%pathin))
for yuv in yuvs:
	if "vtmSIMD" in yuv:
	#if "vtmSIMD" not in yuv:
		continue
	file = open("/home%s/%s"%(pathin,yuv),"r")
	lines = file.readlines()
	line = lines[-5]
	a,time = line.split(":")
	s,time,q = time.split("]")
	t,s = time.split("sec")
	t = t.strip(" ")
	line = lines[-8]
	f,r = line.split("a")
	r = r.strip(" ")
	br,y,u,v,yuvv = r.split("   ")
	yuvv = yuvv[:-1]
	linha = "%s,%s,%s,%s,%s,%s,%s"%(yuv,y,u,v,yuvv,br,t)
	print >> out, linha
	out.close
