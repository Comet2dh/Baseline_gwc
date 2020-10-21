#!/usr/bin/env bash
set -x
DATAPATH="/media/data1/dh/DataSet/SceneFlowData/"
CUDA_VISIBLE_DEVICES=5,6
python main.py --dataset sceneflow \
    --datapath $DATAPATH --trainlist ./filenames/sceneflow_train.txt --testlist ./filenames/sceneflow_test.txt \
    --epochs 16 --batch_size 2 --lrepochs "10,12,14,16:2" \
    --model gwcnet-init --logdir ./checkpoints/test