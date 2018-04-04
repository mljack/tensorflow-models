while :
do

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_50k.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f1_eval_training_set
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f2_eval_training_dev_set
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_50k_noresize.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f1_eval_training_set_noresize
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set_noresize.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f2_eval_training_dev_set_noresize
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set_resize

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize_easy.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set_resize_easy
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize_moderate.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set_resize_moderate
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize_hard.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set_resize_hard

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize_full.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set_resize_difficulties

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize.config --checkpoint_dir=gta/faster_rcnn_resnet101/004_50k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/004_50k_exp/f3_eval_test_set_resize_difficulties --want_kitti_summary 1

sleep 10
done

