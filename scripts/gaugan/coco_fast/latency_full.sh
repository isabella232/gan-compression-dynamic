#!/usr/bin/env bash
python latency.py --dataroot database/coco_stuff \
  --model spade --dataset_mode coco \
  --results_dir results-pretrained/gaugan/coco/full \
  --ngf 64 --netG spade \
  --restore_G_path logs/gaugan/coco/full/checkpoints/latest_net_G.pth \
  --real_stat_path real_stat/coco_A.npz --table_path datasets/table.txt \
  --need_profile --norm_G spectralspadesyncbatch3x3 \
  --num_upsampling_layers normal