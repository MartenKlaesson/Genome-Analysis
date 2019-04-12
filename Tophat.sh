#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J Tophat_output_Marten_04_12
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com
# Load modules
module load bioinfo-tools
module load samtools
module load bowtie2/2.3.4.3
module load tophat

# Your commands

for file in /home/martene/Genome_Analysis/Raw_Data/transcriptome/trimmed/*.1.fastq.gz
do
  file2="$(sed 's/\.1/.2/' <<<'$file')"
  tophat -p 4 /home/martene/Genome_Analysis/Analysis/Bowtie2_Tophat/genome_index_base $file $file2
done
