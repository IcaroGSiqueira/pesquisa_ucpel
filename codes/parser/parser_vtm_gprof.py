import os

pathin = "/home/icaro/testesHEVC/gprof"
#pathin = "/home/grellert/testesHEVC/gprof"
#out = open("/home/grellert/testesHEVC/gprof.csv","w")
out = open("/home/icaro/testesHEVC/gprof.csv","w")
files = sorted(os.listdir("%s"%pathin))

AMVP=0
IMES=0
FMES=0
FMEINT=0
INTRAS=0
MC=0
QIQ=0
TIT=0
FILT=0

for file in files
	if ".csv" in file:
		continue
	prof = open("%s/%s"%(pathin,file),"r")
	lines = file.readlines()

	line=0
	while line != lines[-1]:
		i+=1
		line=lines[i]
		if "\[\d+\][ \d \. [A-Za-z]+::xGetHads" in line:
			bline=line
			while "---" not in bline:
				bline-=1
				if "IntraSearch::" in line:
					INTRAS = 
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue
		if "{\[\d+\][ \d \.]+[A-Za-z]+::" in line:
			continue

		linha = "%s,%s,%s,%s,%s,%s,%s"%(yuv,y,u,v,yuvv,br,t)
		print >> out, linha
		out.close