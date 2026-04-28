library(glmnet)
library(survival)

set.seed(123)

x <- as.matrix(read.csv("data/expr.csv"))
y <- Surv(time, status)

cv <- cv.glmnet(x, y, family = "cox", alpha = 1, nfold = 10)

model <- glmnet(x, y, family="cox", lambda=cv$lambda.min)

saveRDS(model, "results/lasso_model.rds")
