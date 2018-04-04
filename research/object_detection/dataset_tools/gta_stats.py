# Copyright 2017 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

r"""Convert raw PASCAL dataset to TFRecord for object_detection.

Example usage:
    python object_detection/dataset_tools/create_pascal_tf_record.py \
        --data_dir=/home/user/VOCdevkit \
        --year=VOC2012 \
        --output_path=/home/user/pascal.record
"""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import hashlib
import io
import logging
import os

from lxml import etree
import PIL.Image
import tensorflow as tf

from object_detection.utils import dataset_util
from object_detection.utils import label_map_util

import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

flags = tf.app.flags
flags.DEFINE_string('data_dir', '', 'Root directory to raw PASCAL VOC dataset.')
flags.DEFINE_string('set', 'train', 'Convert training set, validation set or '
                    'merged set.')
flags.DEFINE_string('annotations_dir', 'Annotations',
                    '(Relative) path to annotations directory.')
flags.DEFINE_string('year', 'VOC2007', 'Desired challenge year.')
flags.DEFINE_string('output_path', '', 'Path to output TFRecord')
flags.DEFINE_string('label_map_path', 'data/pascal_label_map.pbtxt',
                    'Path to label map proto')
flags.DEFINE_boolean('ignore_difficult_instances', False, 'Whether to ignore '
                     'difficult instances')
FLAGS = flags.FLAGS

SETS = ['train', 'val', 'trainval', 'test']
YEARS = ['VOC2007', 'VOC2012', 'merged']

'''
python dataset_tools/gta_stats.py --label_map_path=gta-10k/gta_label_map.pbtxt --data_dir=gta-10k --year=VOC2012 --set=train --output_path=gta_50k_training_test_set.record
'''

def main(_):
  if FLAGS.set not in SETS:
    raise ValueError('set must be in : {}'.format(SETS))
  if FLAGS.year not in YEARS:
    raise ValueError('year must be in : {}'.format(YEARS))

  data_dir = FLAGS.data_dir
  years = ['VOC2007', 'VOC2012']
  if FLAGS.year != 'merged':
    years = [FLAGS.year]

  x = []
  y = []
  w = []
  h = []
  area = []
  for year in years:
    logging.info('Reading from PASCAL %s dataset.', year)
    examples_path = os.path.join(data_dir, year, 'ImageSets', 'Main', 'car_' + FLAGS.set + '.txt')
    annotations_dir = os.path.join(data_dir, year, FLAGS.annotations_dir)
    examples_list = dataset_util.read_examples_list(examples_path)
    #examples_list = examples_list[:10000]
    print(len(examples_list))
    #exit(0)
    count = 0
    for idx, example in enumerate(examples_list):
      count += 1
      path = os.path.join(annotations_dir, example + '.xml')
      with tf.gfile.GFile(path, 'r') as fid:
        xml_str = fid.read()
      xml = etree.fromstring(xml_str)
      data = dataset_util.recursive_parse_xml_to_dict(xml)['annotation']

      width = 1914
      height = 1052
      print(count)

      for obj in data['object']:
        xmin = int(obj['bndbox']['xmin'])
        xmax = int(obj['bndbox']['xmax'])
        ymin = int(obj['bndbox']['ymin'])
        ymax = int(obj['bndbox']['ymax'])
        #print((xmin+xmax)/2, (ymin+ymax)/2, xmax-xmin, ymax-ymin, (xmax-xmin)*(ymax-ymin))
        x.append((xmin+xmax)/2)
        y.append((ymin+ymax)/2)
        w.append(xmax-xmin)
        h.append(ymax-ymin)
        area.append((xmax-xmin)*(ymax-ymin))
        

    xedges = range(0,width,10)
    yedges = range(0,height,10)
  
    H, xedges, yedges = np.histogram2d(x, y, bins=(xedges, yedges))
    H = H.T
    fig = plt.figure(figsize=(12,8))
    ax = fig.add_subplot(121, title='(x,y)')
    plt.imshow(H, interpolation='nearest', origin='low', extent=[xedges[0], xedges[-1], yedges[0], yedges[-1]])

    xedges = range(0,int(width/6),2)
    yedges = range(0,int(height/6),2)
    H, xedges, yedges = np.histogram2d(w, h, bins=(xedges, yedges))
    H = H.T
    ax = fig.add_subplot(122, title='(w,h)')
    plt.imshow(H, interpolation='nearest', origin='low', extent=[xedges[0], xedges[-1], yedges[0], yedges[-1]])

    print("mean w:",np.mean(w))
    print(" var w:",np.var(w))
    print("mean h:",np.mean(h))
    print(" var h:",np.var(h))
  
    plt.show()

if __name__ == '__main__':
  tf.app.run()
