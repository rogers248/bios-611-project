library(tidyverse)
library(lubridate)
library(dplyr)
library(ggplot2)
library(gridExtra)

powerlifting = read_csv("Data/powerlifting2015-2019.csv")



powerlifting1<-subset(powerlifting, powerlifting$TotalKg>1000)
a <- ggplot(powerlifting1, aes(BodyweightKg, TotalKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "TotalKg")

powerlifting2<-subset(powerlifting, powerlifting$Best3SquatKg>400)
b <- ggplot(powerlifting2, aes(BodyweightKg, Best3SquatKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "Best3SquatKg")

powerlifting3<-subset(powerlifting, powerlifting$Best3BenchKg>250)
c <- ggplot(powerlifting3, aes(BodyweightKg, Best3BenchKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "Best3BenchKg")

powerlifting4<-subset(powerlifting, powerlifting$Best3DeadliftKg>380)
d <- ggplot(powerlifting4, aes(BodyweightKg, Best3DeadliftKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "Best3DeadliftKg")

p5 = grid.arrange(a, b, c, d, ncol = 2, nrow = 2)
ggsave("Figures/Relationship_between_lifted_weights_and_body_weights.png",p5)