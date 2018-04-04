#echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
#call tmp.bat
#rem --num_clones=1
python3 -u train.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/003_10k_exp/train_e.config --train_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_e | tee -a log_10k.txt
