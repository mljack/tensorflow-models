while :
do

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_d --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/d3_eval_test_set

sleep 6
done
