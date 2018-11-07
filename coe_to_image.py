import cv2 as cv
import numpy as np

ch = int(input('Enter 1 for bg, 0 for wm: '))
if ch:
    size=50
else:
    size=20
a=np.array([[[0,0,0]]*size]*size, dtype='uint8')
loc = input('Enter file loc:')
f=open(loc, 'r')
c=f.read()
f.close()
b=c.split('\n')
b=b[2:]
for i in  range(size**2):
    a[i//size][i%size][0]=int(b[i][:8],2)
    a[i//size][i%size][1]=int(b[i][8:16],2)
    a[i//size][i%size][2]=int(b[i][16:24],2)

cv.imwrite('a.jpg', a)
