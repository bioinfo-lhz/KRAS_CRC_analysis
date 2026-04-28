library(DESeq2)
set.seed(123)

counts <- read.csv("data/counts.csv", row.names=1)
meta <- read.csv("data/meta.csv")

dds <- DESeqDataSetFromMatrix(countData=counts,
                              colData=meta,
                              design=~group)

dds <- DESeq(dds)

res <- results(dds, alpha=0.05)

res <- res[which(res$padj < 0.05 & abs(res$log2FoldChange)>1),]

write.csv(res, "results/DEG.csv")
