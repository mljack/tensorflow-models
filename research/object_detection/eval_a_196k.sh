while :
do

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_200k.config --checkpoint_dir=gta/faster_rcnn_resnet101/005_200k_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/005_200k_exp/a1_eval_training_set
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/005_200k_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/005_200k_exp/a2_eval_training_dev_set
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/005_200k_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/005_200k_exp/a3_eval_test_set

sleep 5
done
