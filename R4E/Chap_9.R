#data set trying 
data()
?iris

#data source category
#txt with sep= ' ' 
#tsv with sep= ' '
#csv with sep= ','

#read_table
file_url <- 'https://s3-ap-northeast-1.amazonaws.com/r-essentials/friends_cast.csv'
friend_cast <- read.table(file = file_url, header = TRUE, stringsAsFactors = FALSE, sep = ',')
View(friend_cast)

#read_lines
friends_script <- readLines(file_url)
View(friends_script)

#read_csv
friend_test <- read.csv(file = file_url, header = TRUE, stringsAsFactors = FALSE, sep = ',')
View(friend_test)

#limit lines
friend_read_limit <- readLines(file_url, n = 2)
friend_read_limit

#install packages
pkgs <- c('readxl', 'jsonlite')
install.packages(pkgs)
library(readxl)
library(jsonlite)

#read excel 
file_path_2 <- '/Users/jayshih/Downloads/統一ＰＯＣ範例格式.xlsx'
file_read_1 <- read_excel(file_path_2)
View(file_read_1)

#read json
install.packages('curl')
file_url_2 <- 'https://s3-ap-northeast-1.amazonaws.com/r-essentials/friends_cast.json'
friend_cast_2 <- fromJSON(file_url_2)
View(friend_cast_2)

#write table 
star_names <- c('Jennifer Aniston', 'Courteney Cox', 'Lisa Kudrow', 'Matt LeBlanc', 'Matthew Perry', 'David Schwimmer')
cast_names <- c('Rachel Green', 'Monica Geller', 'Phoebe Buffay', 'Joey Tribbiani', 'Chandler Bing', 'Ross Geller')
friends_caster <- data.frame(cast_names, star_names, stringsAsFactors = FALSE)
View(friends_caster)
#write.table(friends_caster, file = 'C:/Users/jayshih/Downloads/friends_cast.csv', row.names = FALSE)
array_of_json <- toJSON(friends_caster)
#writeLines(array_of_json, con = 'c://Users/jayshih/Downloads/friends_cast.json')

#exam
url <- 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data'
iris_df <- read.table(url, header = FALSE, sep=',')
View(iris_df)
names(iris_df) <- c('a', 'b', 'c', 'd', 'category')
