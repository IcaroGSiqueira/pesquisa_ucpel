import numpy as np
from scipy import interpolate
import scipy.integrate as integrate
import math
import matplotlib.pyplot as plt
import matplotlib.pyplot as plt
plt.rcParams.update({'font.size': 12})


def plotGroupedRDCurves(group, yuv_sel, title = 'rd_curve.pdf'):
	colors = ['red','green', 'blue', 'orange']
	i =0
	for HEVC,VVC, n in group[:4]:
		HEVC = np.asarray(HEVC)
		VVC = np.asarray(VVC)

		HEVC = HEVC[HEVC[:,0].argsort()]
		VVC = VVC[VVC[:,0].argsort()]
		xa, ya = np.log10(HEVC[:,0]), HEVC[:,yuv_sel]
		xb, yb = np.log10(VVC[:,0]), VVC[:,yuv_sel]
		xa, ya = HEVC[:,0], HEVC[:,yuv_sel]
		xb, yb = VVC[:,0], VVC[:,yuv_sel]

		seqname, seqres, seqfps = n.replace('.yuv','').split('_')
		plt.plot(xa,ya,label='%s(HEVC)' % seqname, marker = 'o', linestyle = '--', lw = 0.75, color=colors[i])
		plt.plot(xb,yb,label='%s(VVC)'% seqname, marker = '^',lw = 0.75, color=colors[i])
		i += 1

	plt.legend(loc="lower right", ncol = 2,frameon = False, labelspacing = 0.1, columnspacing = 0.15, )

	plt.xlabel('Bitrate (kbps)')
	if yuv_sel == 1:
		plt.ylabel('Y-PSNR (dB)')
	else:
		plt.ylabel('YUV-PSNR (dB)')

	plt.tight_layout()

	plt.savefig(title, dpi=500)
	plt.close()


def plotRDCurves(HEVC,VVC, yuv_sel, title = 'rd_curve.pdf',n = ' ', save = True):
	HEVC = np.asarray(HEVC)
	VVC = np.asarray(VVC)

	HEVC = HEVC[HEVC[:,0].argsort()]
	VVC = VVC[VVC[:,0].argsort()]
	xa, ya = np.log10(HEVC[:,0]), HEVC[:,yuv_sel]
	xb, yb = np.log10(VVC[:,0]), VVC[:,yuv_sel]
	xa, ya = HEVC[:,0], HEVC[:,yuv_sel]
	xb, yb = VVC[:,0], VVC[:,yuv_sel]

	plt.plot(xa,ya,label='HEVC', marker = 'o', color='#006000')
	plt.plot(xb,yb,label='VVC', marker = '^', color='#0c00b5')
	plt.legend()
	seqname, seqres, seqfps = n.replace('.yuv','').split('_')
	figtitle = '%s (%s@%s)' % (seqname, seqres, seqfps)
	plt.title('%s\n' % (figtitle))
	plt.xlabel('Bitrate (kbps)')
	if yuv_sel == 1:
		plt.ylabel('Y-PSNR (dB)')
	else:
		plt.ylabel('YUV-PSNR (dB)')

	plt.tight_layout()
	plt.savefig(title, dpi=500)
	plt.close()

def bdbr(HEVC,VVC,  yuv_sel):
	HEVC = np.asarray(HEVC)
	VVC = np.asarray(VVC)
	
	HEVC = HEVC[HEVC[:,0].argsort()]
	VVC = VVC[VVC[:,0].argsort()]

	xa, ya = np.log10(HEVC[:,0]), HEVC[:,yuv_sel]
	xb, yb = np.log10(VVC[:,0]), VVC[:,yuv_sel]
	
	max_i = len(ya)
	i = 1
	while(i < max_i):
		if ya[i] < ya[i-1] or yb[i] <  yb[i-1]:
			ya = np.delete( ya,i)
			yb = np.delete( yb,i)
			xa = np.delete( xa,i)
			xb = np.delete( xb,i)
			max_i = len(ya)
		else:
			i += 1

	x_interp = [max(min(xa), min(xb)), min(max(xa),max(xb))]
	y_interp = [max(min(ya), min(yb)), min(max(ya),max(yb))]

	interp_br_a = interpolate.PchipInterpolator(ya,xa)
	interp_br_b = interpolate.PchipInterpolator(yb,xb)

	bdbr_a = integrate.quad(interp_br_a, y_interp[0], y_interp[1])[0]
	bdbr_b = integrate.quad(interp_br_b, y_interp[0], y_interp[1])[0]

	bdbr = (bdbr_b - bdbr_a) / (y_interp[1] - y_interp[0])
	bdbr = (math.pow(10., bdbr)-1)*100

	return bdbr


def bdpsnr(HEVC,VVC, yuv_sel):
	HEVC = np.asarray(HEVC)
	VVC = np.asarray(VVC)
	
	HEVC = HEVC[HEVC[:,0].argsort()]
	VVC = VVC[VVC[:,0].argsort()]
	
	xa, ya = np.log10(HEVC[:,0]), HEVC[:,yuv_sel]
	xb, yb = np.log10(VVC[:,0]), VVC[:,yuv_sel]

	x_interp = [max(min(xa), min(xb)), min(max(xa),max(xb))]
	y_interp = [max(min(ya), min(yb)), min(max(ya),max(yb))]

	interp_snr_a = interpolate.PchipInterpolator(xa,ya)
	interp_snr_b = interpolate.PchipInterpolator(xb,yb)

	bdpsnr_a = integrate.quad(interp_snr_a, x_interp[0], x_interp[1])[0]
	bdpsnr_b = integrate.quad(interp_snr_b, x_interp[0], x_interp[1])[0]

	bdpsnr = (bdpsnr_b - bdpsnr_a) / (x_interp[1] - x_interp[0])

	return bdpsnr