import os, sys
import PIL, cv2

easy = [0,255,0]
moderate = [255,0,0]
hard = [0,0,255]
tbd = [255,255,0]

difficulty = easy
d = "easy"

label_base = "label_2"
img_base = "image_2"
img_out_base = "image_2_"+d
label_out_base = "label_2_"+d

if not os.path.isdir(img_out_base):
	os.mkdir(img_out_base)
if not os.path.isdir(label_out_base):
	os.mkdir(label_out_base)

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

def IsInBox(p, box):
	return p[0]>=box[0][0] and p[0]<=box[1][0] and p[1]>=box[0][1] and p[1]<=box[1][1]

paths = sorted(os.listdir(label_base))
for name in paths:
	path = os.path.join(label_base, name)
	with open(path, "r") as f:
		lines = f.readlines()
	print("\n")
	print(lines)
	img = cv2.imread(os.path.join(img_base, name[:-4]+".png"))
	doncare = []
	objs = []
	with open(os.path.join(label_out_base, name), "w") as f:
		for line in lines:
			tokens = line.replace("\n", "").split(" ")
			print(tokens)
			truncated = float(tokens[1])
			occluded = int(tokens[2])
			p1 = (float(tokens[4]),float(tokens[5]))
			p2 = (float(tokens[6]),float(tokens[7]))
			height = p2[1]-p1[1]
			print(truncated, occluded, height)
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
			if occluded == 0 and height >= 40 and truncated <= 0.15:
				c = easy
			elif occluded <= 1 and height >= 25 and truncated <= 0.3:
				c = moderate
			elif occluded <= 2 and height >= 25 and truncated <= 0.5:
				c = hard
			else:
				c = tbd # not yet in a difficulty category
			print(c)
			if c == difficulty and tokens[0] in ('Car', 'Van', 'Truck', 'Tram', 'Misc', "Pedestrian"):
				f.write(line)

			if tokens[0] in ("DontCare",) or c == [255,255,0] or c != difficulty:
				doncare.append([(int(p1[0]),int(p1[1])),(int(p2[0]),int(p2[1]))])
			else:
				objs.append([(int(p1[0]),int(p1[1])),(int(p2[0]),int(p2[1]))])
				#cv2.rectangle(img,(int(p1[0]),int(p1[1])),(int(p2[0]),int(p2[1])),c,w)


	for dont in doncare:
		#print(dont)
		for y in range(dont[0][1],dont[1][1]+1):
			for x in range(dont[0][0],dont[1][0]+1):
				inOtherBox = False
				for obj in objs:
					if not inOtherBox and IsInBox((x,y), obj):
						inOtherBox = True
				if not inOtherBox:
					img[y,x] = [0,0,0]
	cv2.imwrite(os.path.join(img_out_base, name[:-4]+".png"), img)
	#cv2.imshow("test", img)
	#if cv2.waitKey() == 27:
	#	break
