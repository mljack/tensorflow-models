while :
do

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_10k.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f1_eval_training_set
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f2_eval_training_dev_set
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f3_eval_test_set

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set_10k_noresize.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f1_eval_training_set_noresize
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set_noresize.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f2_eval_training_dev_set_noresize
#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f3_eval_test_set_resize

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize_full.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f3_eval_test_set_resize_difficulties

#python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_600_1987_full.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_d --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/d3_eval_test_set_600_1987_difficulties_147k --checkpoint 147610 --export_all_results 1 --export_suffix 10k_d_147k

python3 eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set_resize.config --checkpoint_dir=gta/faster_rcnn_resnet101/003_10k_exp/train_f --eval_dir=gta/faster_rcnn_resnet101/003_10k_exp/f3_eval_test_set_resize_difficulties --want_kitti_summary 1

sleep 10
done
