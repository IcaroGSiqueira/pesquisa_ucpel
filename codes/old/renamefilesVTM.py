import os
files = os.listdir("/home/grellert/testesVVC/out/")
for file in files:
	str1,str2 = file.split(".yuv")
	str0 = str1+str2
	mv = "mv "+"/home/grellert/testesVVC/out/"+file+ " /home/grellert/testesVVC/out/"+str0
	os.system(mv)