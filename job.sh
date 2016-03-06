#!/bin/bash
#SBATCH -J r_job
#SBATCH -o output.txt
#SBATCH -e errors.txt
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#
module load r-env
srun R --no-save < main.R
srun R --no-save < preprocessing.R


