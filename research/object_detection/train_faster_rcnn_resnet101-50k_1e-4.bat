echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
call tmp.bat
rem --num_clones=1
python -u train.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/004_50k_exp/train_1e-4.config --train_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_1e-4 2>&1 | tee _logs\train_faster_rcnn_resnet101-50k-1e-4_%LOG%.log