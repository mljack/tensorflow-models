:loop
call eval_faster_rcnn_resnet101_10k_4_fixed_training_set.bat
call eval_faster_rcnn_resnet101_10k_6_fixed_test_set.bat
call eval_faster_rcnn_resnet101_10k_5_fixed_training_dev_set.bat
goto loop
