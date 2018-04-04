#while :
#do

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_10k.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_e --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/e1_eval_training_set
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_e --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/e2_eval_training_dev_set
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_e --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/e3_eval_test_set

#sleep 600
#done
