#创建一个list(列表)
xl <- list(
  num = 1:10, 
  char = letters[1:15], 
  log = rep(c(TRUE,FALSE), 10)
)
xl

xl[1:2]


head(mtcars)
class(mtcars)



#之前学矩阵的时候我们已接触过R中的内置数据框mtcars
head(mtcars)



#创建一个data.frame(数据框)
dat <- data.frame(
  char = letters[1:5],
  num  = 1:5,
  log  =  c(TRUE,FALSE,TRUE,FALSE,TRUE)
)

head(dat)



class(mtcars)
mode(mtcars)



#用str()函数查看mtcars数据框的结构
str(mtcars)
#用names()函数查看mtcars数据框“元素”的名字（数据框的“元素”是“列”而不是“行”）
names(mtcars)
#以下使用colnames()函数得到同样的结果
colnames(mtcars)

#查看数据框的行名
rownames(mtcars)

#查询数据框的行数和列数
nrow(mtcars)
ncol(mtcars)
dim(mtcars)



mtcars$mpg[1]

#但是mtcars里面全部是数字型变量，以下我们看看另外一个数据框

#双击打开Datasets文件夹中的Forbes2000.RData文件,或者使用以下语句
load("Forbes2000.RData")

#或者使用read.csv()函数读入Forbes2000.csv文件
Forbes2000 = read.csv("Forbes2000.csv",as.is=c("name"))

#用str()函数查看Forbes2000数据框的结构
str(Forbes2000)

#对Forbes2000数据框中的两个变量画一个散点图
plot(log(marketvalue) ~ log(sales), data = Forbes2000, pch = ".")

## help(data.frame)

#字符型变量
class(Forbes2000$name)
#数字型变量
class(Forbes2000$sales)
#因子型(factor)变量
class(Forbes2000$country)























