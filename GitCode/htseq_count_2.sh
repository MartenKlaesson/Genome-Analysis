#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 00:30:00
#SBATCH -J HTSEQ_COUNT
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com

# Load modules

module load bioinfo-tools
module load htseq/0.9.1


#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/92.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040092_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/92_text.txt

htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/93.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040093_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/93_text.txt

#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/94.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040094_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/94_text.txt
#
#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/95.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040095_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/95_text.txt
#
#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/96.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040096_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/96_text.txt
#
#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/97.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040097_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/97_text.txt
#
#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/66.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040066_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/66_text.txt
#
#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/67.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040067_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/67_text.txt
#
#htseq-count --format=bam --order=pos --stranded=yes --type=cds --idattr=gene_id --samout=/home/martene/Genome_Analysis/Analysis/htseq/69.sam /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/output_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6040069_scaffold_10.1.bam /home/martene/Genome_Analysis/Analysis/GFF_seq/ref_genome_annotation_altered.gtf > /home/martene/Genome_Analysis/Analysis/htseq/69_text.txt
#
