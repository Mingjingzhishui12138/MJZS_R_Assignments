x <- (1:15) ^ 2
toString(x)

toString(x, width = 40)

example(toString)

cat(c("red", "yellow"), "lorry")

cat(c("red", "yellow"), "lorry",sep="#")

cat("This is a test string.",file="abc.txt")

x <- c(
  "I", "saw", "a", "saw", "that", "could", "out", 
  "saw", "any", "other", "saw", "I", "ever", "saw"
)
y <- noquote(x)
x
y

pow <- 1:3
(powers_of_e <- exp(pow))

formatC(powers_of_e) 

formatC(powers_of_e, digits = 3) 

formatC(powers_of_e, digits = 3, width = 10)

formatC(powers_of_e, digits = 3, format = "e")

sprintf("%s %d = %f", "Euler's constant to the power", pow, powers_of_e)

sprintf("To three decimal places, e ^ %d = %.3f", pow, powers_of_e) 

sprintf("In scientific notation, e ^ %d = %e", pow, powers_of_e)

toupper("I'm Shouting")

tolower("I'm Whispering")

args(substr)

substr("abcdef", 2, 5)

substr(rep("abcdef", 4), 1:4, 4:5)

text1 = "she sells sea shells on the shining seashore and shells she sells on the seashore are seashells I am sure"
(result1 = strsplit(text1," "))

class(result1)

table(result1)

(result1.new = strsplit(text1,""))

table(result1.new)

text2 = c(
  "How much wood would a woodchuck chuck",
  "If a woodchuck could chuck wood?",
  "He would chuck, he would, as much as he could",
  "And chuck as much wood as a woodchuck would",
  "If a woodchuck could chuck wood."
)
(result2 = strsplit(text2," "))

class(result2)

table(result2[4])

(now_ct <- Sys.time())

print(now_ct)

class(now_ct)

unclass(now_ct)

now_lt <- as.POSIXlt(now_ct)

class(now_lt)

now_lt

unclass(now_lt)

now_lt$sec
now_lt$min
now_lt$hour

(now_date <- as.Date(now_ct))

class(now_date)

unclass(now_date)

moon_landings_str <- c(
  "20:17:40 20/07/1969", 
  "06:54:35 19/11/1969", 
  "09:18:11 05/02/1971", 
  "22:16:29 30/07/1971", 
  "02:23:35 21/04/1972", 
  "19:54:57 11/12/1972"
)
(moon_landings_lt <- strptime(
  moon_landings_str, 
  "%H:%M:%S %d/%m/%Y"
))


strptime(
  moon_landings_str, 
  "%H:%M:%S %d-%m-%Y"
)


strftime(now_ct, "It's %I:%M%p on %A %d %B, %Y.")

now_ct + 86400
now_lt + 86400
now_date + 1

the_start_of_time <- as.Date("1970-01-01")
the_end_of_time <-  as.Date("2012-12-21") # 按玛雅人的阴谋论
(all_time <- the_end_of_time - the_start_of_time)


class(all_time)

unclass(all_time)

difftime(the_end_of_time, the_start_of_time) 

difftime(the_end_of_time, the_start_of_time, units = "secs") 

difftime(the_end_of_time, the_start_of_time, units = "weeks")


timedata <- data.frame(volume=rnorm(121,60,2),
                       datetime=as.POSIXct("2019-11-11 00:00:00")+seq(0,7200,by=60))
plot(timedata$volume~timedata$datetime,type="l")





