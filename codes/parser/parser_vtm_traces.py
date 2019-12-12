import os
import re

pathin = "/home/icaro/pesquisa_ucpel/output_VTM/local/traces"
#pathin = "/home/icaro/testesHEVC/gprof"
files = sorted(os.listdir("%s"%pathin))

for file in files:

	vid,pix,fr,b,qp,fl,conf,opt,poc = file.split("_")
	b = b.strip("bit")
	fr = fr.strip("fps")
	qp = qp.strip("qp")
	fl = fl.strip("fframes")
	poc = poc.strip("poc.csv")
	w,h = pix.split("x")
	nome = vid+"_"+pix+"_"+fr+"fps"+"_"+b+"bit"+"_"+fl+"flimit"+"_"+conf+"_"+opt

	out = open("/home/icaro/pesquisa_ucpel/output_VTM/local/parsed_traces/trace_%s.csv"%nome,"w")

	linha = "YUV, POC, QP, X, Y, W, H, PredMode, Depth, QT_Depth, BT_Depth, MT_Depth, ChromaQPAdj, BlockQP, SplitSeries, TransQuantBypassFlag, TransformSkipFlag_Y, BDPCM, TileIdx, IndependentSliceIdx, LFNSTIdx, JointCbCr, CompAlphaCb, CompAlphaCr, RDPCM_Y, RDPCM_Cb, RDPCM_Cr, Luma_IntraMode, Chroma_IntraMode, MultiRefIdx, MIPFlag, ISPMode, SkipFlag, RootCbf, SbtIdx, SbtPos, Cbf_Y, Cbf_Cb, Cbf_Cr, IMVMode, InterDir, MergeFlag, RegularMergeFlag, MergeIdx, MergeType, MVPIdxL0, MVPIdxL1, MVL0, MVL1, MVDL0, MVDL1, MotionBufL0, MotionBufL1, RefIdxL0, RefIdxL1, AffineFlag, AffineMVL0, AffineMVL1, AffineType, MMVDSkipFlag, MMVDMergeFlag, MMVDMergeIdx, MHIntraFlag, SMVDFlag, TrianglePartitioning, TriangleMVL0, TriangleMVL1, GBIIndex, Depth_Chroma, QT_Depth_Chroma, BT_Depth_Chroma, MT_Depth_Chroma, ChromaQPAdj_Chroma, QP_Chroma, SplitSeries_Chroma, TransQuantBypassFlag_Chroma"

	print >> out, linha

	prof = open("%s/%s"%(pathin,file),"r")
	lines = prof.readlines()
	line=i=0

	X = Y = W = H = PredMode = Depth = QT_Depth = BT_Depth = MT_Depth = ChromaQPAdj = BlockQP = SplitSeries = TransQuantBypassFlag = TransformSkipFlag_Y = BDPCM = TileIdx = IndependentSliceIdx = LFNSTIdx = JointCbCr = CompAlphaCb = CompAlphaCr = RDPCM_Y = RDPCM_Cb = RDPCM_Cr = Luma_IntraMode = Chroma_IntraMode = MultiRefIdx = MIPFlag = ISPMode = SkipFlag = RootCbf = SbtIdx = SbtPos = Cbf_Y = Cbf_Cb = Cbf_Cr = IMVMode = InterDir = MergeFlag = RegularMergeFlag = MergeIdx = MergeType = MVPIdxL0 = MVPIdxL1 = MVL0 = MVL1 = MVDL0 = MVDL1 = MotionBufL0 = MotionBufL1 = RefIdxL0 = RefIdxL1 = AffineFlag = AffineMVL0 = AffineMVL1 = AffineType = MMVDSkipFlag = MMVDMergeFlag = MMVDMergeIdx = MHIntraFlag = SMVDFlag = TrianglePartitioning = TriangleMVL0 = TriangleMVL1 = GBIIndex = Depth_Chroma = QT_Depth_Chroma = BT_Depth_Chroma = MT_Depth_Chroma = ChromaQPAdj_Chroma = QP_Chroma = SplitSeries_Chroma = TransQuantBypassFlag_Chroma = '---'

	dummy1 = dummypoc = x = y = w = h = linha = value = "0"

	print file

	yuv = file.strip(".txt")
	yuv = yuv.strip(".yuv")
	yuv = yuv.strip("gprof_")

	while linha == "0":
		line=lines[i]
		i+=1
		if "#" in line:
			continue
		dummy1,dummypoc,x,y,w,h,linha,value = line.split(';')

	i=0
	while line != lines[-1]:
		line=lines[i]
		i+=1
		if "#" in line:
			continue
		#BlockStat: POC 1 @( 144, 144) [32x32] TrianglePartitioning={   0,   0,  32,  32}
		#line = line.strip('\n')
		try:
			dummy1,dummypoc,X,Y,W,H,linha,value = line.split(';')
		except:
			try:
				dummy1,dummypoc,X,Y,W,H,linha,value, value2 = line.split(';')
			except:
				print line
				X,YWHlinha,value, value2, value3 = line.split(',')
				dummy,dummy2,dummy3,dummy4,X = X.split(" ")
				Y,WHlinha = YWHlinha.split(")")
				WH,linhav = WHlinha.split("] ")
				W,H = WH.strip("[X]")
				linha,value1 = linhav.strip("={ ")
				#W,H = WH.split("x")

		if ((x != X) or (Y != y) or (W != w) or (H != h)):

			linha = "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"%(nome, poc, qp, X, Y, W, H, PredMode, Depth, QT_Depth, BT_Depth, MT_Depth, ChromaQPAdj, BlockQP, SplitSeries, TransQuantBypassFlag, TransformSkipFlag_Y, BDPCM, TileIdx, IndependentSliceIdx, LFNSTIdx, JointCbCr, CompAlphaCb, CompAlphaCr, RDPCM_Y, RDPCM_Cb, RDPCM_Cr, Luma_IntraMode, Chroma_IntraMode, MultiRefIdx, MIPFlag, ISPMode, SkipFlag, RootCbf, SbtIdx, SbtPos, Cbf_Y, Cbf_Cb, Cbf_Cr, IMVMode, InterDir, MergeFlag, RegularMergeFlag, MergeIdx, MergeType, MVPIdxL0, MVPIdxL1, MVL0, MVL1, MVDL0, MVDL1, MotionBufL0, MotionBufL1, RefIdxL0, RefIdxL1, AffineFlag, AffineMVL0, AffineMVL1, AffineType, MMVDSkipFlag, MMVDMergeFlag, MMVDMergeIdx, MHIntraFlag, SMVDFlag, TrianglePartitioning, TriangleMVL0, TriangleMVL1, GBIIndex, Depth_Chroma, QT_Depth_Chroma, BT_Depth_Chroma, MT_Depth_Chroma, ChromaQPAdj_Chroma, QP_Chroma, SplitSeries_Chroma, TransQuantBypassFlag_Chroma)
			print >> out, linha

			x = X
			y = Y
			w = W
			h = H

			X = Y = W = H = PredMode = Depth = QT_Depth = BT_Depth = MT_Depth = ChromaQPAdj = BlockQP = SplitSeries = TransQuantBypassFlag = TransformSkipFlag_Y = BDPCM = TileIdx = IndependentSliceIdx = LFNSTIdx = JointCbCr = CompAlphaCb = CompAlphaCr = RDPCM_Y = RDPCM_Cb = RDPCM_Cr = Luma_IntraMode = Chroma_IntraMode = MultiRefIdx = MIPFlag = ISPMode = SkipFlag = RootCbf = SbtIdx = SbtPos = Cbf_Y = Cbf_Cb = Cbf_Cr = IMVMode = InterDir = MergeFlag = RegularMergeFlag = MergeIdx = MergeType = MVPIdxL0 = MVPIdxL1 = MVL0 = MVL1 = MVDL0 = MVDL1 = MotionBufL0 = MotionBufL1 = RefIdxL0 = RefIdxL1 = AffineFlag = AffineMVL0 = AffineMVL1 = AffineType = MMVDSkipFlag = MMVDMergeFlag = MMVDMergeIdx = MHIntraFlag = SMVDFlag = TrianglePartitioning = TriangleMVL0 = TriangleMVL1 = GBIIndex = Depth_Chroma = QT_Depth_Chroma = BT_Depth_Chroma = MT_Depth_Chroma = ChromaQPAdj_Chroma = QP_Chroma = SplitSeries_Chroma = TransQuantBypassFlag_Chroma = '---'

		if linha == "PredMode":
			PredMode = value

		if linha == "Depth":
			Depth = value

		if linha == "QT_Depth":
			QT_Depth = value

		if linha == "BT_Depth":
			BT_Depth = value

		if linha == "MT_Depth":
			MT_Depth = value

		if linha == "ChromaQPAdj":
			ChromaQPAdj = value

		if linha == "BlockQP":
			BlockQP = value

		if linha == "SplitSeries":
			SplitSeries = value

		if linha == "TransQuantBypassFlag":
			TransQuantBypassFlag = value

		if linha == "TransformSkipFlag_Y":
			TransformSkipFlag_Y = value

		if linha == "BDPCM":
			BDPCM = value

		if linha == "TileIdx":
			TileIdx = value

		if linha == "IndependentSliceIdx":
			IndependentSliceIdx = value

		if linha == "LFNSTIdx":
			LFNSTIdx = value

		if linha == "JointCbCr":
			JointCbCr = value

		if linha == "CompAlphaCb":
			CompAlphaCb = value

		if linha == "CompAlphaCr":
			CompAlphaCr = value

		if linha == "RDPCM_Y":
			RDPCM_Y = value

		if linha == "RDPCM_Cb":
			RDPCM_Cb = value

		if linha == "RDPCM_Cr":
			RDPCM_Cr = value

		if linha == "Luma_IntraMode":
			Luma_IntraMode = value

		if linha == "Chroma_IntraMode":
			Chroma_IntraMode = value

		if linha == "MultiRefIdx":
			MultiRefIdx = value

		if linha == "MIPFlag":
			MIPFlag = value

		if linha == "ISPMode":
			ISPMode = value

		if linha == "SkipFlag":
			SkipFlag = value

		if linha == "RootCbf":
			RootCbf = value

		if linha == "SbtIdx":
			SbtIdx = value

		if linha == "SbtPos":
			SbtPos = value

		if linha == "Cbf_Y":
			Cbf_Y = value

		if linha == "Cbf_Cb":
			Cbf_Cb = value

		if linha == "Cbf_Cr":
			Cbf_Cr = value

		if linha == "IMVMode":
			IMVMode = value

		if linha == "InterDir":
			InterDir = value

		if linha == "MergeFlag":
			MergeFlag = value

		if linha == "RegularMergeFlag":
			RegularMergeFlag = value

		if linha == "MergeIdx":
			MergeIdx = value

		if linha == "MergeType":
			MergeType = value

		if linha == "MVPIdxL0":
			MVPIdxL0 = value

		if linha == "MVPIdxL1":
			MVPIdxL1 = value

		if linha == "MVL0":
			MVL0 = value

		if linha == "MVL1":
			MVL1 = value

		if linha == "MVDL0":
			MVDL0 = value

		if linha == "MVDL1":
			MVDL1 = value

		if linha == "MotionBufL0":
			MotionBufL0 = value

		if linha == "MotionBufL1":
			MotionBufL1 = value

		if linha == "RefIdxL0":
			RefIdxL0 = value

		if linha == "RefIdxL1":
			RefIdxL1 = value

		if linha == "AffineFlag":
			AffineFlag = value

		if linha == "AffineMVL0":
			AffineMVL0 = value

		if linha == "AffineMVL1":
			AffineMVL1 = value

		if linha == "AffineType":
			AffineType = value

		if linha == "MMVDSkipFlag":
			MMVDSkipFlag = value

		if linha == "MMVDMergeFlag":
			MMVDMergeFlag = value

		if linha == "MMVDMergeIdx":
			MMVDMergeIdx = value

		if linha == "MHIntraFlag":
			MHIntraFlag = value

		if linha == "SMVDFlag":
			SMVDFlag = value

		if linha == "TrianglePartitioning":
			TrianglePartitioning = value

		if linha == "TriangleMVL0":
			TriangleMVL0 = value

		if linha == "TriangleMVL1":
			TriangleMVL1 = value

		if linha == "GBIIndex":
			GBIIndex = value

		if linha == "Depth_Chroma":
			Depth_Chroma = value

		if linha == "QT_Depth_Chroma":
			QT_Depth_Chroma = value

		if linha == "BT_Depth_Chroma":
			BT_Depth_Chroma = value

		if linha == "MT_Depth_Chroma":
			MT_Depth_Chroma = value

		if linha == "ChromaQPAdj_Chroma":
			ChromaQPAdj_Chroma = value

		if linha == "QP_Chroma":
			QP_Chroma = value

		if linha == "SplitSeries_Chroma":
			SplitSeries_Chroma = value

		if linha == "TransQuantBypassFlag_Chroma":
			TransQuantBypassFlag_Chroma = value
	out.close

#linha = "Average,%s,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f"%(yuv,FMEINT,INTS,AMVP,IMES,FMES,FLT,MRG,IQ,IT,MC,Q,T,SOMA,TOTAL,PORC)
#print out, linha
#out.close