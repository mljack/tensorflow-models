:loop
python eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/004_50k_exp/train_adam.config --checkpoint_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_adam --eval_dir=gta\faster_rcnn_resnet101\004_50k_exp\7_eval_training_set_adam

rem python eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/training_dev_set.config --checkpoint_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_adam --eval_dir=gta\faster_rcnn_resnet101\004_50k_exp\8_eval_training_dev_set_adam

rem python eval.py --logtostderr --pipeline_config_path=gta/faster_rcnn_resnet101/test_set.config --checkpoint_dir=gta\faster_rcnn_resnet101\004_50k_exp\train_adam --eval_dir=gta\faster_rcnn_resnet101\004_50k_exp\9_eval_test_set_adam

sleep 100
goto loop

