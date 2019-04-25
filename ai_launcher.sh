#!/bin/bash

cd $(dirname $0)
python -m http.server 8888 &
python pix2pix-double-saver.py --mode spout --input_dir datasets/edge_to_seg --output_dir outputs/edge_to_seg --checkpoint_one outputs/edge_to_seg  --checkpoint_two outputs/cosmos_seg --max_epochs 700 --save_freq 500 --batch_size 4 --which_direction BtoA --osc_host 192.168.77.172 --file_server_url http://192.168.77.171:8888/ --wait_millis 2000
