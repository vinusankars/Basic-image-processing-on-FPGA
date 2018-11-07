
import cv2 as cv

def code(x):
    y = bin(x)[2:]
    y = (8-len(y))*'0'+y
    return y

location = input('Enter location of image: ')
choice = int(input('Enter 1 for bg image, 0 for wm image'))

if(choice == 0):
    size = 20
else: 
    size = 50

img = cv.imread(location)
text = 'MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR=\n'

for i in range(size):
    for j in range(size):
        if (i==size-1 and j==size-1):
            text +=  code(img[i][j][0])+ code(img[i][j][1])+ code(img[i][j][2])+  ';'
        else:
            text +=  code(img[i][j][0])+ code(img[i][j][1])+ code(img[i][j][2])+  ',\n'


f = open('input.coe', 'w')
f.write(text)
f.close()
