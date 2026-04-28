library(clusterProfiler)

genes <- read.csv("results/DEG.csv")

ego <- enrichGO(gene = genes$gene,
                OrgDb = org.Hs.eg.db,
                ont = "BP",   # You can choose "BP", "MF", or "CC"
                pAdjustMethod = "BH",
                pvalueCutoff = 0.05,
                qvalueCutoff = 0.05)

write.csv(as.data.frame(ego), "results/GO.csv")
