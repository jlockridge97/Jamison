# Jamison 
#' Final Project
#'
#' Selects Relevant Information
#'
#' Pulls tweets of desired topic and selects columns that would contain relevant data.
#'
#' @author Jamison Lockridge
#'
#' @param x Desired search term
#'
#' @param y Desired amount of tweets you want to pull
#'
#' @return Data of selected tweets with relevant information
#'
#' @examples x = smartphones y = 1000
#'
#' @export print(Search_data)

library(tidyverse)
install.packages("rtweets")
library("rtweet")
tweets=search_tweets("Lebron", n=2000)
search_tweets("Lebron")
function(x, y)

Search_data = search_tweets("Lebron", n=500) %>%
  select(screen_name, text, favorite_count, retweet_count, reply_count)
?select

Search_data %>% select(screen_name, text, favorite_count, retweet_count, reply_count)
print(Search_data)
assign("searchdata", Search_data, envir = .GlobalEnv)
verified_tweets = search_tweets("Lebron", n=1000) %>%


install.packages("gtrendsR")
library(gtrendsR)


