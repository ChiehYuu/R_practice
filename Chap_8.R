#functional programming

#from simple 
num_seq <- 11:20
#tranditional
num_seq*2
#apply()
sapply(num_seq, FUN = function(x) x**2)
#loop
seq_length <- length(num_seq)
num_seq_squared <- rep(NA, times = seq_length)
for (i in 1:seq_length){
  num_seq_squared[i] <- num_seq[i] **2
}
num_seq_squared

#time stamp
system.time(num_seq **2)
system.time(sapply(num_seq, FUN = function(x) x**2))
system.time(for (i in 1:seq_length){
  num_seq_squared[i] <- num_seq[i] **2
})

#apply try 
get_squared <- function(x) {
  return(x **2)
}
sapply(num_seq, get_squared)
sapply(num_seq, FUN = function(x) x**2)
#time stamp
system.time(sapply(num_seq, get_squared))
system.time(sapply(num_seq, FUN = function(x) x**2))

#string print apply try 
super_stars <- c('Steve Nash', 'Michael Jordon', 'LeBron James', 'Dirk Nowitzski', 'Hakeem Olajuwon')
super_stars

#split function
split_name <- strsplit(super_stars, split = ' ')
split_name

#loop print
star_jerseys <- c()
for (i in 1:length(split_name)){
  family_name <- split_name[[i]][2]
  star_jerseys[i] <- toupper(family_name)
}
star_jerseys