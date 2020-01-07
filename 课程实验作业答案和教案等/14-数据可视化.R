### Encoding: UTF-8

###################################################
### code chunk number 1: setup
###################################################
# source("xiao.R")


###################################################
### code chunk number 2: DAGD-USmelanoma-histbox
###################################################
#import Melanoma Datasets
USmelanoma<-read.csv("R/Datasets/USmelanoma.csv")
xr <- range(USmelanoma$mortality) * c(0.9, 1.1)
xr


###################################################
### code chunk number 3: DAGD-USmelanoma-histbox
###################################################
layout(matrix(1:2, nrow = 2))
par(mar = par("mar") * c(0.8, 1, 1, 1))
boxplot(USmelanoma$mortality, ylim = xr, 
    horizontal = TRUE, xlab = "Mortality")
hist(USmelanoma$mortality, xlim = xr, xlab = "", 
    main = "", axes = FALSE, ylab = "")
axis(1)


###################################################
### code chunk number 4: DAGD-USmelanoma-boxocean
###################################################
plot(mortality ~ ocean, data = USmelanoma, 
     xlab = "Contiguity to an ocean", 
     ylab = "Mortality")


###################################################
### code chunk number 5: DAGD-USmelanoma-dens
###################################################
dyes <- with(USmelanoma, density(mortality[ocean == "yes"]))
dno <- with(USmelanoma, density(mortality[ocean == "no"]))
plot(dyes, lty = 1, xlim = xr, main = "", ylim = c(0, 0.018))
lines(dno, lty = 2)
legend("topleft", lty = 1:2, legend = c("Coastal State", 
       "Land State"), bty = "n")


###################################################
### code chunk number 6: DAGD-USmelanoma-xy
###################################################
layout(matrix(1:2, ncol = 2))
plot(mortality ~ longitude, data = USmelanoma)
plot(mortality ~ latitude, data = USmelanoma)


###################################################
### code chunk number 7: DAGD-USmelanoma-lat
###################################################
plot(mortality ~ latitude, data = USmelanoma, 
     pch = as.integer(USmelanoma$ocean))
legend("topright", legend = c("Land state", 
     "Coast state"), pch = 1:2, bty = "n")


###################################################
### code chunk number 8: DAGD-USmelanoma-south
###################################################
subset(USmelanoma, latitude < 32)


###################################################
### code chunk number 9: DAGD-CHFLS-happy
###################################################
#import Chinese Health and Family Life Survey Dataset
CHFLS<-read.csv("R/Datasets/CHFLS.csv")
barplot(xtabs(~ R_happy, data = CHFLS))


###################################################
### code chunk number 10: DAGD-CHFLS-health_happy_xtabs
###################################################
xtabs(~ R_happy + R_health, data = CHFLS)


###################################################
### code chunk number 11: DAGD-CHFLS-health_happy_xtabs2
###################################################
hh <- xtabs(~ R_health + R_happy, data = CHFLS)


###################################################
### code chunk number 12: DAGD-CHFLS-health_happy
###################################################
plot(R_happy ~ R_health, data = CHFLS)


###################################################
### code chunk number 13: DAGD-CHFLS-happy_income
###################################################
layout(matrix(1:2, ncol = 2))
plot(R_happy ~ log(R_income + 1), data = CHFLS)
cdplot(R_happy ~ log(R_income + 1), data = CHFLS)


###################################################
### code chunk number 14: DAGD-CHFLS-RAincome3 (eval = FALSE)
###################################################
## xyplot(jitter(log(A_income + 0.5)) ~ 
##     jitter(log(R_income + 0.5)) | R_edu, data = CHFLS)


###################################################
### code chunk number 15: DAGD-CHFLS-RAincome3
###################################################
library("lattice")
lattice.options(default.theme =
        function()
            standard.theme("pdf", color = FALSE))
print(xyplot(jitter(log(A_income + 0.5)) ~ jitter(log(R_income + 0.5)) | R_edu, data = CHFLS))




