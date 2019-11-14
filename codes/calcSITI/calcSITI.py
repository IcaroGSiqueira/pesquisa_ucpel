import math
import os

numf=32

def sobel(frame):
	sobelFrame = []
	clip = 1
	h = len(frame)
	w = len(frame[0])
	for x in range(clip,(h-clip)): #clipping some first/last rows
		sobelVet = []
		for y in range(clip,(w-clip)): #clipping cols
			gradV = -(frame[x-1][y-1])-2*(frame[x-1][y])-(frame[x-1][y+1])
			gradV += (frame[x+1][y-1])+2*(frame[x+1][y])+(frame[x+1][y+1])
			gradV /= 8
			
			gradH =  -(frame[x-1][y-1])+(frame[x-1][y+1])
			gradH += -2*(frame[x][y-1])+2*(frame[x][y+1])
			gradH += -(frame[x+1][y-1])+(frame[x+1][y+1])
			gradH /= 8
			
			sobelPixel = math.sqrt((gradV*gradV)+(gradH*gradH))
			sobelVet.append(sobelPixel)
			y += 1
		sobelFrame.append(sobelVet)
	return sobelFrame

def diff(frame1,frame2):
	diffFrame = []
	h = len(frame)
	w = len(frame[0])
	for x in range(0,h):
		row = list(a - b for a,b in zip(frame1[x],frame2[x]))
		diffFrame.append(row)
	return diffFrame

def std(frame):
	h = len(frame)
	w = len(frame[0])
	# 1 - calc avg pixel
	frameSum = 0
	for row in frame:
		frameSum += sum(row)
	avg = frameSum/(h*w)
	
	# 2 - accumulate squared diff
	acum = 0
	for row in frame:
		for pixel in row:
			acum += pow(pixel-avg,2)

	return math.sqrt(acum/(w*h))


def getYFrame(video,w,h):
	frames = []
	res = w*h
	frame = []
	for i in range(0,h):
		row = []
		for j in range(0,w):
			pixel = video.read(1)
			if not(pixel): #EOF
				return False
			row.append(ord(pixel))
		frame.append(row)
	return frame

# --- M A I N ------------------------------------------------

videos = ["BasketballPass_416x240_50.yuv","BlowingBubbles_416x240_50.yuv","BQSquare_416x240_60.yuv","RaceHorses_416x240_30.yuv","RaceHorses_832x480_30.yuv","BasketballDrill_832x480_50.yuv","BQMall_832x480_60.yuv","PartyScene_832x480_50.yuv","BasketballDrillText_832x480_50.yuv","SlideShow_1280x720_20.yuv","SlideEditing_1280x720_30.yuv","BasketballDrive_1920x1080_50.yuv","BQTerrace_1920x1080_60.yuv","Cactus_1920x1080_50.yuv"]

#videos = os.listdir("/home/icaro/origCfP/")

for v in videos:
#	if v not in yuvs:
#		continue
	print "Video: ", v
	if '.py' in v:
		continue
	if '.csv' in v:
		continue
	if '10bit' in v:
		continue
	if '2160.yuv' in v:
		continue
	video = open('/home/icaro/origCfP/' + v,'rb')
	w = int((v.split('_')[1]).split('x')[0])
	h =  int((v.split('_')[1]).split('x')[1].split('.')[0])

	try:
		outFile = open(v+'.csv','r')
	except:
		siavg=0
		tiavg=0
		outFile = open(v+'.csv','w')
		frame = getYFrame(video,w,h)
		prevFrame = frame
		vetSI = [std(sobel(frame))]
		vetTI = []
		frameIdx = 1
		
		while frame:
			vetSI.append(std(sobel(frame)))
			vetTI.append(std(diff(prevFrame,frame)))
			prevFrame = frame
			if frameIdx % 10 == 0:
				print "\tFrame #:",frameIdx
			frameIdx += 1
			frame = getYFrame(video,w,h)
			if frameIdx > numf:
				break
		video.close()

		print >> outFile, v,';SI;TI'
		for si, ti in zip(vetSI,vetTI):
			print >> outFile,';',si,';',ti
			siavg=siavg+si
			tiavg=tiavg+ti
		print >> outFile,'AVG;', siavg,';',tiavg
		print >> outFile,'MAX;', max(vetSI),';',max(vetTI)
		outFile.close()