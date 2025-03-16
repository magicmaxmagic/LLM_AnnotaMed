#!/bin/bash
#SBATCH --job-name=medmentions
#SBATCH --output=logs/output_%j.txt
#SBATCH --error=logs/error_%j.txt
#SBATCH --ntasks=1
#SBATCH --gres=gpu:1
#SBATCH --mem=32G
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=8

#module load python/3.8
source ~/venv/bin/activate  # Adapter selon ton env virtuel

python train_conll2003.py \
  --model_name_or_path bert-base-uncased \
  --dataset_name ibm-research/MedMentions-ZS \
  --output_dir ./output/medmentions \
  --do_train \
  --do_eval \
  --save_strategy "epoch" \
  --evaluation_strategy "epoch" \
  --save_total_limit 3 \
  --load_best_model_at_end True \
  --num_train_epochs 5
