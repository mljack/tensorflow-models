import os
import random
files = os.listdir("JPEGImages")
shuffle_seed = 7490742193
random.Random(shuffle_seed).shuffle(files)
#print(len(files))
for file in files[9000:]:
    print(file[:-4]+" "+"1")