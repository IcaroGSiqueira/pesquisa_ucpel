from bjontegaard import *
import os

def parseOutput(file_path):
    with open(file_path, "r" ) as fin:
        lines = fin.readlines()
        summary_idx = [lines.index(i) for i in lines if 'SUMMARY' in i][0]
        result_idx = summary_idx + 2
        line = lines[result_idx]
        num_f, dummy1, br, psnr_y, psnr_u, psnr_v, psnr_yuv = line.strip('\n').split()
        print(br, psnr_y)
        return list(map(float, [br, psnr_y, psnr_u, psnr_v, psnr_yuv]))

base_dir = '/home/icaro/pesquisa_ucpel/HM-16.9-approx'
output_dir = '%s/OUTPUT' % (base_dir)
input_yuv_dir = '/home/icaro/origCfP'
out=open("%s/bdbr.csv"%base_dir,"w")

os.system('mkdir -p '+ output_dir)

bin_ref = '%s/bin/TAppEncoderStatic' % (base_dir)
bin_test = '%s/bin/TAppEncoderStatic' % (base_dir)

param_ref = '-c %s/cfg/encoder_randomaccess_main.cfg --fme_filter_ntaps=8' % (base_dir)
param_test = '-c %s/cfg/encoder_randomaccess_main.cfg ' % (base_dir)

num_frames = 50

qps = [22, 27, 32, 37]



seqs = [['BasketballPass_416x240_50.yuv', 416, 240, 50]]
ref_results = []
test_results = {}

for seq in seqs:
    seq_path, seq_w, seq_h, seq_fps = seq
    seq_name = seq_path.split("_")[0]
    seq_params = '--InputFile=%s/%s --SourceWidth=%d --SourceHeight=%d --FrameRate=%d' % (input_yuv_dir, seq_path, seq_w, seq_h, seq_fps)

    for qp in qps:
        text_output_ref = '%s/%s_qp%d_%dfr_RA_ref.txt' % (output_dir, seq_name,qp, num_frames )
        try:
            ref_results.append(parseOutput(text_output_ref))
        except:
            cmd_line = '%s %s %s -f %d -q %d > %s' % (bin_ref, param_ref, seq_params, num_frames, qp, text_output_ref )
            os.system(cmd_line)
            ref_results.append(parseOutput(text_output_ref))

        for n_taps in [6,4,2]:
            text_output_test = '%s/%s_qp%d_%dfr_RA_%dtaps.txt' % (output_dir, seq_name,qp, num_frames, n_taps )

            try:
                test_results[n_taps].append(parseOutput(text_output_test))
            except:
                param_test = param_test + ' --fme_filter_ntaps=%d' % (n_taps)
                cmd_line = '%s %s %s -f %d -q %d > %s' % (bin_test, param_test, seq_params, num_frames, qp, text_output_test )

                os.system(cmd_line)
                if n_taps  not in test_results.keys():
                    test_results[n_taps] = []

                test_results[n_taps].append(parseOutput(text_output_test))
    print(seq_name)
    for n_taps in [6,4,2]:
        print(bdbr(ref_results, test_results[n_taps]))
