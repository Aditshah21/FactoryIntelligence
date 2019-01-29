import os

path= r'C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\training_data\helmet\not_helmet'

imgFiles = os.listdir(path)
i=0
for img in imgFiles:
    old= r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\training_data\helmet\not_helmet\{}".format(img)
    name=path+'\\'+format(i)+'.jpg'
    os.rename(old, name)
    i=i+1
print('Done')