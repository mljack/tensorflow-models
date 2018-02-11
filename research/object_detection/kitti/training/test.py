import os, sys
import PIL, cv2

label_base = "label_2"
img_base = "image_2"
'''
s = {}
print(len(os.listdir(label_base)))
for name in os.listdir(label_base):
    path = os.path.join(label_base, name)
    with open(path, "r") as f:
        lines = f.readlines()
        for line in lines:
            c = line.split(" ")[0]
            if c in s:
                s[c] = s[c] + 1
            else:
                s[c] = 1
print(s)
for c in s:
    print(c,": ", s[c])
'''

paths = sorted(os.listdir(label_base))
for name in paths:
    path = os.path.join(label_base, name)
    with open(path, "r") as f:
        lines = f.readlines()
    print("\n")
    print(lines)
    img = cv2.imread(os.path.join(img_base, name[:-4]+".png"))
    for line in lines:
        tokens = line.replace("\n", "").split(" ")
        print(tokens)
        p1 = (float(tokens[4]),float(tokens[5]))
        p2 = (float(tokens[6]),float(tokens[7]))
        print(p1)
        print(p2)
        print(tokens[0])
        w = 1
        if tokens[0] in ("Tram", "Truck", "Van", "Car"):
            c = (0,255,0)
        if tokens[0] in ("Person_sitting", "Cyclist", "Pedestrian"):
            c = (0,0,255)
        if tokens[0] in ("Misc",):
            c = (255,0,0)
        if tokens[0] in ("DontCare",):
            c = (127,127,127)
        '''
        if tokens[0] == "Tram":
            w = 5
        if tokens[0] == "Truck":
            w = 10
        if tokens[0] == "Van":
            w = 15
        '''
        cv2.rectangle(img,(int(p1[0]),int(p1[1])),(int(p2[0]),int(p2[1])),c,w)
    cv2.imshow("test", img)
    cv2.waitKey()
    #break
