w = 3840
h = 2160
fps = 50

yuvi = open('/home/icaro/origCfP/ParkJoy_3840x2160_50.yuv','rb')
yuvo = open('/home/icaro/origCfP/ParkJoy2_3840x2160_50.yuv','wb')
for x in xrange(1,499):
	yuv = yuvi.readlines(x)
	tam = len(yuv)
	if x == 1:
		yuv = yuv[2]
		print 'if',x
	else:
		print 'else',x
		yuv = yuv[0]
	print >> yuvo , yuv
yuvi.close()
yuvo.close()