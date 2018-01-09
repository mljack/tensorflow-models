rem python dataset_tools/create_kitti_tf_record.py --label_map_path=gta/gta_label_map.pbtxt --data_dir=gta --year=VOC2012 --set=val --output_path=gta_200k_val.record
rem python dataset_tools/create_gta_tf_record.py --label_map_path=gta/gta_label_map.pbtxt --data_dir=gta --year=VOC2012 --set=val --output_path=gta_200k_val.record
rem python dataset_tools/create_gta_tf_record.py --label_map_path=gta/gta_label_map.pbtxt --data_dir=gta --year=VOC2012 --set=trainval --output_path=gta_200k_trainval.record
rem python dataset_tools/create_gta_tf_record.py --label_map_path=gta/gta_label_map.pbtxt --data_dir=gta --year=VOC2012 --set=train --output_path=gta_50k_train.record
python dataset_tools/create_gta_tf_record.py --label_map_path=gta/gta_label_map.pbtxt --data_dir=gta --year=VOC2012 --set=train --output_path=gta_50k_training_test_set.record

rem python object_detection/train.py --logtostderr --pipeline_config_path=${PATH_TO_YOUR_PIPELINE_CONFIG} --train_dir=${PATH_TO_TRAIN_DIR}
