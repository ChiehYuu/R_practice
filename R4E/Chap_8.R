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

#split upper loop 
get_stars_jersey <- function(x){
  family_name <- x[2]
  upper_case <- toupper(family_name)
  return(upper_case)
}

#functional testing
sapply(split_name, get_stars_jersey)
sapply(split_name, FUN = function(x) toupper(x[2]))
system.time(sapply(split_name, get_stars_jersey))
system.time(sapply(split_name, FUN = function(x) toupper(x[2])))

#apply function family
#lapply() <- list apply (return as a list)
star_jerseys_1 <- lapply(split_name, get_stars_jersey)
star_jerseys_1

#sapply() <- simplify apply (retrun as anything single input)
star_jerseys_2 <- sapply(split_name, get_stars_jersey)
star_jerseys_2

#vapply() <- vector apply (return as a vector with slicing matrix)
star_jerseys_3 <- vapply(split_name, get_stars_jersey, FUN.VALUE = character(1))
star_jerseys_3

#map() mapping with double variables logic
get_stars_jersey_new <- function(x, n) {
  name <- x[n]
  upper_cased <- toupper(name)
  return(upper_cased)
}

n_list <- list(1, 2, 1, 2, 1)
star_jerseys_4 <- Map(get_stars_jersey_new, split_name, n_list)
star_jerseys_4

#apply() mapping as a matrix/dataframe to output a row or column
my_mat <- matrix(11:20, nrow = 5)
col_1 <- 11:15
col_2 <- 16:20
df <- data.frame(col_1, col_2)
apply(my_mat, MARGIN = 1, FUN = sum)
apply(my_mat, MARGIN = 2, FUN = sum)
apply(df, MARGIN = 1, FUN = sum)
apply(df, MARGIN = 2, FUN = sum)

#exam
heights <- ceiling(runif(500000) * 50) + 140
weights <- ceiling(runif(500000) * 50) + 40
h_w_df <- data.frame(heights, weights)
# bmi = weights / (height/100) **2
#vector cal
get_bmi <- function(h, w) {
  h <- h / 100
  bmi_values <- w / (h**2)
  return(bmi_values)
}
get_bmi(heights, weights)

#mapping
bmi_map <- Map(get_bmi, heights, weights)
bmi_map

#for loops
bmi_seq <- rep(NA, times = length(weights))
for (i in (1:length(weights))) {
  bmi_seq[i] <- weights[i] / ((heights[i]/100) ** 2)
}
bmi_seq

#time testing
system.time(weights/((heights/100)**2))
system.time(Map(get_bmi, heights, weights))
system.time(for (i in (1:length(weights))) {
  bmi_seq[i] <- weights[i] / ((heights[i]/100) ** 2)
})


