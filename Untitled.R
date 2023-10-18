library(tidyverse)

data <- read_csv('Meteorite_Landings.csv')




# rename mass(g)
names(data)[names(data) == "mass (g)"] <- "mass"

#use gg plot to make a bar graph based on year

ggplot(data = data,
       mapping = aes(x = year)) +
  geom_bar()

# use ggplot to create a bar graph based on name and mass

ggplot(data = data,
       mapping = aes(x = name,
                     y = mass)) +
  geom_bar(stat = "identity")