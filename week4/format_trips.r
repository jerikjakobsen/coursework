library(ISLR2)

library(tidyverse)
library(scales)
library(lubridate)

library(modelr)
options(na.action = na.warn)

library(broom)
library(here)

load(here('week4/trips_2015.RData'))
weather <- weather %>% 
  select(-ymd) %>% 
  rename( ymd=date)

trips <- trips %>% 
  mutate(ymd = as.character(ymd)) %>% 
  group_by(ymd) %>% 
  summarize(num_trips=n(), date=as.integer(gsub("-", "", ymd[1]))) %>% 
  left_join(weather) %>% 
  na.omit() %>% 
  mutate(tmin= tmin/10, tmax=tmax/10) 

save(trips, file="trips.RData")
