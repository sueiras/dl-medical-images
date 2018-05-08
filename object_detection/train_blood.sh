# Execute from models/research/

export PYTHONPATH=$PYTHONPATH:.:./slim

#export CUDA_DEVICE_ORDER="PCI_BUS_ID" 
#export CUDA_VISIBLE_DEVICES=0,1

python object_detection/train.py \
    --logtostderr \
    --pipeline_config_path=./object_detection/models/blood/faster_rcnn_inception_v2_coco.config \
    --train_dir=./object_detection/models/blood/train