#!/bin/bash
#
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
##SBATCH --mem-per-cpu=1GB
#SBATCH --job-name="plug"
##SBATCH --partition=secondary
##SBATCH --partition=eng-research-gpu
#SBATCH --partition=IllinoisComputes-GPU
#SBATCH --account=jiaxuan-ic
#SBATCH --gres=gpu:A100:1
#SBATCH --ntasks-per-node=1
#SBATCH --output=logs/%j.o
#SBATCH --error=logs/%j.e
#SBATCH --mail-user=729309290@qq.com
#SBATCH --mail-type=BEGIN,END,ALL
#End of embedded SBATCH options
#
# ln -s /scratch/users/guanyul/my.conda.dir .conda
# module load anaconda/2023-Mar/3
# conda create -n my.anaconda python
# source activate torch_bmt
# conda install --yes --file requirements.txt
# pip install --no-index --upgrade pip
# pip install --no-index -r requirements.txt
# pip install bmtrain
echo "hello from S$SLURM JOB ID"
# nvidia-smi
# bash run_script/Downstream/plugd_test.sh ASQA None
python run.py --config configs/asqa_llama2_shot2_ndoc5_gtr_default.yaml