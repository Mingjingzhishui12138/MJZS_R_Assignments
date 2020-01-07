sbp = read.csv("Datasets/sbp.csv")
sbp$drug = as.factor(sbp$drug)
fit1 = aov(systolic~drug,data=sbp)
summary(fit1)
1-pf(9.086,3,54)

sbp$disease = as.factor(sbp$disease)
fit2 = aov(systolic~disease,data=sbp)
summary(fit2)
1-pf(1.518,2,55)


#two-way anova
#fit3 = aov(systolic~drug+disease,data=sbp)
#1-pf(9.383,3,52)
#1-pf(1.881,2,52)


#helmet <- as.table(rbind(c(17, 218), c(130, 428)))
#helmet <- rbind(c(17, 218), c(130, 428))
helmet <- matrix(c(17, 218, 130, 428),nrow=2, byrow = TRUE)
chisq.test(helmet,correct=FALSE)
1-pchisq(28.255,1)
