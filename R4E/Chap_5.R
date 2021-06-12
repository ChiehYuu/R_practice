#class type
team_name <- 'Chicago Bulls'
season <- '1995-1996'
wins_losses <- c(72, 10)
starting_lineup <- c('Ron Harper', 'Michael Jordan', 'Scottie Pippen', 'Dennis Rodman', 'Luc Longley')
is_champion <- TRUE
chicago_bulls_1 <- c(team_name, season, wins_losses, starting_lineup, is_champion)
class(chicago_bulls_1)
chicago_bulls_2 <- list(team_name, season, wins_losses, starting_lineup, is_champion)
class(chicago_bulls_2)
#slicing
class(chicago_bulls_2[[1]])
class(chicago_bulls_2[[2]])
class(chicago_bulls_2[[3]])
class(chicago_bulls_2[[4]])
class(chicago_bulls_2[[5]])
#indexing
chicago_bulls_2[['team_name']]
chicago_bulls_2[['season']]
chicago_bulls_2[['wins_losses']]
chicago_bulls_2[['starting_lineup']]
chicago_bulls_2[['is_champion']]

chicago_bulls_2$team_name
chicago_bulls_2$season
chicago_bulls_2$wins_losses
chicago_bulls_2$starting_lineup
chicago_bulls_2$is_champion

wins <- chicago_bulls_2[['wins_losses']][1]
losses <- chicago_bulls_2[['wins_losses']][2]
winning_percentage <- wins / (wins + losses)
sprintf(' %s 在 %s 球季的勝率是 %.2f%%', chicago_bulls_2$team_name, chicago_bulls_2$season, winning_percentage *100)

starting_lineup_list <- list(
  PG <- 'Ron Harper',
  SG <- 'Michael Jordan',
  SF <- 'Scottie Pipen',
  PF <- 'Dennis Rodman',
  C <- 'Luc Longley'
)

chicago_bulls_3 <- list(
  TeamName = team_name,
  Season = season,
  Wins_Losses = wins_losses,
  Starting_Lineup = starting_lineup_list,
  isChampion = is_champion
)

sprintf('%s 在 %s 球季的先發得分後衛是  %s',
        chicago_bulls_3$TeamName,
        chicago_bulls_3$Season,
        chicago_bulls_3$Starting_Lineup$SG)

#factor 
four_season <- c('Spring', 'Summer', 'Autumn', 'Winter')
class(four_season)
four_season_factor <- factor(four_season)
four_season_factor
class(four_season_factor)

temperatures <- c('warm', 'hot', 'cool')
temperatures_factors <- factor(temperatures , ordered = TRUE, levels = c('cool', 'warm', 'hot'))
temperatures_factors

#dataframe
teams_name <- c('Chicago Bulls', 'Golden State Warriors')
teams_wins <- c(72, 73)
teams_losses <- c(10, 9)
teams_is_champion <- c(TRUE, FALSE)
teams_season <- c('1995-96', '2015-16')
great_nba_teams <- data.frame(team_name, teams_wins, teams_losses, teams_is_champion, teams_season)
View(great_nba_teams)
str(great_nba_teams)
print(great_nba_teams)
great_nba_teams[1, 1]
great_nba_teams[1, ]
great_nba_teams[, 1]
great_nba_teams[, 5]
great_nba_teams$team_name
great_nba_teams$teams_is_champion

#matrix
my_mat_1 <- matrix(1:6, nrow= 2)
my_mat_1
class(my_mat_1)
my_mat_2 <- matrix(1:6, nrow= 2 ,byrow = TRUE)
my_mat_2
my_mat_1[2, 3]
my_mat_1[2, ]
my_mat_1[, 3]
my_mat_1[my_mat_1 < 6 & my_mat_1 > 1]
my_mat <- matrix(c(1, 2, TRUE, FALSE, 3, 4), nrow = 2)

#array
my_arr <- array(1:20, dim = c(2, 2, 5))
class(my_arr)
my_arr

my_arr_1 <- array(1:20, dim = c(2, 2, 5))
my_arr_1[, , 1]
my_arr_1[, , 2]
my_arr_1[, , 3]
my_arr_1[, , 4]
my_arr_1[, , 5]
my_arr_1[1, 1, 2]
my_arr_1[1, , 2]
my_arr_1[, 2, 2]

#exam
speed_char <- c('slow', 'fast')
speed_factor <- factor(speed_char, ordered = TRUE, levels = c('fast', 'slow'))

my_mat_ex <- matrix(1:9 , nrow= 3)
my_mat_ex[2, 3]
filter <- my_mat_ex %% 2 == 1
my_mat_ex[filter]

team_name_ex <- c('Chicago Bulls', 'Golden State Warriors')
wins_ex <- c(72, 73)
losses_ex <- c(10, 9)
is_champion_ex <- c(TRUE, FALSE)
season_ex <- c('1995-96', '2015-16')
great_nba_teams_ex <- data.frame(team_name_ex, wins_ex, losses_ex, is_champion_ex, season_ex, stringsAsFactors =  FALSE)
great_nba_teams_ex$is_champion_ex
great_nba_teams_ex[, 'is_champion_ex']

title <- 'Worst NBA Teams'
teams_worst <- c('Charlotte Bobcats', 'Philadelphia 76ers')
wins_worst <- c(7, 9)
losses_worst <- c(59, 73)
worst_nba_team <- list(title, teams_worst, wins_worst, losses_worst)
worst_nba_team[[3]]
worst_nba_teams_1 <- list(title = title, teams = teams_worst,win =  wins_worst,loss =  losses_worst)
worst_nba_teams_1$teams