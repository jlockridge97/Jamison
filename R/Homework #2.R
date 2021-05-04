library(tidyverse)
install.packages("nycflights13")
library(nycflights13)

#5.2.4 exercise
#I will use the function filter() for this exercise

#1st question I will use arr_delay to see the arrival delays
filter(flights, arr_delays >= 120)

#2nd question I will use destination function to see who flew from Houston
filter(flights, dest="IAH"|dest="HOU")
filter(flights, dest=="IAH"|dest=="HOU")
#I used two equal sign when i did it the second time

#3rd question this time I will use the carrier but I still be doing the same thing
filter(flights, carrier=="AA"|carrier=="DL"|carrier=="UA")

#4th question I will filter out the specific months
filter(flights, month==7|month==8|month==9)

#5 questions I will use arr_delays and dep_delay
filter(flights, arr_delay>120|dep_delay<=0)

#6 question I needed to use dep_delay
filter(flights, dep_delay>=60|arr_delay-dep_delay<=30)

#I double checked my answer and I realized theres more to code to this
filter(flights, dep_delay>=60, dep_delay-arr_delay>30)

#7 questions I formatted the flights chart to see the time and if they are correct
filter(flights, dep_delay<=600|dep_delay==2400)

#5.3.1 exercise
#In this exercise I will use arrang() and desc()

arrange(flights, dep_time) %>%
tail()

arrange(flights, desc(dep_delay))
#When I did this last night it took me alot of tries and I got confused a bit.

arrange(flights, desc(is.na(dep_delay))
#I didn't know when we have to use another code when we got the data

arrange(flights, desc(is.na(dep_time)), dep_time)
#I don't know what I did wrong I put in the right coding for it. Maybe I messed up and put it in the wrong order

#5.3.1 exericse 2nd question
arrange(flights, desc(dep_delay))

#5.3.1 exercise, 3rd question
arrange(flights, air_time)
#I got it wrong twice but the third time I got it right. The data went by fast.

#5.4.1 exercise 2nd question
select(flights, year, month, month)
#It doesn't duplicate the month but it selects the year

#5.4.1 exercise 3rd question
one_of()

vars <- c("year", "month", "day", "dep_delay", "arr_delay")
select(flights, one_of(vars))
#when you do vars it shows the flight table in selected variables

#5.5.2 exercise, Question 1
sched_dep=select(flights, dep_time, sched_dep_time)
mutate(sched_dep)
#I kinda understood the question that why I code the way I did

flights_airtime <- mutate(flights, dep_time_mins = (dep_time %% 100 * 60 + dep_time %% 100) %% 1400
arr_time = (arr_time %% 100 * 60 + arr_time %% 100) %% 1400
air_time_diff = air_time -arr_time = dep_time)
View(flights_times)
#I got confused on what I need to I thought I had the coding for this but I didn't
select(flights_times, dep_time, dep_time_mins, sched_dep_time, sched_dep_time_mins)

#5.5.2 exercise question 2
select(flights, air_time)
filter(flights, !arr_time%in%dep_time_mins)
#Did alright with the select(flights, air_time). I got loss on the second coding.

#5.6.7 Exrercise Question 4
cancelled = flights(is.na(arr_delay) | is.na(dep_delay))
cancelled = flights %>% fliter(is.na(dep_delay), is.na(arr_delay))
cancelled %>% group_by(year, month, day)
mutate(cancelled) %>% group_by(year, month, day)
#I was confused how to cancelled coding and how to mutate it. I got loss so I gave up.

cancelled_per_day <- flights %>% mutate(cancelled = (is.na(arr_delay) | is.na(dep_delay)
ggplot(cancelled_per_day)
#I keep getting stumped on how to do these variables

#5.6.7 exercise Question 5
flights %>% group_by(carrier)
flights %>% group_by(carrier) %>% summarise(flights, delay =mean (dep_delay, na.rm = TRUE) %>%
arrange(desc(arr_delay))

