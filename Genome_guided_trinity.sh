#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 7:00:00
#SBATCH -J trinity_genome_guided_transcriptome
#SBATCH --mail-type=ALL
#SBATCH --mklaesson91@gmail.com
# Load modules
module load bioinfo-tools
module load samtools
module load trinity
for file in /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/*
do
	output=$(basename $file)
  
 Trinity --genome_guided_bam $file  --output "/home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/trinity_out_${output%.bam} \
         --genome_guided_max_intron 10000 \
         --max_memory 20G --CPU 4 
done
