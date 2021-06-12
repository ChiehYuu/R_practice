pkgs <- c('jsonlite', 'rvest', 'magrittr')
install.packages(pkgs)

#import 
library(jsonlite)
library(rvest)
library(magrittr)

aqi_url <- 'https://opendata.epa.gov.tw/ws/Data/AQI/?$format=xml'
aqi <- read_xml(aqi_url)
class(aqi)
head(aqi)



