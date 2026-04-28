library(oncoPredict)

set.seed(123)

expr <- read.csv("data/expr.csv")

pred <- calcPhenotype(
  trainingExprData = trainingExprData,
  trainingPtype = trainingResponseData,
  testExprData = expr,
  batchCorrect = "eb",
  powerTransformPhenotype = TRUE,
  removeLowVaryingGenes = TRUE,
  minNumSamples = 40,
  printOutput = FALSE,
  removeLowVaringGenesFrom = "homogenizeData"
)

write.csv(pred, "results/drug_response.csv")

# TIDE runs via Python (TIDEpy)
