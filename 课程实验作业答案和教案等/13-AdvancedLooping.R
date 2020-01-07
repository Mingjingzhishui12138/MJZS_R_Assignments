head(mtcars)

cars.means <- numeric(ncol(mtcars))
for(i in 1:ncol(mtcars)){ 
  cars.means[i] <- mean(mtcars[,i])
}
cars.means

apply(mtcars, 2, mean)

mins.list.lapply <- lapply(mtcars,min)
mins.list.apply <- apply(mtcars,2,min)

mins.list.lapply

mins.list.apply

class(mtcars)

is.list(mtcars)

is.matrix(mtcars)

mtcars2 <- mtcars
mtcars2$efficiency <- ifelse(mtcars$mpg > median(mtcars$mpg), "efficient", "gas-guzzler")
head(mtcars2)

apply(mtcars2, 2, mean)

lapply(mtcars2, mean)

apply(mtcars2, 2, is.numeric)

apply(mtcars2, 2, is.character)

(mins.list.vapply <- vapply(mtcars, min, numeric(1)))

class(mins.list.vapply)

minmax_l<-function(x)
{
  result=list(min=min(x),max=max(x))
  return(result)
}

vapply(mtcars,minmax_l,numeric(2))

minmax_v<-function(x)
{
  result=c(min=min(x),max=max(x))
  return(result)
}

vapply(mtcars,minmax_v,numeric(2))

unique(1:5)

unique(c(1,1,3,4,4))

vapply(mtcars,unique,numeric(2))

vapply(mtcars,unique,numeric(25))

sapply(mtcars, minmax_l)

sapply(mtcars, minmax_v)

sapply(mtcars, unique)

by(mtcars,mtcars$cyl,colMeans)

table(mtcars[, "gear"])

table(mtcars[,c("gear","cyl")])

table(mtcars[,c("cyl","gear")])

xtabs(~gear + cyl, mtcars)

xtabs(~gear, mtcars)
xtabs(~gear + carb, mtcars)
xtabs(~gear + cyl + carb, mtcars)

aggregate(hp ~ cyl + gear, data=mtcars, FUN=mean) 

aggregate(hp ~ cyl + gear, data=mtcars, FUN=median) 

aggregate(hp ~ cyl + gear, data=mtcars, FUN=min) 
aggregate(hp ~ cyl + gear, data=mtcars, FUN=max)

aggregate(hp ~ cyl + gear, data=mtcars, FUN=quantile, probs=c(0.25,0.75)) 

aggregate(cbind(hp,mpg) ~ cyl + gear, data=mtcars, FUN=mean) 

tapply(mtcars$mpg,mtcars[,c('gear','carb')],mean)

aggregate(mpg ~ gear + carb, data=mtcars, FUN=mean)
































