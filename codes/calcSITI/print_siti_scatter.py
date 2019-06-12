import pandas as pd
from StringIO import StringIO
import  matplotlib.pyplot as plt

sstr = StringIO("""YUVS	SI	TI
BasketballDrill_832x480_50.yuv	8.28554838896	40.4969134626
BasketballDrive_1920x1080_50.yuv	5.53605638081235	39.3533488924529
BasketballPass	9.05520407629	36.3455636908
BlowingBubbles	8.56374544757	61.7980582219
BQMall_832x480_60.yuv	11.1710822008	54.9636243346
BQSquare	20.0019046057	91.7932459389
BQTerrace_1920x1080_60.yuv	11.3562721827747	81.6378013137765
Cactus_1920x1080_50.yuv	6.94960086193039	70.9861379517921
Kimono_1920x1080_24.yuv	2.78899414696	47.3708771293
ParkJoy_3840x2160_50.yuv	5.42938442302922	59.5845068123667
ParkScene_1920x1080_24.yuv	5.37725782900353	54.242118571351
PartyScene_832x480_50.yuv	12.862781892	57.9137289423
PeopleOnStreet_2560x1600_30_crop.yuv	8.60799421455392	66.8918880517157
RaceHorses	9.59908959484	52.1056618805
Traffic_2560x1600_30_crop.yuv	6.64494985360274	57.6850642312902
FourPeople_1280x720_60.yuv	7.46208191589921	61.6236052476706
Johnny	7.06431549011	57.8705451849
Tennis	4.45836315139	59.2368128785
SlideEditing	26.0431579821	87.0229854694
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