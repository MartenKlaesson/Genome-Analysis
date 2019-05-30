
#
library(DESeq2)
rm(list=ls())
graphics.off()
setwd("C:/Users/Marten1/Documents/htseqcount")


rna_leaf_92_counts <- read.delim("C:/Users/Marten1/Documents/htseqcount/92.txt", header=FALSE)
#View(rna_leaf_92_counts)

rna_root_93_counts <- read.delim("C:/Users/Marten1/Documents/htseqcount/93.txt", header=FALSE)
#View(rna_root_93_counts)

rna_stem_96_counts <- read.delim("C:/Users/Marten1/Documents/htseqcount/96.txt", header=FALSE)
#View(rna_stem_96_counts)

rna_aril_97_counts <- read.delim("C:/Users/Marten1/Documents/htseqcount/97.txt", header=FALSE)
#View(rna_aril_97_counts)





rna_counter<-merge(rna_leaf_92_counts,rna_root_93_counts,by="V1")
rna_counter<-merge(rna_counter,rna_stem_96_counts,by="V1")
rna_counter<-merge(rna_counter,rna_aril_97_counts,by="V1")
names(rna_counter) <- c("V1","leaf","root","stem","aril")
rna_counter_exv1 <- rna_counter[,-1]
rownames(rna_counter_exv1) <- rna_counter[,1]
rna_counter_exv1<-rna_counter_exv1[-seq(1:5),]

factor<-c("nonfruit","nonfruit","nonfruit","fruit")
metadata <- data.frame(row.names=colnames(rna_counter_exv1), factor)

Input_deseq <- DESeqDataSetFromMatrix(countData=rna_counter_exv1, colData=metadata, design= ~ factor)
 
deseq_data <- DESeq(Input_deseq)

#PCA
rld<-rlog(deseq_data)
colData(deseq_data)

plotPCA(rld,intgroup=c("factor"))






#heatmap

install.packages("gplots")
library( "RColorBrewer" )
library("genefilter")                                  
library("gplots")


topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 35 )
heatmap.2(assay(rld)[ topVarGenes, ],dendrogram = "none",margin=c(7, 20),key = FALSE, trace="none", scale = "row", col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255))

