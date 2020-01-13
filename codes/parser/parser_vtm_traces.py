import os

pathin = "/home/icaro/pesquisa_ucpel/output_VTM/local/traces"
#pathin = "/home/icaro/testesHEVC/gprof"
files = sorted(os.listdir("%s"%pathin))

for file in files:
	print file

	vid,pix,fr,b,qp,fl,conf,opt,poc = file.split("_")
	b = b.strip("bit")
	fr = fr.strip("fps")
	qp = qp.strip("qp")
	fl = fl.strip("fframes")
	poc = poc.strip("poc.csv")
	w,h = pix.split("x")
	nome = vid+"_"+pix+"_"+fr+"fps"+"_"+b+"bit"+"_"+fl+"flimit"+"_"+conf+"_"+opt+"_"+qp+"qp"+"_"+poc+"poc"
	#nome = vid+"_"+pix+"_"+fr+"fps"+"_"+b+"bit"+"_"+fl+"flimit"+"_"+conf+"_"+opt

	out = open("/home/icaro/pesquisa_ucpel/output_VTM/local/parsed_traces/trace_%s.csv"%nome,"w")

	try:
		test = open("/home/icaro/pesquisa_ucpel/output_VTM/local/parsed_traces/trace_%s.csv"%nome,"r")
	except:	

		linha = "YUV, POC, QP, X, Y, W, H, PredMode, Depth, QT_Depth, BT_Depth, MT_Depth, ChromaQPAdj, BlockQP, SplitSeries, TransQuantBypassFlag, TransformSkipFlag_Y, BDPCM, TileIdx, IndependentSliceIdx, LFNSTIdx, JointCbCr, CompAlphaCb, CompAlphaCr, RDPCM_Y, RDPCM_Cb, RDPCM_Cr, Luma_IntraMode, Chroma_IntraMode, MultiRefIdx, MIPFlag, ISPMode, SkipFlag, RootCbf, SbtIdx, SbtPos, Cbf_Y, Cbf_Cb, Cbf_Cr, IMVMode, InterDir, MergeFlag, RegularMergeFlag, MergeIdx, MergeType, MVPIdxL0, MVPIdxL1, MVL0, MVL1, MVDL0, MVDL1, MotionBufL0, MotionBufL1, RefIdxL0, RefIdxL1, AffineFlag, AffineMVL0, AffineMVL1, AffineType, MMVDSkipFlag, MMVDMergeFlag, MMVDMergeIdx, MHIntraFlag, SMVDFlag, TrianglePartitioning, TriangleMVL0, TriangleMVL1, GBIIndex, Depth_Chroma, QT_Depth_Chroma, BT_Depth_Chroma, MT_Depth_Chroma, ChromaQPAdj_Chroma, QP_Chroma, SplitSeries_Chroma, TransQuantBypassFlag_Chroma"

		print >> out, linha

		prof = open("%s/%s"%(pathin,file),"r")
		lines = prof.readlines()
		line=i=0

		PredMode = Depth = QT_Depth = BT_Depth = MT_Depth = ChromaQPAdj = BlockQP = SplitSeries = TransQuantBypassFlag = TransformSkipFlag_Y = BDPCM = TileIdx = IndependentSliceIdx = LFNSTIdx = JointCbCr = CompAlphaCb = CompAlphaCr = RDPCM_Y = RDPCM_Cb = RDPCM_Cr = Luma_IntraMode = Chroma_IntraMode = MultiRefIdx = MIPFlag = ISPMode = SkipFlag = RootCbf = SbtIdx = SbtPos = Cbf_Y = Cbf_Cb = Cbf_Cr = IMVMode = InterDir = MergeFlag = RegularMergeFlag = MergeIdx = MergeType = MVPIdxL0 = MVPIdxL1 = MVL0 = MVL1 = MVDL0 = MVDL1 = MotionBufL0 = MotionBufL1 = RefIdxL0 = RefIdxL1 = AffineFlag = AffineMVL0 = AffineMVL1 = AffineType = MMVDSkipFlag = MMVDMergeFlag = MMVDMergeIdx = MHIntraFlag = SMVDFlag = TrianglePartitioning = TriangleMVL0 = TriangleMVL1 = GBIIndex = Depth_Chroma = QT_Depth_Chroma = BT_Depth_Chroma = MT_Depth_Chroma = ChromaQPAdj_Chroma = QP_Chroma = SplitSeries_Chroma = TransQuantBypassFlag_Chroma = '---'

		x = y = w = h = linha = "---"

		yuv = file.strip(".txt")
		yuv = yuv.strip(".yuv")
		yuv = yuv.strip("gprof_")

		while linha == "---":
			line=lines[i]
			i+=1
			if "#" in line:
				continue
			dummy1,dummy,x,y,w,h,linha,value = line.split(';')

		i=i-1
		while line != lines[-1]:
			line=lines[i]
			i+=1
			if "#" in line:
				continue

			X = Y = W = H = value = value0 = value1 = value2 = value3 = value4 = value5 = "---"

			try:
				dummy1,dummy,X,Y,W,H,linha,value = line.split(';')
				value = value.split("\n")
				value = value[0]
		
			except:
				try:
					dummy1,dummy,X,Y,W,H,linha,value, value1 = line.split(';')
					value = value.split("\n")
					value = value[0]
					value1 = value1.split("\n")
					value1 = value1[0]
				except:
					try:
						#BlockStat: POC 1 @( 144, 144) [32x32] TrianglePartitioning={   0,   0,  32,  32}
						#BlockStat: POC 1 @(1200, 448) [16x16] TrianglePartitioning={   0,  16,  16,   0}
						Xplus,YWHlinha,value1, value2, value3 = line.split(',')
						dummy, X = Xplus.split("@(")
						Y,WHlinha = YWHlinha.split(")")
						WH,linhav = WHlinha.split("]")
						W,H = WH.split("x")
						dummy,W = W.split("[")
						linhav = linhav.strip(" ")
						linha,value0 = linhav.split("={")
						value3,dummy = value3.split("}")
						value3 = value3.split("\n")
						value3 = value3[0]
						value = value0+";"+value1+";"+value2+";"+value3
					except:
						try:
							#BlockStat: POC 1 @[(144, 144)--(176, 144)--(176, 176)--] TriangleMVL0={   1,  -1}
							Xplus,Yv0,v1v2,v3linhav4,v5 = line.split(',')
							dummy,dummy1,dummy2,Xplus = Xplus.split(" ")
							X = Xplus.strip("@[(")
							Y,value0 = Yv0.split(")--(")
							value1,value2 = v1v2.split(")--(")
							value3,linhav4 = v3linhav4.split(")--] ")
							linha,value4 = linhav4.split("={")
							value5, dummy = v5.split("}")

							value0 = value0.split(" ")
							value0 = int(value0[0])
							value1 = value1.split(" ")
							value1 = int(value1[1])
							value2 = value2.split(" ")
							value2 = int(value2[0])
							value3 = value3.split(" ")
							value3 = int(value3[1])
							X = X.split(" ")
							X = int(X[0])
							Y = Y.split(" ")
							Y = int(Y[1])

							W = value0-X
							H = value3-Y
							if((W<=0) or (H<=0)):
								W = value2-X
								H = value1-Y

							#value = value0+";"+value1+";"+value2+";"+value3+";"+value4+";"+value5
							value = value4+";"+value5
						except:
							#BlockStat;1; 256; 448;64;64;AffineMVL0;  -1;   0;  -1;   0;   0;   1
							dummy,dummy1,X,Y,W,H,linha,value0,value1,value2,value3,value4,value5 = line.split(';')
							value5 = value5.split("\n")
							value5 = value5[0]
							value = value0+";"+value1+";"+value2+";"+value3+";"+value4+";"+value5

							
			if ((x != X) or (Y != y) or (W != w) or (H != h)):

				linha = "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"%(nome, poc, qp, x, y, w, h, PredMode, Depth, QT_Depth, BT_Depth, MT_Depth, ChromaQPAdj, BlockQP, SplitSeries, TransQuantBypassFlag, TransformSkipFlag_Y, BDPCM, TileIdx, IndependentSliceIdx, LFNSTIdx, JointCbCr, CompAlphaCb, CompAlphaCr, RDPCM_Y, RDPCM_Cb, RDPCM_Cr, Luma_IntraMode, Chroma_IntraMode, MultiRefIdx, MIPFlag, ISPMode, SkipFlag, RootCbf, SbtIdx, SbtPos, Cbf_Y, Cbf_Cb, Cbf_Cr, IMVMode, InterDir, MergeFlag, RegularMergeFlag, MergeIdx, MergeType, MVPIdxL0, MVPIdxL1, MVL0, MVL1, MVDL0, MVDL1, MotionBufL0, MotionBufL1, RefIdxL0, RefIdxL1, AffineFlag, AffineMVL0, AffineMVL1, AffineType, MMVDSkipFlag, MMVDMergeFlag, MMVDMergeIdx, MHIntraFlag, SMVDFlag, TrianglePartitioning, TriangleMVL0, TriangleMVL1, GBIIndex, Depth_Chroma, QT_Depth_Chroma, BT_Depth_Chroma, MT_Depth_Chroma, ChromaQPAdj_Chroma, QP_Chroma, SplitSeries_Chroma, TransQuantBypassFlag_Chroma)
				print >> out, linha

				x = X
				y = Y
				w = W
				h = H

				X = Y = W = H = PredMode = Depth = QT_Depth = BT_Depth = MT_Depth = ChromaQPAdj = BlockQP = SplitSeries = TransQuantBypassFlag = TransformSkipFlag_Y = BDPCM = TileIdx = IndependentSliceIdx = LFNSTIdx = JointCbCr = CompAlphaCb = CompAlphaCr = RDPCM_Y = RDPCM_Cb = RDPCM_Cr = Luma_IntraMode = Chroma_IntraMode = MultiRefIdx = MIPFlag = ISPMode = SkipFlag = RootCbf = SbtIdx = SbtPos = Cbf_Y = Cbf_Cb = Cbf_Cr = IMVMode = InterDir = MergeFlag = RegularMergeFlag = MergeIdx = MergeType = MVPIdxL0 = MVPIdxL1 = MVL0 = MVL1 = MVDL0 = MVDL1 = MotionBufL0 = MotionBufL1 = RefIdxL0 = RefIdxL1 = AffineFlag = AffineMVL0 = AffineMVL1 = AffineType = MMVDSkipFlag = MMVDMergeFlag = MMVDMergeIdx = MHIntraFlag = SMVDFlag = TrianglePartitioning = TriangleMVL0 = TriangleMVL1 = GBIIndex = Depth_Chroma = QT_Depth_Chroma = BT_Depth_Chroma = MT_Depth_Chroma = ChromaQPAdj_Chroma = QP_Chroma = SplitSeries_Chroma = TransQuantBypassFlag_Chroma = '---'

			if linha == "PredMode":
				PredMode = value
				continue

			if linha == "Depth":
				Depth = value
				continue

			if linha == "QT_Depth":
				QT_Depth = value
				continue

			if linha == "BT_Depth":
				BT_Depth = value
				continue

			if linha == "MT_Depth":
				MT_Depth = value
				continue

			if linha == "ChromaQPAdj":
				ChromaQPAdj = value
				continue

			if linha == "BlockQP":
				BlockQP = value
				continue

			if linha == "SplitSeries":
				SplitSeries = value
				continue

			if linha == "TransQuantBypassFlag":
				TransQuantBypassFlag = value
				continue

			if linha == "TransformSkipFlag_Y":
				TransformSkipFlag_Y = value
				continue

			if linha == "BDPCM":
				BDPCM = value
				continue

			if linha == "TileIdx":
				TileIdx = value
				continue

			if linha == "IndependentSliceIdx":
				IndependentSliceIdx = value
				continue

			if linha == "LFNSTIdx":
				LFNSTIdx = value
				continue

			if linha == "JointCbCr":
				JointCbCr = value
				continue

			if linha == "CompAlphaCb":
				CompAlphaCb = value
				continue

			if linha == "CompAlphaCr":
				CompAlphaCr = value
				continue

			if linha == "RDPCM_Y":
				RDPCM_Y = value
				continue

			if linha == "RDPCM_Cb":
				RDPCM_Cb = value
				continue

			if linha == "RDPCM_Cr":
				RDPCM_Cr = value
				continue

			if linha == "Luma_IntraMode":
				Luma_IntraMode = value
				continue

			if linha == "Chroma_IntraMode":
				Chroma_IntraMode = value
				continue

			if linha == "MultiRefIdx":
				MultiRefIdx = value
				continue

			if linha == "MIPFlag":
				MIPFlag = value
				continue

			if linha == "ISPMode":
				ISPMode = value
				continue

			if linha == "SkipFlag":
				SkipFlag = value
				continue

			if linha == "RootCbf":
				RootCbf = value
				continue

			if linha == "SbtIdx":
				SbtIdx = value
				continue

			if linha == "SbtPos":
				SbtPos = value
				continue

			if linha == "Cbf_Y":
				Cbf_Y = value
				continue

			if linha == "Cbf_Cb":
				Cbf_Cb = value
				continue

			if linha == "Cbf_Cr":
				Cbf_Cr = value
				continue

			if linha == "IMVMode":
				IMVMode = value
				continue

			if linha == "InterDir":
				InterDir = value
				continue

			if linha == "MergeFlag":
				MergeFlag = value
				continue

			if linha == "RegularMergeFlag":
				RegularMergeFlag = value
				continue

			if linha == "MergeIdx":
				MergeIdx = value
				continue

			if linha == "MergeType":
				MergeType = value
				continue

			if linha == "MVPIdxL0":
				MVPIdxL0 = value
				continue

			if linha == "MVPIdxL1":
				MVPIdxL1 = value
				continue

			if linha == "MVL0":
				MVL0 = value
				continue

			if linha == "MVL1":
				MVL1 = value
				continue

			if linha == "MVDL0":
				MVDL0 = value
				continue

			if linha == "MVDL1":
				MVDL1 = value
				continue

			if linha == "MotionBufL0":
				MotionBufL0 = value
				continue

			if linha == "MotionBufL1":
				MotionBufL1 = value
				continue

			if linha == "RefIdxL0":
				RefIdxL0 = value
				continue

			if linha == "RefIdxL1":
				RefIdxL1 = value
				continue

			if linha == "AffineFlag":
				AffineFlag = value
				continue

			if linha == "AffineMVL0":
				AffineMVL0 = value
				continue

			if linha == "AffineMVL1":
				AffineMVL1 = value
				continue

			if linha == "AffineType":
				AffineType = value
				continue

			if linha == "MMVDSkipFlag":
				MMVDSkipFlag = value
				continue

			if linha == "MMVDMergeFlag":
				MMVDMergeFlag = value
				continue

			if linha == "MMVDMergeIdx":
				MMVDMergeIdx = value
				continue

			if linha == "MHIntraFlag":
				MHIntraFlag = value
				continue

			if linha == "SMVDFlag":
				SMVDFlag = value
				continue

			if linha == "TrianglePartitioning":
				TrianglePartitioning = value
				continue

			if linha == "TriangleMVL0":
				TriangleMVL0 = value
				continue

			if linha == "TriangleMVL1":
				TriangleMVL1 = value
				continue

			if linha == "GBIIndex":
				GBIIndex = value
				continue

			if linha == "Depth_Chroma":
				Depth_Chroma = value
				continue

			if linha == "QT_Depth_Chroma":
				QT_Depth_Chroma = value
				continue

			if linha == "BT_Depth_Chroma":
				BT_Depth_Chroma = value
				continue

			if linha == "MT_Depth_Chroma":
				MT_Depth_Chroma = value
				continue

			if linha == "ChromaQPAdj_Chroma":
				ChromaQPAdj_Chroma = value
				continue

			if linha == "QP_Chroma":
				QP_Chroma = value
				continue

			if linha == "SplitSeries_Chroma":
				SplitSeries_Chroma = value
				continue

			if linha == "TransQuantBypassFlag_Chroma":
				TransQuantBypassFlag_Chroma = value
				continue
out.close

#linha = "Average,%s,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f"%(yuv,FMEINT,INTS,AMVP,IMES,FMES,FLT,MRG,IQ,IT,MC,Q,T,SOMA,TOTAL,PORC)
#print out, linha
#out.close