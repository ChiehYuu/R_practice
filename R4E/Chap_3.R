# vector type check
lucky_int <- 7L
lucky_num <- 24
lucky_numbers <- c(lucky_int, lucky_num)
class(lucky_int)
class(lucky_num)
class(lucky_numbers)
class(lucky_numbers[1])
class(lucky_numbers[0])

#vector logical
logicals <- c(TRUE, FALSE)
class(logicals)
lucky_integers <- c(lucky_int, logicals)
lucky_integers
class(lucky_integers)
class(lucky_integers[1])
class(lucky_integers[2])
class(lucky_integers[3])

#vector char
char <- 'Hello R!!!'
mixed_vector <- c(lucky_int, lucky_num, logicals, char)
class(mixed_vector)
class(mixed_vector[1])
class(mixed_vector[2])
class(mixed_vector[3])
class(mixed_vector[4])
class(mixed_vector[5])

#is. function/inherits() function
is.numeric(87)
is.numeric("87")
is.integer(87L)
is.integer('87')
is.character('True')
is.character(TRUE)
is.logical('FALSE')
is.logical(FALSE)
inherits(Sys.Date(), what= 'Date')
inherits('1994-05-02', what= 'Date')
inherits(Sys.time(), what= 'POSIXct')
inherits('1994-05-02 00:00:00', what= 'POSIXct')

#as. function
as.numeric(87L)
as.numeric(TRUE)
as.numeric(FALSE)
as.numeric(Sys.Date())
as.numeric(Sys.time())

as.integer(87)
as.integer(TRUE)
as.integer(FALSE)
as.integer(Sys.Date())
as.integer(Sys.time())

as.logical(0)
as.logical(0L)
as.logical(1L)
as.logical(-8.7)
as.logical(87)
as.logical('TRUE')
as.logical(TRUE)
as.logical('true')
as.logical('FALSE')
as.logical(FALSE)
as.logical('false')

as.character(8.7)
as.character(87L)
as.character(TRUE)
as.character(FALSE)
as.character(Sys.Date())
as.character(Sys.time())

as.Date('1999-01-01')
as.Date('1999-01-01', format= '%m-%d-%Y')
as.Date('1999/01/01')
as.Date('1999/01/01', format= '%m-%d-%Y')

as.POSIXct('1999-01-01 00:00:00')
as.POSIXct('1999-01-01 00:00:00', tz= 'GMT')

#index
four_seasons <- c('spring', 'summer', 'autumn', 'winter')
lucky_numberss <- c(7, 13, 24, 34, 87)
four_seasons
length(four_seasons)
lucky_numberss
length(lucky_numberss)

msg <- sprintf('My favorite season is %s.', four_seasons[3])
msg

#slicing
four_seasons[1:3]
four_seasons[2:4]
four_seasons[2:length(four_seasons)]

#logical 
favorite_season <- four_seasons == 'autumn'
four_seasons[favorite_season]
favorite_seasons <- four_seasons == 'spring' | four_seasons == 'autumn'
four_seasons[favorite_seasons]

#exam
week_days <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
favorite_day <- week_days[week_days == 'Friday']
favorite_day

not_blue_monday <- week_days != 'Monday'
without_monday <- week_days[not_blue_monday]
without_monday