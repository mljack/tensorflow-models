python dataset_tools/create_kitti_tf_record.py --label_map_path=data/kitti_label_map.pbtxt --data_dir=kitti  --difficulty=easy --output_path=kitti_easy
python dataset_tools/create_kitti_tf_record.py --label_map_path=data/kitti_label_map.pbtxt --data_dir=kitti  --difficulty=hard --output_path=kitti_hard
python dataset_tools/create_kitti_tf_record.py --label_map_path=data/kitti_label_map.pbtxt --data_dir=kitti  --difficulty=easy --output_path=kitti_moderate
