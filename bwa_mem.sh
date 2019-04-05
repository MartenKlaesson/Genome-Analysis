#!/bin/sh

#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J BWA_alignment_Marten
#SBATCH --mail-type=ALL
#SBATCH --mail-user mklaesson91@gmail.com

module load bioinfo-tools
module load bwa/0.7.17

bwa mem /home/martene/Genome_Analysis/Analysis/Genome_Assembly/Genome_Assembly.contigs.fasta /home/martene/Genome_Analysis/Raw_Data/Illumina_data/Illumina_Scaffold_1 /home/martene/Genome_Analysis/Raw_Data/Illumina_data/Illumina_Scaffold_3 > /home/martene/Genome_Analysis/Analysis/Scratch/BWA.sam  
