# import pkgs
pkgs <- c('magrittr', 'dplyr')
install.packages(pkgs)
library(magrittr)
library(dplyr)

#R magic Chaining function
one_to_five <- 1:5 
sum(one_to_five)
one_to_five %>% sum()

#origin typr
sys_date <- Sys.Date()
sys_yr <- format(sys_date, format = '%Y')
sys_yr_num <- as.numeric(sys_yr)
sys_yr_num

#compress
sys_yr_num_1 <- as.numeric(format(Sys.Date(), format = '%Y'))
sys_yr_num_1

#with magic
sys_yr_num_2 <- Sys.Date() %>% 
  format('%Y') %>%
  as.numeric()
sys_yr_num_2

#ex_1 
lbj <- super_stars %>%
  strsplit(split = ' ') %>%
  '[[' (3) %>%
  '[' (2) %>%
  toupper()
lbj

#filter 
mj <- chicago_bulls %>%
  filter(Player == 'Michael Jordan')
mj

#ex.2
pg <- chicago_bulls %>%
  filter(Pos == 'PG')
pg

#select
players_all <- chicago_bulls %>%
  select(Player)
players_all
class(players_all)

#select 
player_all_vector <- chicago_bulls[, 'Player', drop = FALSE]

#select to change cols name
chicago_bulls %>%
  select(jersey_number = No., player_name = Player)

#mutate
chicago_bulls %>%
  mutate(
    wt_kg = round(Wt * 0.45359),
    season = '1995-1996'
  )

#arrange
chicago_bulls %>%
  arrange(Wt)

chicago_bulls %>%
  arrange(desc(Wt))

#summaries
chicago_bulls %>%
  summarise(avg_wt = mean(Wt))

#group_by
chicago_bulls %>%
  group_by(Pos) %>%
  summarise(avg_wt = mean(Wt))
