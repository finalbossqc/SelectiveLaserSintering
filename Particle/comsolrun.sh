#!/bin/bash
#SBATCH --job-name=comsol 
#SBATCH --mem=32G
#SBATCH --partition=general
#SBATCH --time=6:00:00
#SBATCH --output=slurm.out
#SBATCH --nodes=1
#SBATCH --cpus-per-task=20

module load comsol/6.1

comsol batch -np 10 -inputfile $1 -study $2
