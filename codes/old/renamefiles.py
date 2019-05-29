import os
files = os.listdir("/home/grellert/testesHEVC/out/")
for file in files:
	str1,str2 = file.split(".yuv")
	str0 = str1+str2
	mv = "mv "+"/home/grellert/testesHEVC/out/"+file+ " /home/grellert/testesHEVC/out/"+str0
	os.system(mv)