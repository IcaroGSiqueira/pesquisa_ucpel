import os
files = os.listdir("./TesteHEVC")
for file in files:
	#if ".py" in file:
	#	continue
	if ".bin" in file:
		continue
	if "qp32" in file:
		str1,str2 = file.split(".y")
		str0 = str1+"_hm"+".y"+str2
		mv = "mv "+"/home/icaro/Documents/TesteHEVC/TesteHEVC/"+file+" "+str0
		os.system(mv)