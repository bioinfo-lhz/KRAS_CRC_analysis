library(survival)
library(survminer)

set.seed(123)

# >>> load clinical data
# >>> edit paths
clinical <- read.csv("data/clinical.csv")

fit <- survfit(Surv(OS_time, OS_status) ~ group, data = clinical)

ggsurvplot(fit)

cox <- coxph(Surv(OS_time, OS_status) ~ group + stage, data = clinical)
summary(cox)
