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


