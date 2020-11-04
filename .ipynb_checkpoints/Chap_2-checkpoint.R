hello_world <- 'Hello World'
hello_world

#check type
is.vector(hello_world)

#check length
length(hello_world)

#type try
num_vector <- 87
int_vector <- 87L
logi_vector <- TRUE
char_vector <- 'Hello World !!!'
date_vector <- Sys.Date()
datetime_vector <- Sys.time()
class(num_vector)
class(int_vector)
class(logi_vector)
class(char_vector)
class(date_vector)
class(datetime_vector)

#combine vector
nums <- c(87, 78)
ints <- c(87L, 78L)
chars <- c('Hello', 'World')
logis <- c(TRUE, FALSE)
dates <- c(Sys.Date(), Sys.Date()+1)
datetimes <- c(Sys.time(), Sys.time()+86400)
class(nums)
class(ints)
class(chars)
class(logis)
class(dates)
class(datetimes)

#repeat var
rep(7, time=3)
rep('R', time= 5)
rep(TRUE, time= 7)
rep(Sys.Date(), time= 9)
rep(Sys.time(), time= 11)

#sequence var
seq(from= 7, to= 21, by= 2)
seq(from= 1, to= 10, by= 1)
1:10
11:20
class(87)
class(87.7)

#integer
my_int <- 87.87L
class(my_int)

#calculation
first <- 11:13
second <- 1:3
first + second
first - second
first * second
first / second
first ** second
first %/% second
first %% second