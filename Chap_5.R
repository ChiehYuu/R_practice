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