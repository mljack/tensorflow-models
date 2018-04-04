while :
do

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_10k_mxnet.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_g --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/g1_eval_training_set_mxnet
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set_mxnet.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_g --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/g2_eval_training_dev_set_mxnet
python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_mxnet.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_g --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/g3_eval_test_set_mxnet

sleep 10
done
