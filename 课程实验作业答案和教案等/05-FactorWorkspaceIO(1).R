data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)

#创建了一个级别缺省为整数值的因子
fdata = factor(data)
fdata
levels(fdata)


#创建一个级别为罗马数字的因子
rdata = factor(data,labels=c("I","II","III"))
rdata
levels(rdata)


rdata = factor(data,labels=c("III","II","I"))
rdata
levels(rdata)

#我们可以使用进行数字型类型转换的函数as.numeric()函数查看因子型变量中实际存储的数字
as.numeric(rdata)

fdata
levels(fdata)
#对于已经创建好的因子，我们可以利用levels()函数更改因子的级别
levels(fdata) = c("I","II","III")
fdata
levels(fdata)


objects()
ls()
getwd()
#假设在C盘下存在一个叫做``R-Learning''的文件夹，我们可以用以下命令将工作路径设置为这个文件夹:
setwd("C:/R-Learning")


cars.mod <- cars
outdir = "work"
if(!file.exists(outdir)) dir.create(outdir)
save(cars.mod, file=file.path(outdir,"cars_mod.RData"))

save.image(file.path(outdir,"workspace.RData"))

remove(cars.mod) 
load(file.path(outdir,"cars_mod.RData"))




url <- "data/google_stock_data.csv"
GOOG.data <- read.csv(url)
str(GOOG.data)

write.table(GOOG.data, file = "google_data.txt")
write.csv(GOOG.data, file = "google_data.csv")




















