#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J ht_seq_count_selma_edenstahl
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

for file in /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/*
do
	output=$(basename $file)
	htseq-count -f bam -r pos -t CDS  $file /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > htseq_count_text$output.txt -o /home/martene/Genome_Analysis/Analysis/htseq/htseq_2019-05-24_$output.bam
done
