import os
pathin = "/home/icaro/pesquisa_ucpel/HM-16.9-approx/OUTPUT"
out = open("/home/icaro/pesquisa_ucpel/hm0919.csv","w")
yuvs = sorted(os.listdir("%s"%pathin))
for yuv in yuvs:
	if "bin" in yuv:
		continue
	if "taps" in yuv:
		continue
	file = open("%s/%s"%(pathin,yuv),"r")
	lines = file.readlines()
	line = lines[-1]
	a,time = line.split(":")
	t,s = time.split("s")
	t = t.strip(" ")
	line = lines[-21]
	f,r = line.split("a")
	r = r.strip(" ")
	br,y,u,v,yuvv = r.split("   ")
	yuvv = yuvv[:-1]
	linha = "%s,%s,%s,%s,%s,%s,%s"%(yuv,y,u,v,yuvv,br,t)
	print >> out, linha
	out.close