from bjontegaardhmvtm import bdbr,bdpsnr,plotRDCurves

homepath = "home/grellert"
#homepath = "home/icaro"

csv_ref = open("/%s/testesHEVC/hm0919.csv"%homepath,"rb")

csv_test = open("/%s/testesHEVC/hm4t0919.csv"%homepath,"rb")
#csv_test = open("/%s/testesHEVC/hm2t0919.csv"%homepath,"rb")
#csv_test = open("/%s/testesHEVC/hm6t0919.csv"%homepath,"rb")

out = open("/%s/testesHEVC/BD-Rate_hm-hm4taps.csv"%homepath,"w")
#out = open("/%s/testesHEVC/BD-Rate_hm-hm2taps.csv"%homepath,"w")
#out = open("/%s/testesHEVC/BD-Rate_hm-hm6taps.csv"%homepath,"w")

lines = csv_ref.readlines()
tlines = csv_test.readlines()
tam = len(lines)

for x in xrange(0,tam):
	if "22qp" in lines[x]:
		print lines[x]

		nome22,b22,y22,u22,v22,yuv22,t22 = lines[x].split(",")
		b22,y22,u22,v22,yuv22,t22 = map(float,[b22,y22,u22,v22,yuv22,t22])

	if "27qp" in lines[x]:

		nome27,b27,y27,u27,v27,yuv27,t27 = lines[x].split(",")
		b27,y27,u27,v27,yuv27,t27 = map(float,[b27,y27,u27,v27,yuv27,t27])

	if "32qp" in lines[x]:

		nome32,b32,y32,u32,v32,yuv32,t32 = lines[x].split(",")
		b32,y32,u32,v32,yuv32,t32 = map(float,[b32,y32,u32,v32,yuv32,t32])

	if "37qp" in lines[x]:

		nome37,b37,y37,u37,v37,yuv37,t37 = lines[x].split(",")
		b37,y37,u37,v37,yuv37,t37 = map(float,[b37,y37,u37,v37,yuv37,t37])

	if "22qp" in tlines[x]:

		nome22t,b22t,y22t,u22t,v22t,yuv22t,t22t = tlines[x].split(",")
		b22t,y22t,u22t,v22t,yuv22t,t22t = map(float,[b22t,y22t,u22t,v22t,yuv22t,t22t])

		n,n1,n2,n3,n4,n5,n6,n7 = nome22.split("_")

	if "27qp" in tlines[x]:

		nome27t,b27t,y27t,u27t,v27t,yuv27t,t27t = tlines[x].split(",")
		b27t,y27t,u27t,v27t,yuv27t,t27t = map(float,[b27t,y27t,u27t,v27t,yuv27t,t27t])

		n,n1,n2,n3,n4,n5,n6,n7 = nome27.split("_")

	if "32qp" in tlines[x]:

		nome32t,b32t,y32t,u32t,v32t,yuv32t,t32t = tlines[x].split(",")
		b32t,y32t,u32t,v32t,yuv32t,t32t = map(float,[b32t,y32t,u32t,v32t,yuv32t,t32t])

		n,n1,n2,n3,n4,n5,n6,n7 = nome32.split("_")

	if "37qp" in tlines[x]:

		nome37t,b37t,y37t,u37t,v37t,yuv37t,t37t = tlines[x].split(",")
		b37t,y37t,u37t,v37t,yuv37t,t37t = map(float,[b37t,y37t,u37t,v37t,yuv37t,t37t])

		n,n1,n2,n3,n4,n5,n6,n7 = nome37.split("_")

	if (x%4)==3:

		ref = [[b22,y22,u22,v22,yuv22],[b27,y27,u27,v27,yuv27],[b32,y32,u32,v32,yuv32],[b37,y37,u37,v37,yuv37]]

		test = [[b22t,y22t,u22t,v22t,yuv22t],[b27t,y27t,u27t,v27t,yuv27t],[b32t,y32t,u32t,v32t,yuv32t],[b37t,y37t,u37t,v37t,yuv37t]]

		ttest = (t22t+t37t+t27t+t32t)/4
		tref = (t22+t37+t27+t32)/4
		dt=tref/ttest

		bdb = bdbr(ref,test,1)
		bdp = bdpsnr(ref,test,1) 
		plotRDCurves(ref,test,1,"./curvas/Curva%s.pdf"%n,n)
		print >> out,n,bdb,bdp,dt