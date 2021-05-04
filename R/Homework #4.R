#7.3.4 exercise 1

library(tidyverse)
data("diamonds")

diamonds %>% arrange(desc(y))
diamonds %>% arrange(desc(x))
diamonds %>% arrange(desc(z))

#The values of for x and y are bigger than z
#ggplot I don't know if that's helpful of not
#The depth of z is stumped on how y is the width and x is the length

#7.3.4 exercise 2

diamond_price = diamonds %>% arrange(desc(price))
ggplot(diamonds, mapping = aes(x = price)) + geom_histogram()
#Why should we put a binwidth for our value

#7.3.4 exercise 3

diamonds %>% filter(carat == 0.99)
diamonds %>% filter(carat == 1)

#There are 23 0.99 carat diamonds and 1558 and 1 carat diamonds.
#The diamond is being rounded up to 1 and that's because of the 0.99 carat

#7.4.1 exercise 1

diamonds2 = diamonds %>% mutate(y = ifelse(y < 3 | y > 20, NA, y))
#The code is from the text
#The bar and chart and histogram were different. I will used it to see the difference.

ggplot(diamonds2, aes(x = y)) + geom_histogram()
#It said warning 9 rows contains missing values.

#There wasn't much of the difference between the two

#7.4.1 exercise 2

means(c(1,2,3), na.rm = TRUE)
sum(c(1,2,3), na.rm = TRUE)

#na.rm = TRUE doesn't do much for the mean.For the sum it calculated correctly.
