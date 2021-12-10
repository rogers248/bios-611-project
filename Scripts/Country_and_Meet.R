library(tidyverse)
library(lubridate)
library(dplyr)



meets = read_csv("Data/meets.csv")

fillColor = "#FFA07A"

p1 <- meets %>%
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
ggsave("Figures/Country_and_Meet.png",p1)
