set PYTHONPATH=%PYTHONPATH%;C:\Users\jorge\projects\training\models\research;C:\Users\jorge\projects\training\models\research\slim

python object_detection/eval.py --logtostderr --pipeline_config_path=./object_detection/models/blood/faster_rcnn_inception_v2_coco.config --checkpoint_dir=./object_detection/models/blood/train --eval_dir=./object_detection/models/blood/eval
