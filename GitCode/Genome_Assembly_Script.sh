#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J Genome_Assembly_Marten
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com
# Load modules
module load bioinfo-tools
module load canu/1.7
# Your commands
canu -p Genome_Assembly \
-d /home/martene/Genome_Analysis/Raw_Data/Pacbio_data/Genome_Assembly \
genomeSize=40m \
-pacbio-raw /home/martene/Genome_Analysis/Raw_Data/Pacbio_data/Scaffold_10.fq.gz
