c(3, 4 - 1, 1 + 1 + 1) == 3

exp(1:5) < 100

(1:5) ^ 2 >= 16

c(
  "Can", "you", "can", "a", "can", "as", 
  "a", "canner", "can", "can", "a", "can?"
) == "can"

mtcars$mpg > median(mtcars$mpg)

(x <- 1:10 >= 5)

(y <- 1:10 %% 2 == 0)

!x

x & y

x | y

none_true <- c(FALSE, FALSE, FALSE)
some_true <- c(FALSE, TRUE, FALSE)
all_true <- c(TRUE, TRUE, TRUE)

any(none_true)

any(some_true)

any(all_true)

all(none_true)

all(some_true)

all(all_true)

cars$acceleration < -3

length(cars$acceleration[cars$acceleration < -3])

cars$acceleration[cars$acceleration < -3] <- -3

x <- 1:3
x[4]

x <- c(1, 2, 3, NA, 4, 5)

is.na(x)

mean(x)

mean(x, na.rm = TRUE)

x[is.na(x)] <- 3.5
x

0/0

1/0
-1/0

is.infinite(1/0)










