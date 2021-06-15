# basic
##20210613
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

#-------------------
#matrix
##20210614
matrix(1:9, byrow = TRUE, nrow=3)

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, 
                           byrow = TRUE,
                           dimnames = list(titles, region))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

#-------------------
#factor
# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5