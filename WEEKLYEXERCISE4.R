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