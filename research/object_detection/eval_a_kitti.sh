while :
do

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_kitti.config --checkpoint_dir=gta/faster_rcnn_resnet101/006_kitti_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/006_kitti_exp/a1_eval_training_set

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/006_kitti_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/006_kitti_exp/a2_eval_training_dev_set

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_kitti.config --checkpoint_dir=gta/faster_rcnn_resnet101/006_kitti_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/006_kitti_exp/a3_eval_test_set

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_kitti_noresize.config --checkpoint_dir=gta/faster_rcnn_resnet101/006_kitti_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/006_kitti_exp/a3_eval_test_set_noresize

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_kitti.config --checkpoint_dir=gta/faster_rcnn_resnet101/006_kitti_exp/train_a --eval_dir=gta/faster_rcnn_resnet101/006_kitti_exp/a3_eval_test_set_difficulties --want_kitti_summary 1

sleep 3
done
