library(tidyverse)
library(lubridate)
library(dplyr)
library(DT)

fillColor4= "#D7BDE2"

powerlifting = read_csv("/Users/moyi/Desktop/611 Final Project/powerlifting2015-2019.csv")

powerlifting %>%
  filter(Sex == "M") %>%
  group_by(Name) %>%
  summarise(BestWilks =  median(Wilks,na.rm =TRUE)) %>%
  ungroup() %>%
  mutate(Name = reorder(Name,BestWilks)) %>%
  arrange(desc(BestWilks)) %>%
  head(10) %>%
  
  ggplot(aes(x = Name,y = BestWilks)) +
  geom_bar(stat='identity',colour="white", fill = fillColor) +
  geom_text(aes(x = Name, y = 1, label = paste0(" ",round(BestWilks)," ",sep="")),
            hjust=0, vjust=.5, size = 4, colour = 'black',
            fontface = 'bold') +
  labs(x = 'Name', 
       y = 'Wilks ', 
       title = 'Name and Wilks') +
  coord_flip() +
  theme_bw() 
