# function build
#my_function(my_inpus, my_args, ...)

#vector function()
#abs() 絕對值
-5:-1
abs(-5:-1)

#sqrt() 根號
1:5
sqrt(1:5)

#ceiling() 無條件進位
ceiling(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
ceiling(nums)

#floor() 無條件去位
floor(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
floor(nums)

#round() 四捨五入
round(9.527)
round(9.527, digits = 0)
round(9.527, digits = 1)
round(9.527, digits = 2)

#exp() 指數化
nums <- 1:5
exp(nums)

#log() 對數化
e <- exp(1)
log(e)
log(e**2)
log(e**3)

#log10() 自然對數化
nums <- c(10, 10**2, 10**3, 10**4, 10**5)
log10(nums)

#str vector
#toupper() 轉換大寫
skywalkers <- c('Luke Skywalker', 'Anakin Skywalker')
toupper(skywalkers)

#tolower() 轉換小寫
tolower(skywalkers)

#substr() 分裂文字
my_char <- 'Learn R the easy way'
substr(my_char, start = 1, stop = 5)
substr(my_char, start = 7, stop = 7)
substr(my_char, start = 9, stop = 11)
substr(my_char, start = 13, stop = 16)
substr(my_char, start = 18, stop = 20)

#grep() 序列索引
starwars <- c('Luke Skywalker', 'Princess Leia Organa', 'Anakin Skywalker', 'Darth Vader')
grep(starwars, pattern = 'Skywalker')
grep(starwars, pattern = 'Leia')
grep(starwars, pattern = 'Vader')
grep(starwars, pattern = 'Yoda')
grep(starwars, pattern = 'skywalker', ignore.case = TRUE)

#sub() 取代函數
anakin <- 'Anakin Skywalker'
luke <- sub(anakin, pattern = 'Anakin', replacement = 'Luke')
luke
luke_2 <- sub(anakin, pattern = 'anakin', replacement = 'Luke', ignore.case = 'TRUE')
luke_2

#strsplit() 文字向量切割
my_book <- 'Learn R the easy way'
strsplit(my_book, split = ' ')
strsplit(my_book, split = ',')
my_book_1 <- 'Learn R, the easy way'
strsplit(my_book_1, split = ',')

#paste() 文字向量黏合
luke <- 'Luke'
anakin <- 'Anakin'
skywalker <- 'Skywalker'
luke_skywalker <- paste(luke, skywalker)
anakin_skywalker <- paste(anakin, skywalker, sep = ',')
luke_skywalker
anakin_skywalker

#paste0() 文字向量黏合預設
sky <- 'Sky'
sky_skywalker <- paste0(sky, skywalker)
sky_skywalker

#trimws() 刪除空格
luke <- '   Luke Skywalker   '
trimws(luke)
trimws(luke, which = 'left')
trimws(luke, which = 'right')

#statistic function
#unique() 集合篩選
my_seq <- rep(7, times = 3)
unique(my_seq)
rgb <- c('red', 'red', 'green', 'green', 'green', 'blue')
unique(rgb)

#mean() 平均值函數
my_seq <- 1:5
mean(my_seq)
my_seq <- c(my_seq, NA) #加入一個NA
mean(my_seq)
mean(my_seq, na.rm = TRUE)

#sd() 標準差函數
my_seq <- 1:5
sd(my_seq)
my_seq <- c(my_seq, NA)
sd(my_seq)
sd(my_seq, na.rm = TRUE)

#median() 中位數函數
my_seq <- 1:5
median(my_seq)
my_seq <- c(my_seq, NA)
median(my_seq)
median(my_seq, na.rm = TRUE)

#range() 最大值與最小值
my_seq <- 1:5
range(my_seq)
my_seq <- c(my_seq, NA)
range(my_seq)
range(my_seq, na.rm = TRUE)

#sum() 總和函數
my_seq <- 1:5
sum(my_seq)
my_seq <- c(my_seq, NA)
sum(my_seq)
sum(my_seq, na.rm = TRUE)

#max() 最大值函數
my_seq <- 1:5
max(my_seq)
my_seq <- c(my_seq, NA)
max(my_seq)
max(my_seq, na.rm = TRUE)

#min() 最小值函數
my_seq <- 1:5
min(my_seq)
my_seq <- c(my_seq, NA)
min(my_seq)
min(my_seq)

#exam
ceiling(pi)
floor(pi)
round(pi, digits = 2)

today_char <- 'Today is:'
sys_date <- Sys.Date()
paste(today_char, sys_date)

num_vector <- c(11:14, NA)
sum(num_vector, na.rm = TRUE)
median(num_vector, na.rm = TRUE)