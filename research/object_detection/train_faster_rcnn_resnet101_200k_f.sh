#echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
#call tmp.bat
#rem --num_clones=1
python3 -u train.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/005_200k_exp/train_f.config --train_dir=gta/faster_rcnn_resnet101/005_200k_exp/train_f | tee -a log_200k.txt
