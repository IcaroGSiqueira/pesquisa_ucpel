import pandas as pd
from StringIO import StringIO
import  matplotlib.pyplot as plt

sstr = StringIO("""YUVS	SI	TI
BasketballDrill_832x480_50.yuv	7.47616625288784	39.7026043777981
BasketballDrive_1920x1080_50.yuv	5.53605638081235	39.3533488924529
BQMall_832x480_60.yuv	9.93626332135686	55.7149021504843
BQTerrace_1920x1080_60.yuv	11.3562721827747	81.6378013137765
Cactus_1920x1080_50.yuv	6.94960086193039	70.9861379517921
Kimono1_1920x1080_24.yuv	2.77038482376412	53.9446416621216
ParkJoy_3840x2160_50.yuv	5.42938442302922	59.5845068123667
ParkScene_1920x1080_24.yuv	5.37725782900353	54.242118571351
PartyScene_832x480_50.yuv	11.5842863813814	54.0021935503118
PeopleOnStreet_2560x1600_30_crop.yuv	8.60799421455392	66.8918880517157
RaceHorsesC_832x480_30.yuv	9.01436540351353	54.0164936015372
Traffic_2560x1600_30_crop.yuv	6.64494985360274	57.6850642312902
DucksTakeOff_3840x2160_50.yuv	4.7033837032498	50.1449192787941
""")

df = pd.read_csv(sstr, sep = '\t')
df.plot(x = 'SI', y = 'TI', style = 'o')
x = df['SI']
y = df['TI']
l = df['YUVS']
#plt.text(x,y,l)

#for x,y, label in zip(df['SI'],df['TI'], df['YUVS']):
#    plt.text(label, # this is the text
#                 x,y, # this is the point to label
#                 ha='center') # horizontal alignment can be left, right or center

si_mean = df.SI.mean()
ti_mean = df.TI.mean()
plt.axvline(x=si_mean, c = 'k', linestyle = '--')
plt.axhline(y=ti_mean, c = 'k', linestyle = '--')

#for i, txt in enumerate(n):
#    ax.annotate(txt, (SI[i], TI[i]))

plt.show()