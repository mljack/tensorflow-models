while :
do

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_50k.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_d --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/d1_eval_training_set
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_d --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/d2_eval_training_dev_set
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_d --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/d3_eval_test_set

sleep 600
done
