#echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
#call tmp.bat
#rem --num_clones=1
python3 -u train.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/006_kitti_exp/train_a.config --train_dir=gta/faster_rcnn_resnet101/006_kitti_exp/train_a | tee -a log_kitti.txt
