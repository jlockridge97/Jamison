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

> library(tidyverse)
-- Attaching packages ------------------------------------------- tidyverse 1.3.0 --
v ggplot2 3.3.3     v purrr   0.3.4
v tibble  3.1.0     v dplyr   1.0.5
v tidyr   1.1.3     v stringr 1.4.0
v readr   1.4.0     v forcats 0.5.1
-- Conflicts ---------------------------------------------- tidyverse_conflicts() --
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()

install.packages("rtweets")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/jlock/OneDrive/Documents/R/win-library/4.0’
(as ‘lib’ is unspecified)
Warning in install.packages :
  package ‘rtweets’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
> library("rtweet")

Attaching package: ‘rtweet’

The following object is masked from ‘package:purrr’:

> tweets=search_tweets("Lebron", n=2000)
Requesting token on behalf of user...
Waiting for authentication in browser...
Press Esc/Ctrl + C to abort
Authentication complete.
Downloading [=========================================] 100%
> search_tweets("Lebron")
# A tibble: 100 x 90
   user_id  status_id created_at          screen_name text   source display_text_wi~
   <chr>    <chr>     <dttm>              <chr>       <chr>  <chr>             <dbl>
 1 1220482~ 13890442~ 2021-05-03 02:28:40 nobullsh_t~ "@Hig~ Twitt~              154
 2 3080251~ 13890442~ 2021-05-03 02:28:40 pablofe749~ "#ad ~ Twitt~              140
 3 3080251~ 13890440~ 2021-05-03 02:27:54 pablofe749~ "#ad ~ Twitt~              140
 4 2822209~ 13890441~ 2021-05-03 02:28:38 steveklosc~ "Larr~ Twitt~              140
 5 1287462~ 13890441~ 2021-05-03 02:28:37 ALUAD069    "Lebr~ Twitt~               13
 6 1205978~ 13890441~ 2021-05-03 02:28:35 xhmnx       "Mayb~ Twitt~               91
 7 1101113~ 13890441~ 2021-05-03 02:28:35 MuseKhaotic "Coli~ Twitt~               98
 8 1310671~ 13890441~ 2021-05-03 02:28:33 DONFREDSTL~ "Kuz ~ Twitt~              124
 9 8520939~ 13890441~ 2021-05-03 02:28:33 YounginGot~ "Andr~ Twitt~              140
10 1378562~ 13890441~ 2021-05-03 02:28:30 OnwenuRG1   "Mayb~ Twitt~               91
# ... with 90 more rows, and 83 more variables: reply_to_status_id <chr>,
#   reply_to_user_id <chr>, reply_to_screen_name <chr>, is_quote <lgl>,
#   is_retweet <lgl>, favorite_count <int>, retweet_count <int>, quote_count <int>,
#   reply_count <int>, hashtags <list>, symbols <list>, urls_url <list>,
#   urls_t.co <list>, urls_expanded_url <list>, media_url <list>,
#   media_t.co <list>, media_expanded_url <list>, media_type <list>,
#   ext_media_url <list>, ext_media_t.co <list>, ext_media_expanded_url <list>,
#   ext_media_type <chr>, mentions_user_id <list>, mentions_screen_name <list>,
#   lang <chr>, quoted_status_id <chr>, quoted_text <chr>,
#   quoted_created_at <dttm>, quoted_source <chr>, quoted_favorite_count <int>,
#   quoted_retweet_count <int>, quoted_user_id <chr>, quoted_screen_name <chr>,
#   quoted_name <chr>, quoted_followers_count <int>, quoted_friends_count <int>,
#   quoted_statuses_count <int>, quoted_location <chr>, quoted_description <chr>,
#   quoted_verified <lgl>, retweet_status_id <chr>, retweet_text <chr>,
#   retweet_created_at <dttm>, retweet_source <chr>, retweet_favorite_count <int>,
#   retweet_retweet_count <int>, retweet_user_id <chr>, retweet_screen_name <chr>,
#   retweet_name <chr>, retweet_followers_count <int>, retweet_friends_count <int>,
#   retweet_statuses_count <int>, retweet_location <chr>,
#   retweet_description <chr>, retweet_verified <lgl>, place_url <chr>,
#   place_name <chr>, place_full_name <chr>, place_type <chr>, country <chr>,
#   country_code <chr>, geo_coords <list>, coords_coords <list>,
#   bbox_coords <list>, status_url <chr>, name <chr>, location <chr>,
#   description <chr>, url <chr>, protected <lgl>, followers_count <int>,
#   friends_count <int>, listed_count <int>, statuses_count <int>,
#   favourites_count <int>, account_created_at <dttm>, verified <lgl>,
#   profile_url <chr>, profile_expanded_url <chr>, account_lang <lgl>,
#   profile_banner_url <chr>, profile_background_url <chr>, profile_image_url <chr>
> View(tweets)
> function(x, y)
+ Search_data = search_tweets("Lebron", n=500) %>%
+   
+ install.packages("gtrendsR")
function(x, y)
Search_data = search_tweets("Lebron", n=500) %>%
  
install.packages("gtrendsR")
> library(gtrendsR)
> Search_data = search_tweets("Lebron", n=500) %>%
+   select(screen_name, text, favorite_count, retweet_count, reply_count)
Downloading [=========================================] 100%
> ?select
> Search_data %>% select(screen_name, text, favorite_count, retweet_count, reply_count)
# A tibble: 500 x 5
   screen_name  text                        favorite_count retweet_count reply_count
   <chr>        <chr>                                <int>         <int>       <int>
 1 Too_swift_k~ "How LeBron looking at Ada~              0           427          NA
 2 paytondj2    "Hope Lebron is okay from ~              0           119          NA
 3 bryanericlo~ "ponte serio Lebron, vamos~              0             0          NA
 4 kaksanca     "@LakersWhat @ayecee17 @Th~              0             0          NA
 5 keciayvirsin "@Qoeg128 Dostum ben LeBro~              0             0          NA
 6 mcaristotle5 "@KingJames spoke too soon~              0             6          NA
 7 BlvckRanger  "How LeBron looking at Ada~              0           427          NA
 8 Knickloyalty "@_knicks1688 @YankeesKnic~              0             0          NA
 9 BigBruvah    "Lebron ripping NBA brass ~              0             0          NA
10 IameIoBaII   "@deadhairlineee @_Fred83 ~              0             0          NA
# ... with 490 more rows
> print(Search_data)
# A tibble: 500 x 5
   screen_name  text                        favorite_count retweet_count reply_count
   <chr>        <chr>                                <int>         <int>       <int>
 1 Too_swift_k~ "How LeBron looking at Ada~              0           427          NA
 2 paytondj2    "Hope Lebron is okay from ~              0           119          NA
 3 bryanericlo~ "ponte serio Lebron, vamos~              0             0          NA
 4 kaksanca     "@LakersWhat @ayecee17 @Th~              0             0          NA
 5 keciayvirsin "@Qoeg128 Dostum ben LeBro~              0             0          NA
 6 mcaristotle5 "@KingJames spoke too soon~              0             6          NA
 7 BlvckRanger  "How LeBron looking at Ada~              0           427          NA
 8 Knickloyalty "@_knicks1688 @YankeesKnic~              0             0          NA
 9 BigBruvah    "Lebron ripping NBA brass ~              0             0          NA
10 IameIoBaII   "@deadhairlineee @_Fred83 ~              0             0          NA
# ... with 490 more rows
> assign("searchdata", Search_data, envir = .GlobalEnv)
> View(searchdata)
> verified_tweets = search_tweets("Lebron", n=1000) %>%
+ 
+ install.packages("gtrendsR")
Downloading [=========================================] 100%
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Error in install.packages : a character vector argument expected
> verified_tweets = search_tweets("Lebron", n=1000) %>%

install.packages("gtrendsR")
library(gtrendsR)


