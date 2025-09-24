library(usethis)
library(readr)
library(dplyr)
library(ggplot2)
# main

olydata = read.csv("D:/MSCA/PA446/week3/Olympics.csv")

# 7.a.
largest_1992 = olydata %>%
  filter(year == 1992) %>%
  arrange(desc(athletes))
largest_1992[1,"country"]

# a_c stands for athletes and country
a_c = tibble(
  largest_1992[,c("athletes","country")]
)

# 7.b.
countries = c("United States ", "France ", "Germany ", "Russia ", "China ")
gold_medals_plot = olydata %>%
  filter(country %in% countries) %>%
  ggplot(aes(x = year, y = gold, color = country))+
  geom_line()+
  geom_point()+
  labs(
    title = "Gold Medals Won Over Time by Country",
    x = "year",
    y = "Number of Gold Medals",
    color = "Country"
  )+
  scale_x_continuous(breaks = seq(min(olydata$year), max(olydata$year), by = 2)) +
  theme_minimal()
gold_medals_plot


library(tidyverse)
library(ggplot2)
# 4. 
# Branch name:main

olydata = read.csv("Olympics.csv")
# 6.a.
olydata1 = olydata %>%
  mutate(total.medals = gold+silver+bronze)

# 6.b.
country_goldmedals = olydata %>%
  group_by(country) %>%
  summarise(gold_medals = sum(gold,na.rm = TRUE))

# 6.c.
year_totalmedals = olydata1 %>%
  group_by(year) %>%
  summarise(total_by_year = sum(total.medals,na.rm = TRUE))

