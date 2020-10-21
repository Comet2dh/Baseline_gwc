#!/usr/bin/env bash
set -x
DATAPATH="/media/data1/dh/DataSet/SceneFlowData/KITTI2015"
python main.py --dataset kitti \
    --datapath $DATAPATH --trainlist ./filenames/kitti15_train.txt --testlist ./filenames/kitti15_val.txt \
    --epochs 300 --lrepochs "200:10" \
    --model gwcnet-gc --logdir ./checkpoints/kitti15/gwcnet-gc --loadckpt ./checkpoints/sceneflow/gwcnet-gc/checkpoint_000015.ckpt \
    --test_batch_size 1