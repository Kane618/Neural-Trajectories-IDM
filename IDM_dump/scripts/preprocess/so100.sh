python IDM_dump/split_video_instruction.py \
    --source_dir "" \
    --output_dir "IDM_dump/data/so100_data"


python IDM_dump/preprocess_video.py \
    --src_dir "IDM_dump/data/so100_data" \
    --dst_dir "IDM_dump/data/so100_data_split" \
    --dataset so100 \
    --original_width 640 \
    --original_height 480



python IDM_dump/raw_to_lerobot.py \
    --input_dir "IDM_dump/data/so100_data_split" \
    --output_dir "IDM_dump/data/so100.data" \
    --wan 


python IDM_dump/dump_idm_actions.py \
    --checkpoint "IDM_dump/checkpoints/neural_trajectories_oss/groot_s_idm_so100/checkpoint-30000" \
    --dataset "IDM_dump/data/so100.data" \
    --output_dir "IDM_dump/data/so100.data_idm" \
    --num_gpus 8 \
    --video_indices "0 8" \



