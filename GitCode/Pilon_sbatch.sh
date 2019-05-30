#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:30:00
#SBATCH -J Pilon_output_Marten_04_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com
# Load modules
module load bioinfo-tools
module load Pilon/1.22
# Your commands
 

pilon --genome /home/martene/Genome_Analysis/Analysis/Genome_Assembly/Genome_Assembly.contigs.fasta --bam /home/martene/Genome_Analysis/Analysis/Scratch/BWA.sorted.bam --diploid --threads 4 --output /home/martene/Genome_Analysis/Analysis/Pilon_run/Pilon_output 
