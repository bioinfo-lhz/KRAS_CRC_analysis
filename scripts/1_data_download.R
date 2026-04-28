
library(TCGAbiolinks)

query <- GDCquery(
  project = c("TCGA-COAD","TCGA-READ"),
  data.category = "Transcriptome Profiling",
  data.type = "Gene Expression Quantification",
  workflow.type = "STAR - Counts"
)

GDCdownload(query)
data <- GDCprepare(query)

saveRDS(data, "data/tcga_raw.rds")
