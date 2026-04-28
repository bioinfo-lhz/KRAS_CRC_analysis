# NOTE: CIBERSORTx runs externally
# >>> user should upload data to CIBERSORTx

# xCell
library(xCell)

expr <- read.csv("data/expression.csv", row.names = 1)

xcell_res <- xCellAnalysis(expr)

write.csv(xcell_res, "results/xcell_results.csv")
