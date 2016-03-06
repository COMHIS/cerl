#!/bin/sh

# The -M csc submits the job to Taito cluster (not taito-shell)
sbatch -M csc job.sh
squeue -l
