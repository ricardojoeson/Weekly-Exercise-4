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
