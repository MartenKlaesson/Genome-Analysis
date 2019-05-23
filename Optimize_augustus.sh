#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J Maker_secondstep_Marten_Klaesson
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com

# Load modules
module load bioinfo-tools
module load maker


# Commands

cd /home/martene/Genome_Analysis/Analysis/maker/Pilon_output.maker.output 
optimize_augustus.pl --species=arabidopsis augustus.gbk.train --AUGUSTUS_CONFIG_PATH=/home/martene/Genome_Analysis/Analysis/maker/NCBI_assembly.maker.output/config
