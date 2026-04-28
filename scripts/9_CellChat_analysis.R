library(CellChat)
set.seed(123)

seurat <- readRDS("results/seurat.rds")

cellchat <- createCellChat(object = seurat)

cellchat <- identifyOverExpressedGenes(cellchat)
cellchat <- identifyOverExpressedInteractions(cellchat)

cellchat <- computeCommunProb(cellchat)

saveRDS(cellchat, "results/cellchat.rds")
