# data frame solution

#loading data
csv_url <- 'https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv'
chicago_bulls <- read.csv(csv_url)
View(chicago_bulls)

#text reforming 
recoding_pos <- function(x) {
  if (x %in% c('PG', 'SG')){
    pos <- 'Back court'
  } else {
    pos <- 'Front court'
  }
  return(pos)
}

chicago_bulls$pos_recoded <- sapply(FUN = recoding_pos, X = chicago_bulls$Pos)
View(chicago_bulls)

#num reforming
recoding_wt <- function(x) {
  if (x >210) {
    wt_group <- 'Heavy'
  } else {
    wt_group <- 'Thin'
  }
  return(wt_group)
}

chicago_bulls$Wt_recoded <- sapply(FUN = recoding_wt, X = chicago_bulls$Wt)
View(chicago_bulls)

#cut
chicago_bulls$cut_Wt <- cut(chicago_bulls$Wt, breaks = c(0, 210, Inf), labels =  c('Thin', 'Heavy'))
View(chicago_bulls)

#stack & unstack
install.packages('tidyr')
library(tidyr)

#unstack
chicago_bulls_wide <- spread(chicago_bulls, key = 'Wt_recoded', value = 'pos_recoded')
View(chicago_bulls_wide)

#stack
chicago_bulls_long <- gather(chicago_bulls_wide, key = 'pos_recoded', value = ' Wt_recoded', chicago_bulls_wide$Heavy, chicago_bulls_wide$Thin)
View(chicago_bulls_long)

#row bind
teams <- c('Chicago Bulls', 'Chicago Bulls')
game_results <- c('win', 'loss')
games <- c(72, 10)
bulls <- data.frame(team = teams, game_result = game_results, game = games)
teams <- c('Golden State Warriors', 'Golden State Warriors')
game_results <- c('win', 'loss')
games <- c(73, 9)
warriors <- data.frame(team = teams, game_result = game_results, game = games)
bulls
warriors
rbind(bulls, warriors)

#dplyr
bind_rows(bulls, warriors)

#col bind
chicago_bulls_players <- chicago_bulls[, c('No.', 'Player')]
chicago_bulls_ht_wt <- chicago_bulls[, c('Wt', 'Ht')]
cbind(chicago_bulls_players, chicago_bulls_ht_wt)

#dplyr
bind_cols(chicago_bulls_players, chicago_bulls_ht_wt)

#merge
name <- c('Ruffy', 'Zoro', 'Nami', 'Joba')
age <- c(19, 21, 20, 17)
left_df <- data.frame(name, age)

name <- c('Ruffy', 'Joba', 'Robin')
devil_fruit <- c('Plastic', 'Human', 'Flower')
right_df <- data.frame(name, devil_fruit)

merge(left_df, right_df)

#inner join
inner_join(left_df, right_df)

#merge index all.x
merge(left_df, right_df, all.x = TRUE)

#left join
left_join(left_df, right_df)

#merge index all.y
merge(left_df, right_df, all.y = TRUE)

#right join
right_join(left_df, right_df)

#merge index x,y
merge(left_df, right_df, all.x = TRUE, all.y = TRUE)
merge(left_df, right_df, all = TRUE)

#full join 
full_join(left_df, right_df)
