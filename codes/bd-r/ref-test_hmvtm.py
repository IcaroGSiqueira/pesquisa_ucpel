from bjontegaardhmvtm import bdbr,bdpsnr,plotRDCurves

csv_test = open('/home/icaro/testesHEVC/hm-noSIMD.csv','rb')
csv_ref = open('/home/icaro/testesVVC/vtm-noSIMD.csv','rb')
out = open("/home/icaro/pesquisa_ucpel/bd-rate/hm-vtm_noSIMD.csv","w")

lines = csv_ref.readlines()
tlines = csv_test.readlines()
tam = len(lines)

for x in xrange(0,tam):
	if "qp22" in lines[x]:
		print lines[x]
		nome22,y22,u22,v22,yuv22,b22,t22 = lines[x].split(",")
		if "crop" in nome22:
			n,n1,n2,n3,n4,n5,n6,n7 = nome22.split("_")
		else:
			n,n1,n2,n3,n4,n5,n6 = nome22.split("_")
		y22,u22,v22,yuv22,b22,t22 = map(float,[y22,u22,v22,yuv22,b22,t22])
	if "qp27" in lines[x]:
		nome27,y27,u27,v27,yuv27,b27,t27 = lines[x].split(",")
		if "crop" in nome27:
			n,n1,n2,n3,n4,n5,n6,n7 = nome27.split("_")
		else:
			n,n1,n2,n3,n4,n5,n6 = nome27.split("_")
		y27,u27,v27,yuv27,b27,t27 = map(float,[y27,u27,v27,yuv27,b27,t27])
	if "qp32" in lines[x]:
		nome32,y32,u32,v32,yuv32,b32,t32 = lines[x].split(",")
		if "crop" in nome32:
			n,n1,n2,n3,n4,n5,n6,n7 = nome32.split("_")
		else:
			n,n1,n2,n3,n4,n5,n6 = nome32.split("_")
		y32,u32,v32,yuv32,b32,t32 = map(float,[y32,u32,v32,yuv32,b32,t32])
	if "qp37" in lines[x]:
		nome37,y37,u37,v37,yuv37,b37,t37 = lines[x].split(",")
		if "crop" in nome37:
			n,n1,n2,n3,n4,n5,n6,n7 = nome37.split("_")
		else:
			n,n1,n2,n3,n4,n5,n6 = nome37.split("_")
		y37,u37,v37,yuv37,b37,t37 = map(float,[y37,u37,v37,yuv37,b37,t37])

	if "qp22" in tlines[x]:
		nome22t,y22t,u22t,v22t,yuv22t,b22t,t22t = tlines[x].split(",")
		y22t,u22t,v22t,yuv22t,b22t,t22t = map(float,[y22t,u22t,v22t,yuv22t,b22t,t22t])
	if "qp27" in tlines[x]:
		nome27t,y27t,u27t,v27t,yuv27t,b27t,t27t = tlines[x].split(",")
		y27t,u27t,v27t,yuv27t,b27t,t27t = map(float,[y27t,u27t,v27t,yuv27t,b27t,t27t])
	if "qp32" in tlines[x]:
		nome32t,y32t,u32t,v32t,yuv32t,b32t,t32t = tlines[x].split(",")
		y32t,u32t,v32t,yuv32t,b32t,t32t = map(float,[y32t,u32t,v32t,yuv32t,b32t,t32t])
	if "qp37" in tlines[x]:
		nome37t,y37t,u37t,v37t,yuv37t,b37t,t37t = tlines[x].split(",")
		y37t,u37t,v37t,yuv37t,b37t,t37t = map(float,[y37t,u37t,v37t,yuv37t,b37t,t37t])
			 
	if (x%4)==3:
		ref = [[b22,y22,u22,v22,yuv22],[b27,y27,u27,v27,yuv27],[b32,y32,u32,v32,yuv32],[b37,y37,u37,v37,yuv37]]
		
		test = [[b22t,y22t,u22t,v22t,yuv22t],[b27t,y27t,u27t,v27t,yuv27t],[b32t,y32t,u32t,v32t,yuv32t],[b37t,y37t,u37t,v37t,yuv37t]]
		
		ttest = (t22t+t37t+t27t+t32t)/4
		tref = (t22+t37+t27+t32)/4
		dt=tref/ttest

		nome=n+"_"+n1+"_"+n2

		bdb = bdbr(ref,test,1)
		bdbyuv = bdbr(ref,test,4)
		bdp = bdpsnr(ref,test,1) 
		bdpyuv = bdpsnr(ref,test,4) 
		plotRDCurves(ref,test,1,"./curvas/Curva%s.pdf"%n,n)
		print >> out,nome,bdb,bdbyuv,bdp,bdpyuv,dt