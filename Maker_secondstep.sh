#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J Maker_secondstep_Marten_Klaesson
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com

# Load modules
module load bioinfo-tools
module load maker


# Commands

cd /home/martene/Genome_Analysis/Analysis/maker/
maker
