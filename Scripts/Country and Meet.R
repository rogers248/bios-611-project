library(tidyverse)
library(lubridate)
library(dplyr)
library(DT)

powerlifting = read_csv("/Users/moyi/Desktop/611 Final Project/powerlifting2015-2019.csv")
meets = read_csv("/Users/moyi/Desktop/611 Final Project/meets.csv")
openpowerlifting= read_csv("/Users/moyi/Desktop/611 Final Project/openpowerlifting.csv")

fillColor = "#FFA07A"

meets %>%
  group_by(MeetCountry) %>%
  summarise(Count = n()) %>%
  arrange(desc(Count)) %>%
  ungroup() %>%
  mutate(Country = reorder(MeetCountry,Count)) %>%
  head(10) %>%
  
  ggplot(aes(x = Country,y = Count)) +
  geom_bar(stat='identity',colour="white", fill = fillColor) +
  geom_text(aes(x = Country, y = 1, label = paste0("(",Count,")",sep="")),
            hjust=0, vjust=.5, size = 4, colour = 'black',
            fontface = 'bold') +
  labs(x = 'Country', 
       y = 'Count', 
       title = 'Country and Count') +
  coord_flip() +
  theme_bw()
