(test <- sample(letters, 10))

sort(test)

order(test)

test[order(test)]

sort(test, decreasing = TRUE)

order(test, decreasing = TRUE)


mtcars[order(mtcars$mpg, decreasing = TRUE), ]

mtcars[order(mtcars$mpg, mtcars$hp, decreasing = TRUE),]

mtcars[order(-mtcars$mpg, mtcars$hp),]

which(mtcars$hp == max(mtcars$hp))

rownames(mtcars)[which(mtcars$hp == max(mtcars$hp))]

mtcars[which(mtcars$hp == max(mtcars$hp)), ]

mtcars[which.max(mtcars$hp), ]

mtcars[which.min(mtcars$hp), ]


(a_data_frame <- data.frame(
  x = letters[1:5],
  y = rnorm(5), # 随机抽取5个正态分布的数
  z = runif(5) > 0.5 # 随机抽取5个逻辑值
))
# 与a_data_frame 有相同的cols，不过次序不同
(another_data_frame <- data.frame( 
  z = rlnorm(5), # 随机抽取5个对数正态分布的数
  y = sample(1:5), # 1 到5 随机排列的数
  x = letters[3:7]
))

(r_combined=rbind(a_data_frame, another_data_frame))
colnames(r_combined)

(c_combined=cbind(a_data_frame, another_data_frame))
colnames(c_combined)


merge(a_data_frame, another_data_frame)

merge(a_data_frame, another_data_frame, by = "x")

merge(a_data_frame, another_data_frame, by = "x", all = TRUE)

merge(a_data_frame, another_data_frame, by = "x", all.x = TRUE)

merge(a_data_frame, another_data_frame, by = "x", all.y = TRUE)


