help(Control)

if(TRUE) message("It was true!")

if(FALSE) message("It wasn't true!") 

if(runif(1) > 0.5) message("This message appears with a 50% chance.")

x <- 3
if(x > 2)
{
  y <- 2 * x
  z <- 3 * y
}

if(FALSE)
{
  message("This won't execute...")
} else
{                               
  message("but this will.")
}




if (sample(c(FALSE, TRUE), 1)) {
  print("heads")
} else {
  print("tails")
}

#以下将出现错误：
if(FALSE)
{
  message("This won't execute...")
}
else
{
  message("and you'll get an error before you reach this.")
}


(x = sample (c(-1, -2, 0, 3, 4), size = 1))
if(x > 0)
{
  if(x%%2==0)
  {
    message("x为正偶数")
  } else
  {
    message("x为正奇数")
  }
  
} else if(x < 0)
{
  if(x%%2==0)
  {
    message("x为负偶数")
  } else
  {
    message("x为负奇数")
  }
} else
{
  message("x为零")
}

#以下将出现警告：
if (mtcars$mpg > median(mtcars$mpg)) print("efficient") else print("gas-guzzler")


mtcars2 <- mtcars
mtcars2$efficiency <- ifelse(mtcars$mpg > median(mtcars$mpg), "efficient", "gas-guzzler")
mtcars2$efficiency


ifelse(rbinom(n = 10, size = 1, prob = 0.5), "Head", "Tail")


repeat
{
  message("Happy Groundhog Day!")
  action <- sample(
    c(
      "Learn French",
      "Make an ice statue", 
      "Rob a bank", 
      "Win heart of Andie McDowell"
    ),
    1
  )
  message("action = ", action)
  if(action == "Win heart of Andie McDowell") break
}


action <- sample(
  c(
    "Learn French",
    "Make an ice statue", 
    "Rob a bank", 
    "Win heart of Andie McDowell"
  ),
  1
)
while(action != "Win heart of Andie McDowell")
{
  message("Happy Groundhog Day!")
  action <- sample(
    c(
      "Learn French",
      "Make an ice statue", 
      "Rob a bank", 
      "Win heart of Andie McDowell"
    ),
    1
  )
  message("action = ", action)
}



mynum <- 8
while (mynum > 1) {
  print(mynum)
  mynum <- mynum - 1
}


for(i in 1:5) message("i = ", i)

for(i in c(1.1,2,4.7,7)) message("i = ", i)

for(i in 1:5) 
{
  j <- i ^ 2
  message("j = ", j)
}


for(month in month.name)
{
  message("The month of ", month)
} 


for(yn in c(TRUE, FALSE, NA))
{
  message("This statement is ", yn)
}


l <- list(
  1:10, 
  LETTERS[1:5],
  list(
    a=TRUE
  )
)
for(i in l)
{
  print(i)
}








