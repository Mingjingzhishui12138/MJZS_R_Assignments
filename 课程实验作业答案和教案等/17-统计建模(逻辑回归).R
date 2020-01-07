load("Datasets/plasma.RData")
layout(matrix(1:2, ncol = 2))
cdplot(ESR ~ fibrinogen, data = plasma)
cdplot(ESR ~ globulin, data = plasma)

plasma_fit <- glm(ESR ~ fibrinogen + globulin, data = plasma, family = binomial())
summary(plasma_fit)

repairdata = read.csv("Datasets/repair.csv")
table(repairdata$foreign,repairdata$repair)
fit_repairdata=glm(foreign~repair,data=repairdata,family=binomial)
summary(fit_repairdata)







