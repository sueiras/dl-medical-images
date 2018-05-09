# Instructions

To run this use case:

- Install the object detection API of Tensorflow.
    - Follow the instructions [here](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md)
    - Clone the repo
        ```
        git clone https://github.com/tensorflow/models.git
        ```
    - Download the pretrained modelfaster_rcnn_resnet101_coco 
        ```
        wget http://storage.googleapis.com/download.tensorflow.org/models/object_detection/faster_rcnn_inception_v2_coco_2018_01_28.tar.gz
        tar -xvf faster_rcnn_inception_v2_coco_2018_01_28.tar.gz
        ```
    
    
- Create in the object_detection dir the next structure and copy the files
```
<reseach>
    train_blood.sh
    eval_blood.sh
    export_model_blood.sh
    <object_detection>
        <data>
            blood_label_map.pbtxt
            <blood>
        <models>
            <blood>
                faster_rcnn_inception_v2_coco.config
                <train>
                <eval>
```

- Convert the database to TFRecords whit the notebook Convert_annotated_images_into_TFRecords.ipynb


- Execute the train_blood.sh to train the model.
- Simultaneously, in other terminal, execute eval_blood.sh to start the evaluation proccess. 
- In another terminal start the tensorboard over the models dir to follow the training and evaluation processes
