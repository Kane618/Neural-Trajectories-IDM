python IDM_dump/split_video_instruction.py \
    --source_dir "" \
    --output_dir "IDM_dump/data/franka_data"


python IDM_dump/preprocess_video.py \
    --src_dir "IDM_dump/data/franka_data" \
    --dst_dir "IDM_dump/data/franka_data_split" \
    --dataset franka \
    --original_width 672 \
    --original_height 376



python IDM_dump/raw_to_lerobot.py \
    --input_dir "IDM_dump/data/franka_data_split" \
    --output_dir "IDM_dump/data/franka.data" \
    --wan \


python IDM_dump/dump_idm_actions.py \
    --checkpoint "IDM_dump/checkpoints/neural_trajectories_oss/groot_s_idm_droid/checkpoint-60000" \
    --dataset "IDM_dump/data/franka.data" \
    --output_dir "IDM_dump/data/franka.data_idm" \
    --num_gpus 8 \
    --video_indices "0 8" \



