# basic
#-------------------
##arithmetic
7+9

##var
apple <- 7+9
apple

##type
class(apple)
class(TRUE)
class('Time')
#-------------------

#vector
##create
my_time <- c(1, 2, 3)

##name
names(my_time) <- c('Mon', 'Tue', 'Wed')
my_time

##slice
my_time[1:2]

##logic
selection <- my_time > 2
my_time[selection]
