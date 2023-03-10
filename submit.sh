#!/bin/bash
#SBATCH --mail-user=name.surname@unibe.ch
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="Aloha Test"
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --partition=epyc2
#SBATCH --qos=job_epyc2_debug

singularity run omnetpp.sif
