#data frame apply

#read csv & check basic data
csv_url <- 'https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv'
chicago_bulls <- read.csv(csv_url)
nrow(chicago_bulls)
ncol(chicago_bulls)
dim(chicago_bulls)
View(chicago_bulls)
head(chicago_bulls)
tail(chicago_bulls)
View(head(chicago_bulls))
colnames(chicago_bulls)
row.names(chicago_bulls)
summary(chicago_bulls)
str(chicago_bulls) #structure

#slicing
MJ <- chicago_bulls[7, 'Player']
MJ
Players <- chicago_bulls[ ,'Player']
Players
trio <- chicago_bulls[c(7, 11, 12),]
trio

#logical frame
the_trio <- chicago_bulls$Player %in% c('Michael Jordan', 'Scottie Pippen', 'Dennis Rodman')
the_trio
trio_1 <- chicago_bulls[the_trio, ]
trio_1

#logical frame 2
logical_union <- chicago_bulls$Player == 'Michael Jordan' | chicago_bulls$Player == 'Scottie Pippen'
logical_union
duel <- chicago_bulls[logical_union, ]
duel

logical_intersection <- chicago_bulls$Pos == 'PG' & chicago_bulls$Wt <= 210
logical_intersection
pg_pick <- chicago_bulls[logical_intersection, ]
pg_pick

#append frame 
chicago_bulls$is_starting <- c(FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE)
View(chicago_bulls)
chicago_bulls$starting <- sapply(chicago_bulls$Player, FUN = function(x) x %in% c('Ron Harper', 'Michael Jordan', 'Scottie Pippen', 'Dennis Rodman', 'Luc Longley'))
View(chicago_bulls)

#remove frame
chicago_bulls$is_starting <- NULL
View(chicago_bulls)
