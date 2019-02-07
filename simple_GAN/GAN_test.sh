#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --job-name=GAN_test
#SBATCH --mail-type=END
#SBATCH --mail-user=yy2562@nyu.edu
#SBATCH --output=slurm_%j.out
#SBATCH --gres=gpu:1

module purge
module load python3/intel/3.6.3
module load pytorch/python3.6/0.3.0_4
python simple_Gan.py
