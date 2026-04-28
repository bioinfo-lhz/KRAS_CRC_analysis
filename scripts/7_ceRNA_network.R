# Simplified pipeline

# >>> user should integrate:
# miRanda + RNAhybrid results externally

# correlation filtering
data <- read.csv("data/ceRNA_input.csv")

cor_res <- cor(data$mRNA, data$miRNA, method="pearson")

# >>> apply thresholds
