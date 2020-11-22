install.packages('ggplot2')

#import 
library(ggplot2)
library(gapminder)
library(magrittr)

#ggplot bar
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap)) +
  ggplot2::geom_histogram(bins = 30)

#ggplot line
gapminder %>%
  filter(country == 'Taiwan') %>%
  ggplot2::ggplot(ggplot2::aes(x = year, y = gdpPercap)) +
  ggplot2::geom_line()

#scatter
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap, y = lifeExp)) +
  ggplot2::geom_point()

#bar
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = continent)) +
  ggplot2::geom_bar()

#line
sin_df <- data.frame(x = c(-pi, pi))
ggplot2::ggplot(sin_df, ggplot2::aes(x=x)) + ggplot2::stat_function(fun = sin, geom = 'line')

#square 測試
squared <- function(x) {
  return(x**2)
}
sqr_df <- data.frame(x = c(-3, 3))
ggplot2::ggplot(sqr_df, ggplot2::aes(x = x)) + ggplot2::stat_function(fun = squared, geom = 'line')

#自定義
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap)) +
  ggplot2::geom_histogram(bins = 30) +
  ggplot2::ggtitle('GDP Per Capita is left-skewed') +
  ggplot2::xlab('GDP Per Capita') +
  ggplot2::ylab('Freq')

#grid remove
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap)) +
  ggplot2::geom_histogram(bins = 30) +
  ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                 panel.grid.minor = ggplot2::element_blank())

#twist
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = continent)) +
  ggplot2::geom_bar() +
  ggplot2::coord_flip()

#density
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap)) +
  ggplot2::geom_histogram(bins = 30, ggplot2::aes(y = ..density..), alpha = 0.5) +
  ggplot2::geom_density()

#label change
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap, y = lifeExp)) +
  ggplot2::geom_point(shape = 2, colour = 'red')

#legend change
gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = gdpPercap, y = lifeExp)) +
  ggplot2::geom_point(ggplot2::aes(shape = continent, colour = continent))

#subplot
g1 <- gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = continent)) +
  ggplot2::geom_bar()

g2 <- gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = continent)) +
  ggplot2::geom_bar() +
  ggplot2::coord_flip()

g3 <- gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = continent)) +
  ggplot2::geom_bar() +
  ggplot2::coord_flip() +
  ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                 panel.grid.minor = ggplot2::element_blank())

g4 <- gapminder %>%
  ggplot2::ggplot(ggplot2::aes(x = continent)) +
  ggplot2::geom_bar()
  ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                 panel.grid.minor = ggplot2::element_blank())

library(gridExtra)
gridExtra::grid.arrange(g1, g2, g3, g4, nrow = 2, ncol = 2)





