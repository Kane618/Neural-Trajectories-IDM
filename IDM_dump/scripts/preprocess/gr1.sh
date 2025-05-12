python IDM_dump/split_video_instruction.py \
    --source_dir "" \
    --output_dir "IDM_dump/data/gr1_data"


python IDM_dump/preprocess_video.py \
    --src_dir "IDM_dump/data/gr1_data" \
    --dst_dir "IDM_dump/data/gr1_data_split" \
    --dataset gr1 


python IDM_dump/raw_to_lerobot.py \
    --input_dir "IDM_dump/data/gr1_data_split" \
    --output_dir "IDM_dump/data/gr1_unified.data" \
    --wan 


python IDM_dump/dump_idm_actions.py \
    --checkpoint "IDM_dump/checkpoints/neural_trajectories_oss/groot_s_gr1_idm_real_global_stats/checkpoint-60000" \
    --dataset "IDM_dump/data/gr1_unified.data" \
    --output_dir "IDM_dump/data/gr1_unified.data_idm" \
    --num_gpus 8 \
    --video_indices "0 8" \



