python dataset_tools/create_gta_tf_record.py --label_map_path=data/gta.pbtxt --data_dir=gta-10k --year=VOC2012 --set=train --output_path=gta_10k_train.record
python dataset_tools/create_gta_tf_record.py --label_map_path=data/gta.pbtxt --data_dir=gta-10k --year=VOC2012 --set=trainval --output_path=gta_10k_trainval.record
python dataset_tools/create_gta_tf_record.py --label_map_path=data/gta.pbtxt --data_dir=gta-10k --year=VOC2012 --set=val --output_path=gta_10k_val.record

rem python object_detection/train.py --logtostderr --pipeline_config_path=${PATH_TO_YOUR_PIPELINE_CONFIG} --train_dir=${PATH_TO_TRAIN_DIR}
