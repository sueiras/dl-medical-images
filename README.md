# Deep learning applied to medical images course

Code and exercises for the Deep learning applied to medical images course

- 00_intro_to_keras
- 01_net_from_scrach_blood
- 02_data_augmentation_blood
- 03_transfer_learning_cats_dogs
- 04_object_detection_blood


## IMPORTANT
The class will work all on cloud.
Exercises and environment instructions are provide for reference. **It is NOT necesary to download or create the environment.**


# Instructions to use the AWS environment

https://github.com/sueiras/training/blob/master/docs/aws.md

https://github.com/sueiras/training/blob/master/docs/install_tensorflow_ubuntu_aws.md


# Anaconda environment

**Only for reference. Not necesary for the course.**

1.- Install anaconda python 3.6 last version. All default options.

2.- Start the Anaconda terminal and execute...

```
# update package managers
conda update conda

# Create environment and install packages
conda create -n tf python=3.6

conda activate tf


conda install graphviz
conda install pandas scikit-learn
conda install -c anaconda jupyter 
conda install matplotlib
conda install pillow 

pip install Cython
pip install pydot-ng
pip install lxml

pip install --ignore-installed --upgrade tensorflow 
```
# Download data
[Blood classification dataset](https://s3-eu-west-1.amazonaws.com/training-dl/blood_cells_classification.zip)

[Blood detection dataset](https://s3-eu-west-1.amazonaws.com/training-dl/blood_cells_detection.zip)

[Cats & dogs dataset](https://s3-eu-west-1.amazonaws.com/training-dl/cats_dogs_sample.tar.gz)


# Install and configure the Tensorflow object detection API on windows

Detailed instructions [here](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md)

For windows users read [this](https://medium.com/@rohitrpatil/how-to-use-tensorflow-object-detection-api-on-windows-102ec8097699)


### Basic dependencies
- Activate the previous Anaconda environment. The API basic dependencies are already included.


### Protobuf Compilation

0. Whit tensorflow 1.7 and 1.8, first solve this [bug](https://github.com/tensorflow/models/issues/3705#issuecomment-375563179) 

1. Download Google Protobuf https://github.com/google/protobuf Windows v3.4.0 release “protoc-3.4.0-win32.zip” and extract

2. Move to the dir models\research.
```
cd <path_to_tensorflow_models>\models\research
```

3. Execute the protobuf compilation
```
"<path_to_protobuf>\protoc-3.5.1-win32\bin\protoc.exe" --python_out=. .\object_detection\protos\anchor_generator.proto .\object_detection\protos\argmax_matcher.proto .\object_detection\protos\bipartite_matcher.proto .\object_detection\protos\box_coder.proto .\object_detection\protos\box_predictor.proto .\object_detection\protos\eval.proto .\object_detection\protos\faster_rcnn.proto .\object_detection\protos\faster_rcnn_box_coder.proto .\object_detection\protos\grid_anchor_generator.proto .\object_detection\protos\hyperparams.proto .\object_detection\protos\image_resizer.proto .\object_detection\protos\input_reader.proto .\object_detection\protos\keypoint_box_coder.proto .\object_detection\protos\losses.proto .\object_detection\protos\matcher.proto .\object_detection\protos\mean_stddev_box_coder.proto .\object_detection\protos\model.proto .\object_detection\protos\multiscale_anchor_generator.proto .\object_detection\protos\optimizer.proto .\object_detection\protos\pipeline.proto .\object_detection\protos\post_processing.proto .\object_detection\protos\preprocessor.proto .\object_detection\protos\region_similarity_calculator.proto .\object_detection\protos\square_box_coder.proto .\object_detection\protos\ssd.proto .\object_detection\protos\ssd_anchor_generator.proto .\object_detection\protos\string_int_label_map.proto .\object_detection\protos\train.proto 
```


### Add Libraries to PYTHONPATH
```
cd <path_to_tensorflow_models>\models\research
set PYTHONPATH=%PYTHONPATH%;C:\<full_path_to_tensorflow_models>\models\research;C:\<full_path_to_tensorflow_models>\models\research\slim
```

### Test the Installation
```
cd <path_to_tensorflow_models>\models\research
python object_detection/builders/model_builder_test.py
```


### Download a pretrained model
```
cd <path_to_tensorflow_models>\models\research\object_detection\models
[faster_rcnn_inception_v2 (142Mb)](http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_v2_coco_2018_01_28.tar.gz) 
```




