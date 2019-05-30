#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J samtools_merge_sort
#SBATCH --mail-type=ALL
#SBATCH --mklaesson91@gmail.com

# Load modules
module load bioinfo-tools
module load samtools
# Your commands
samtools merge /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/merged_transcriptome_alignment.bam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/accepted_hits_sorted_2019-04-24_tophat_out_SRR6040092_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/accepted_hits_sorted_2019-04-24_tophat_out_SRR6040093_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/accepted_hits_sorted_2019-04-24_tophat_out_SRR6040096_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/accepted_hits_sorted_2019-04-24_tophat_out_SRR6040097_scaffold_10.1.bam 

samtools sort /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/merged_transcriptome_alignment.bam -o /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/transcriptome_alignment_sorted_2019-04-24/merged_transcriptome_alignment_sorted.bam
  
