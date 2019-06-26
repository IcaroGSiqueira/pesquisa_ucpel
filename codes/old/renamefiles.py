import os
files = os.listdir("/home/grellert/testesHEVC/out/")
for file in files:
	if "yuv_qp" in file:
		continue
	str1,str2 = file.split("_qp")
	str0 = str1+".yuv_qp"+str2
	mv = "mv "+"/home/grellert/testesHEVC/out/"+file+ " /home/grellert/testesHEVC/out/"+str0
	os.system(mv)