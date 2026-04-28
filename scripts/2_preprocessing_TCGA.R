set.seed(123)

data <- readRDS("data/tcga_raw.rds")

# >>> extract KRAS expression
kras_exp <- data["KRAS", ]

# >>> define groups (median or surv_cutpoint)
group <- ifelse(kras_exp > median(kras_exp), "high","low")

saveRDS(group, "data/group.rds")
