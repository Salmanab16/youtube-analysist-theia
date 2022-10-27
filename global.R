options(scipen = 99)
library(tidyverse)
library(dplyr)
library(readr)
library(ggplot2)
library(plotly)
library(glue)
library(scales)
library(shinydashboard)
library(shiny)

#read data
vids <- read_csv("data_input/youtubetrends.csv", locale = locale(encoding = "latin1"))

#data vids_clean
vids_clean <- 
  vids %>% 
  mutate(
    channel_title = as.factor(channel_title),
    category_id = as.factor(category_id),
    publish_when = as.factor(publish_when),
    publish_wday = as.factor(publish_wday),
    timetotrend = as.factor(timetotrend),
    
    likesp = likes/views,
    dislikesp = dislikes/views,
    commentp = comment_count/views
  )


