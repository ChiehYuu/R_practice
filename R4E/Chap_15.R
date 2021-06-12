pkgs <- c('RSQLite', "DBI")
install.packages(pkgs)

#import
library(DBI)
library(gapminder)

#SQL statement

create_statement <- '
CREATE TABLE cities (
  city TEXT NOT NULL,
  country TEXT NOT NULL
);'

insert_statement <- "
INSERT INTO cities (city, country) VALUES ('Taipei', 'Taiwan'),
                                          ('Boston', 'United States'),
                                          ('Tokyo', 'Japan'),
                                          ('London', 'United Kingdom');"

update_statement <- "UPDATE cities SET city = 'New York' WHERE city = 'Boston';"

delete_statement <- "DELETE FROM cities WHERE city = 'London';"

#connection
user_desktop <- '/Users/jayshih/Desktop/'
db_path <- paste0(user_desktop, 'demo.db')
con <- DBI::dbConnect(RSQLite::SQLite(), dbname = db_path)

#SQL
dbListTables(conn = con)
dbExecute(conn = con, statement = 'DROP TABLE gapminder')
dbWriteTable(conn = con, name = 'gapminder', value = gapminder)
dbExecute(conn = con, statement = 'DROP TABLE cities')
dbExecute(conn = con, statement = create_statement)
dbExecute(conn = con, statement = insert_statement)

dbListFields(conn = con, name = 'cities')
dbListFields(conn = con, name = 'gapminder')
dbReadTable(conn = con, name = 'cities')
dbGetQuery(conn = con, statement = "SELECT * FROM gapminder WHERE country ='Taiwan';")

dbExecute(conn = con, statement = update_statement)
dbReadTable(conn = con, name = 'cities')

dbExecute(conn = con, statement = delete_statement)
dbReadTable(conn = con, name = 'cities')

dbRemoveTable(conn = con, name = 'cities')
dbListTables(conn = con)
dbDisconnect(conn = con)
