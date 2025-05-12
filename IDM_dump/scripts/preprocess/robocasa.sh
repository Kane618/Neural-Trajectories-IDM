python IDM_dump/split_video_instruction.py \
    --source_dir "" \
    --output_dir "IDM_dump/data/robocasa"

python IDM_dump/preprocess_video.py \
    --src_dir "IDM_dump/data/robocasa" \
    --dst_dir "IDM_dump/data/robocasa_split" \
    --dataset robocasa \
    --original_width 512 \
    --original_height 512



python IDM_dump/raw_to_lerobot.py \
    --input_dir "IDM_dump/data/robocasa_split" \
    --output_dir "IDM_dump/data/robocasa_panda_omron.data" \
    --wan 


python IDM_dump/dump_idm_actions.py \
    --checkpoint "IDM_dump/checkpoints/neural_trajectories_oss/groot_s_idm_robocasa/checkpoint-60000" \
    --dataset "IDM_dump/data/robocasa_panda_omron.data" \
    --output_dir "IDM_dump/data/robocasa_panda_omron.data_idm" \
    --num_gpus 8 \
    --video_indices "0 8" \



