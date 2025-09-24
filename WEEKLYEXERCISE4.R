library(usethis)
library(readr)
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
