library(Seurat)
set.seed(123)

data <- Read10X("data/scRNA/")

seurat <- CreateSeuratObject(data)

seurat <- subset(seurat, subset = nFeature_RNA > 200 & nFeature_RNA < 2500 & percent.mt < 5)

seurat <- NormalizeData(seurat)

seurat <- FindVariableFeatures(seurat, selection.method = "vst", nfeatures = 2000)

seurat <- ScaleData(seurat)

seurat <- RunPCA(seurat, npcs=30)

seurat <- FindNeighbors(seurat, dims=1:30)

seurat <- FindClusters(seurat, resolution=0.5)

seurat <- RunUMAP(seurat, dims=1:30)

saveRDS(seurat, "results/seurat.rds")
