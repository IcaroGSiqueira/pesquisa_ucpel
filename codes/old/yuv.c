#include <stdio.h>
int main (){
	int w, h, fps;
	FILE *yuvi, *y, *cb, *cr, *yuvo;
	char var;

	yuvi = fopen("/home/icarogs/C/akiyo_352x288_30.yuv","rb");
	y = fopen("/home/icarogs/C/y","wb");
	cb = fopen("/home/icarogs/C/cb","wb");
	cr = fopen("/home/icarogs/C/cr","wb");
	yuvo = fopen("/home/icarogs/C/yuvo.yuv","wb");

	w = 352;
	h = 288;
	fps = 30;
	for(int j=0; j<30 ;j++){
		for(int i=0; i < w*h ;i++){
			fread(&var, 1, 1, yuvi);
			fwrite(&var,1, 1, y);
			fwrite(&var,1, 1, yuvo);
		}


		for(int i=0; i < (w*h)/4 ;i++){
			fread(&var, 1, 1, yuvi);
			fwrite(&var,1, 1, cb);
			fwrite(&var,1, 1, yuvo;
		}


		for(int i=0; i < (w*h)/4 ;i++){
			fread(&var, 1, 1, yuvi);
			fwrite(&var,1, 1, cr);
			fwrite(&var,1, 1, yuvo);
		}
	}
	fclose(yuvi);
	fclose(y);
	fclose(cb);
	fclose(cr);
	fclose(yuvo);
return 0;}
