# KRAS_CRC_analysis
Reproducible analysis pipeline for KRAS-associated transcriptomic analysis in colorectal cancer

Overview

This repository contains the full reproducible pipeline used for analyzing KRAS expression in colorectal cancer, including bulk RNA-seq, single-cell RNA-seq, CellChat analysis and prognostic modeling.

Datasets
TCGA-COAD & TCGA-READ (GDC)
GSE39582 (GEO)
GSE17538 (GEO)
GSE166555 (scRNA-seq)
Workflow

Scripts should be run in the following order:
  
data_download.R
preprocessing_TCGA.R
survival_analysis.R
immune_infiltration.R
DEG_analysis.R
enrichment_analysis.R
ceRNA_network.R
scRNA_processing.R
CellChat_analysis.R
prognostic_model.R
drug_response_TIDE.R
Requirements
R version: [v4.4.0]
Key packages:
  Seurat (v4.4.0)
DESeq2 (v1.44.0)
CellChat (v2.1.2)
survival
oncoPredict
Reproducibility
Random seed fixed: set.seed(123)
All parameters explicitly defined in scripts
Contact

[l.hosseinzadeh@tabrizu.ac.ir]
