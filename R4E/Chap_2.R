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

#string vector
hellos <- c("Hello World", 'Hello R')
hellos
class(hellos)

#symbol
mcd <- 'I\'m lovin it'
shaq <- 'Shaquille O\'neal'
ross_said <- 'Let\'s put aside the fact tha \"accidentally\" pick up my grandma\' ring'
writeLines(mcd)
writeLines(shaq)
writeLines(ross_said)

#format string
team <- 'Chicago Bulls'
season <- '1995-1996'
wins <- 72
losses <- 10
sprintf('%s recorded a %.0f-win, %.0f-loss season in %s', team, wins, losses, season)

#Boolean
class(TRUE)
class(FALSE)
class(T)
class(F)

#boolean test
8 > 7
8 < 7
8 %in% c(8,7)
!(8 > 7)

#datetime vector
sys_date <- Sys.Date()
sys_date
class(sys_date)

sys_date_char <- as.character(sys_date)
as.numeric(sys_date)
as.numeric(sys_date_char)

#exam
my_height <- 178.6
my_weight <- 85.6
my_height
my_weight

bmi <- (my_weight)/(my_height/100)^2
bmi

my_name <- 'Jay'
my_name

beyond_start <- as.Date('1983-12-31')
as.numeric(beyond_start)

beyond_now <- Sys.Date()
as.numeric(beyond_now)
days_diff <- beyond_now - beyond_start
days_diff
years_diff <- days_diff / 365
years_diff
