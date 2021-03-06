#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J tophat_transcriptome_Marten_Klaesson
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com

# Load modules
module load bioinfo-tools
module load samtools 
module load bowtie2
module load tophat


# Commands
for file in /home/martene/Genome_Analysis/Raw_Data/transcriptome/trimmed/*_10.1.fastq.gz
do 
	file2="$(sed 's/_10\.1/_10.2/' <<<$file)"
	output=$(basename $file)
	tophat -o /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/outputfiles/tophat_out_${output%.fastq.gz} \
	-p 4 /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/genome_index_base $file $file2
done
 
