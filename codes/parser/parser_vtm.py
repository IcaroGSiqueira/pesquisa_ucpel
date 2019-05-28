import os
pathout = "/grellert/testesVVC"
pathin = "/grellert/testesVVC/out"
out = open("/home%s/vtm-noSIMD.csv"%pathout,"w")
yuvs = sorted(os.listdir("/home/%s"%pathin))
for yuv in yuvs:
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
	yuvv = yuvv[:-5]
	linha = "%s,%s,%s,%s,%s,%s,%s"%(yuv,y,u,v,yuvv,br,t)
	print >> out, linha
	out.close