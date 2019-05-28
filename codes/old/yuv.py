w = 352
h = 288
fps = 30
j = 0

yuvi = open('/home/icaro/Videos/akiyo_352x288_30.yuv','rb')
y = open('/home/icaro/Codes/y','wb')
cb = open('/home/icaro/Codes/cb','wb')
cr = open('/home/icaro/Codes/cr','wb')
yuvo = open('/home/icaro/Codes/yuv.yuv','wb')

while j < 30:
	j += 1

	yuv = yuvi.read(w*h)
	y.write(yuv)
	yuvo.write(yuv)

	yuv = yuvi.read(w*h/4)
	cb.write(yuv)
	yuvo.write(yuv)

	yuv = yuvi.read(w*h/4)
	cr.write(yuv)
	yuvo.write(yuv)

yuvi.close()
y.close()
cb.close()
cr.close()
yuvo.close()