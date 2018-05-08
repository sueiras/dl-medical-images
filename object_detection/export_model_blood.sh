# Execute from models/research/

export PYTHONPATH=$PYTHONPATH:.:./slim

export TRAIN_PATH=./object_detection/models/blood/train/model.ckpt-5000

python object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path ./object_detection/models/blood/faster_rcnn_inception_v2_coco.config \
    --trained_checkpoint_prefix ${TRAIN_PATH} \
    --output_directory ./object_detection/models/blood/train/output_inference_graph

