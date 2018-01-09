echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
call tmp.bat
rem --num_clones=1
python -u train.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/004_50k_exp/train.config --train_dir=gta\faster_rcnn_resnet101\004_50k_exp\train 2>&1 | tee train_faster_rcnn_resnet101-50k_%LOG%.log