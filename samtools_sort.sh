#!/bin/bash -l

for file in /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/outputfiles/*
do
	output=$(basename $file)
	samtools sort $file/accepted_hits.bam -o /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_$output.bam
done
