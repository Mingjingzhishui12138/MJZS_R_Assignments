?vector
1:10
(1:10)^2
sum(1:100)
letters
month.name
length(month.name)



x <- 1:10 
x
sum(x)
sum(x^2)
class(x)



x <- c(1, 1, 2, 3, 5, 8)
x
sum(x)
y <- c(x, 13, 21)
y



authors <- c("Ross", "Robert")
authors
length(authors)



paste("row", 1:5, sep="_")
paste("col", 1:5)
paste0("col", 1:5)
paste(authors, c("Ihaka", "Gentleman"))



authors == "Ross"
1:10 > 7
sum(1:10 > 7)



x <- 1:5
names(x) <- letters[1:5]
x
x["c"]
x[c("c", "d")]



matrix(1:9, nrow=3, ncol=3)
mat <- matrix(1:25, nrow=5)
mat