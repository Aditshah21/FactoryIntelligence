from PIL import Image
import os, sys
import cv2

path=r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\td2"
dirs = os.listdir(path)

for item in dirs:
    if os.path.isfile(path+item):
        im = Image.open(path+item)
        im= cv2.resize(mage = cv2.resize(im, (28, 28)))
print('done')