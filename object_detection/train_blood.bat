set PYTHONPATH=%PYTHONPATH%;C:\Users\jorge\projects\training\models\research;C:\Users\jorge\projects\training\models\research\slim

python object_detection/train.py --logtostderr --pipeline_config_path=./object_detection/models/blood/faster_rcnn_inception_v2_coco.config --train_dir=./object_detection/models/blood/train