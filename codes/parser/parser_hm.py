import os
pathin = "/grellert/testesHEVC/out"
out = open("/home/grellert/testesHEVC/hm-noSIMD.csv","w")
yuvs = sorted(os.listdir("/home/%s"%pathin))
for yuv in yuvs:
	if "10fr" in yuv:
		continue
	file = open("/home%s/%s"%(pathin,yuv),"r")
	lines = file.readlines()
	line = lines[-25]
	a,time = line.split(":")
	t,s = time.split("s")
	t = t.strip(" ")
	line = lines[-45]
	f,r = line.split("a")
	r = r.strip(" ")
	br,y,u,v,yuvv = r.split("   ")
	yuvv = yuvv[:-1]
	linha = "%s,%s,%s,%s,%s,%s,%s"%(yuv,y,u,v,yuvv,br,t)
	print >> out, linha
	out.close