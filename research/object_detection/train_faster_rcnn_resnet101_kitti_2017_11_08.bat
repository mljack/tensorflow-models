echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
call tmp.bat
python -u train.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101_kitti_2017_11_08/my.config --train_dir=gta\faster_rcnn_resnet101_kitti_2017_11_08\train 2>&1 | tee train_faster_rcnn_resnet101_kitti_%LOG%.log