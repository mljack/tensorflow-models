:loop
python eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_set.config --checkpoint_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_1e-4 --eval_dir=gta\faster_rcnn_resnet101\004_50k_exp\a_eval_training_set_1e-4

python eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_1e-4 --eval_dir=gta\faster_rcnn_resnet101\004_50k_exp\b_eval_training_dev_set_1e-4

python eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_1e-4 --eval_dir=gta\faster_rcnn_resnet101\004_50k_exp\c_eval_test_set_1e-4

sleep 100
goto loop

