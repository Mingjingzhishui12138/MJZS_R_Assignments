plot(mpg ~ wt, data = mtcars,xlab="weight")
summary(lm(mpg~wt, data=mtcars))

boxplot(mpg ~ as.factor(cyl), data = mtcars)
summary(lm(mpg~as.factor(cyl), data = mtcars))

boxplot(hp ~ as.factor(am), data = mtcars)
summary(lm(hp~as.factor(am), data = mtcars))


summary(lm(mpg~wt+as.factor(cyl), data=mtcars))



