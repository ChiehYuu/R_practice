install.packages('gapminder')

#check datasets
library(gapminder)
dim(gapminder)
summary(gapminder)
str(gapminder)
head(gapminder)
tail(gapminder)

#hist
hist(gapminder$gdpPercap)

#boxplot
boxplot(gdpPercap ~ continent, data = gapminder)

#plot
twn <- gapminder[gapminder$country == 'Taiwan',]
plot(twn$year, twn$gdpPercap, type = 'l')

#scatter
plot(gapminder$gdpPercap, gapminder$lifeExp)

#barplot
barplot(table(gapminder$continent))

#curve
curve(sin, from = -pi, to = pi)

#function draw
squared <- function(x) {
  return(x**2)
}
curve(squared, from = -3, to = 3)

#title,label
hist(gapminder$gdpPercap, main = 'GDP Per Capita is left-skewed', xlab = 'GDP Per Capita', ylab = 'Freq')
grid()

#barh
barplot(table(gapminder$continent), main = 'Number of Observations in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE)

#horizon tab
barplot(table(gapminder$continent), main = 'Number of Observations in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE, las = 1)

#word y lab
barplot(table(gapminder$continent), main = 'Number of Observations in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE, las = 1, cex.names = 0.6)

#word x lab
barplot(table(gapminder$continent), main = 'Number of Observations in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE, las = 1, cex.names = 0.6, cex.axis = 1.4)

#density
hist(gapminder$gdpPercap, main = 'GDP Per Capita is left-skewed', xlab = 'GDP Per Capita', ylab = 'Density', freq = FALSE, ylim = c(0, 1.6e-04))
lines(density(gapminder$gdpPercap))

#pch / col 
plot(gapminder$gdpPercap, gapminder$lifeExp, main = 'Life Expectancy is positively related to GDP Per Capita', xlab = 'GDP Per Capita', ylab = 'Life Expectancy', pch = 3, col = 'red')

#hue
continent_pch <- as.numeric(gapminder$continent)
plot(gapminder$gdpPercap, gapminder$lifeExp, main = 'Life Expectancy is positively related to GDP Per Capita', xlab = 'GDP Per Capita', ylab = 'Life Expectancy', pch = continent_pch, col = gapminder$continent)

#subplot
par(mfrow = c(2, 2))
barplot(table(gapminder$continent))
barplot(table(gapminder$continent), main = 'Number of Observation in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE)
barplot(table(gapminder$continent), main = 'Number of Observation in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE, las = 1)
barplot(table(gapminder$continent), main = 'Number of Observation in Gapminder', xlab = 'Number of Observations', ylab = 'Continents', horiz = TRUE, las = 1, cex.name= 0.4)
