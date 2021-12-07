library(tidyverse)
library(lubridate)
library(dplyr)
library(DT)

powerlifting = read_csv("/Users/moyi/Desktop/611 Final Project/powerlifting2015-2019.csv")
meets = read_csv("/Users/moyi/Desktop/611 Final Project/meets.csv")
openpowerlifting= read_csv("/Users/moyi/Desktop/611 Final Project/openpowerlifting.csv")

fillColor2 = "#F1C40F"

powerlifting %>%
  filter(Sex == "M") %>%
  group_by(WeightClassKg) %>%
  summarise(Count =  n()) %>%
  ungroup() %>%
  mutate(WeightClassKg = reorder(WeightClassKg,Count)) %>%
  arrange(desc(Count)) %>%
  head(10) %>%
  
  ggplot(aes(x = WeightClassKg,y = Count)) +
  geom_bar(stat='identity',colour="white", fill = fillColor2) +
  geom_text(aes(x = WeightClassKg, y = 1, label = paste0(" ",Count," ",sep="")),
            hjust=0, vjust=.5, size = 4, colour = 'black',
            fontface = 'bold') +
  labs(x = 'Weight Class Kg', 
       y = 'Count', 
       title = 'Weight Class Kg and Count') +
  coord_flip() +
  theme_bw()
