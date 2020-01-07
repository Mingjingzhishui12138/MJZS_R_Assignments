1:5 + 6:10
c(1, 3, 6, 10, 15) + c(0, 1, 3, 6, 10)

c(2, 3, 5, 7, 11, 13) - 2 	# 减法

-2:2 * -2:2 		# 乘法

2 ^ 3 		# 求幂，^ 或**都可以，但用^ 更加普遍
2 ** 3

1:10 / 3 # 浮点数除法

1:10 %/% 3   # 整数除法

1:10 %% 3  # 求余数

1:5 + 1

paste("row", 1:5, sep = "_")

1:5 + 1:5

paste(c("Ross", "Robert"), c("Ihaka", "Gentleman"))

1:5 + 1:15

1:5 + 1:7

rep(1:5, 3)
rep(1:5, each = 3)
rep(1:5, times = 1:5)
rep(1:5, length.out = 7)



hp.sum <- 0
hp.n <- nrow(mtcars)
for (i in 1:length(mtcars$hp)) {
  hp.sum <- hp.sum + mtcars$hp[i]
}
hp.mean <- hp.sum/hp.n
mtcars$hp.cent <- NA
for (i in 1:length(mtcars$hp)) {
  mtcars$hp.cent[i] <- mtcars$hp[i] - hp.mean
}


mtcars$hp.cent2 <- mtcars$hp - mean(mtcars$hp)
head(mtcars[c("hp", "hp.cent", "hp.cent2")])



distance <- cars$dist
denominator <- 2 * distance
denominator
numerator <- -(cars$speed^2)
numerator

cars$numerator <- numerator
cars$denominator <- denominator

cars$acceleration <- cars$numerator/cars$denominator

cars$acceleration <- -(cars$speed^2)/(2 * cars$dist)

cars$numerator <- NULL
cars$denominator <- NULL


