library(tidyverse)
library(lubridate)
library(dplyr)


powerlifting = read_csv("Data/powerlifting2015-2019.csv")


fillColor3= "#2ECC71" 

p6 <- powerlifting %>%
  filter(Sex == "F") %>%
  group_by(WeightClassKg) %>%
  summarise(Count =  n()) %>%
  ungroup() %>%
  mutate(WeightClassKg = reorder(WeightClassKg,Count)) %>%
  arrange(desc(Count)) %>%
  head(10) %>%
  
  ggplot(aes(x = WeightClassKg,y = Count)) +
  geom_bar(stat='identity',colour="white", fill = fillColor3) +
  geom_text(aes(x = WeightClassKg, y = 1, label = paste0(" ",Count," ",sep="")),
            hjust=0, vjust=.5, size = 4, colour = 'black',
            fontface = 'bold') +
  labs(x = 'Weight Class Kg', 
       y = 'Count', 
       title = 'Weight Class Kg and Count') +
  coord_flip() +
  theme_bw()
ggsave("Figures/Women_Weight_Class.png",p6)