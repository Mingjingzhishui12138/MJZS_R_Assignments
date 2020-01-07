rt

test <- function(a, b) return(a + b)
test

test(1, 2)

hypotenuse <- function(x, y)
{
  sqrt(x ^ 2 + y ^ 2)
}

hypotenuse <- function(x, y) sqrt(x ^ 2 + y ^ 2)   # 和之前一样

hypotenuse <- function(x, y)
{
  return(sqrt(x ^ 2 + y ^ 2))
}


hypotenuse(3, 4)

hypotenuse(y = 24, x = 7)

hypotenuse <- function(x = 5, y = 12)
{
  sqrt(x ^ 2 + y ^ 2)
}
hypotenuse()  # 与使用hypotenuse(5, 12) 相等



normalize <- function(x, m = mean(x), s = sd(x))
{
  (x - m) / s
}
normalized <- normalize(c(1, 3, 6, 10, 15))
mean(normalized) 


sd(normalized)


my.var <- 1
temp.func <- function() my.var <- 5
temp.func()
my.var


my.var <- 1
temp.func2 <- function() return(5 + my.var)
temp.func2()


a <- 0
env.function <- function() {
  a <<- 1
}
env.function()
a


f <- function(x)
{
  y <- 1  
  g <- function(x)
  {
    (x + y) / 2     #y 被使用了，但它不是g 的形式参数
  }
  g(x)                                       
}
f(sqrt(5))      # 奏效了，它神奇地在f 函数的环境里找到了y


#rm(y)
f <- function(x)
{
  y <- 1  
  g(x)
}      
g <- function(x)
{
  (x + y) / 2
}
f(sqrt(5))




f <- function(x)
{
  browser()
  y <- 1  
  g <- function(x)
  {
    (x + y) / 2     #y 被使用了，但它不是g 的形式参数
  }
  g(x)                                       
}
f(sqrt(5))      # 奏效了，它神奇地在f 函数的环境里找到了y



f <- function(x)
{
  y <- 1  
  g <- function(x)
  {
    (x + y) / 2     #y 被使用了，但它不是g 的形式参数
  }
  g(x)                                       
}
debug(f)
f(sqrt(5))      # 奏效了，它神奇地在f 函数的环境里找到了y



#rm(y)
f <- function(x)
{
  y <- 1  
  g(x)
}      
g <- function(x)
{
  (x + y) / 2
}
f(sqrt(5))

traceback()


