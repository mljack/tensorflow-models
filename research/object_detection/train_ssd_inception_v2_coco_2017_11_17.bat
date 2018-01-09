echo SET+LOG=%date% %time% | sed "s/\ \W*/_/" | sed "s/\....//" | sed "s/://g" | sed "s/\///g"| sed "s/+/ /" > tmp.bat
call tmp.bat
python -u train.py --logtostderr --pipeline_config_path=gta/ssd_inception_v2_coco_2017_11_17/my.config --train_dir=gta\ssd_inception_v2_coco_2017_11_17\train 2>&1 | tee train_ssd_inception_v2_coco_2017_11_17_%LOG%.log