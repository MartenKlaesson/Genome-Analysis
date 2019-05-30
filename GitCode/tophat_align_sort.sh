#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J scaffold-11-top_hat_align_sort
#SBATCH --mail-type=ALL
#SBATCH --mklaesson91@gmail.com
# Load modules
module load bioinfo-tools
module load samtools
for file in /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/outputfiles/*
do
	output=$(basename $file)
	samtools sort $file/accepted_hits.bam -o /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/accepted_hits_sorted_2019-04-24_$output.bam
done
 
