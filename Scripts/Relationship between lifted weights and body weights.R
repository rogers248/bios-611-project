library(tidyverse)
library(lubridate)
library(dplyr)
library(DT)
library(ggplot2)

powerlifting = read_csv("/Users/moyi/Desktop/611 Final Project/powerlifting2015-2019.csv")
meets = read_csv("/Users/moyi/Desktop/611 Final Project/meets.csv")


powerlifting1<-subset(powerlifting, powerlifting$TotalKg>1000)
ggplot(powerlifting1, aes(BodyweightKg, TotalKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "TotalKg")

powerlifting2<-subset(powerlifting, powerlifting$Best3SquatKg>400)
ggplot(powerlifting2, aes(BodyweightKg, Best3SquatKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "Best3SquatKg")

powerlifting3<-subset(powerlifting, powerlifting$Best3BenchKg>250)
ggplot(powerlifting3, aes(BodyweightKg, Best3BenchKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "Best3BenchKg")

powerlifting4<-subset(powerlifting, powerlifting$Best3DeadliftKg>380)
ggplot(powerlifting4, aes(BodyweightKg, Best3DeadliftKg)) + 
  geom_point() + 
  labs(x = "BodyweightKg", y = "Best3DeadliftKg")
