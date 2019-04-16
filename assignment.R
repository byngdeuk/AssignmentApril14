install.packages("nycflights13")
library(nycflights13)
library(tidyverse)
nycflights13::flights
View(flights)


#5.2.4 Exercises#
#1.1~1.7#
filter(flights, arr_delay >= 120)
filter(flights, dest == "IAH" | dest == "HOU")
filter(flights, carrier %in% c("AA", "DL", "UA"))
filter(flights, month >= 7, month <= 9)
filter(flights, arr_delay > 120, dep_delay <= 0)
filter(flights, dep_delay >= 60, dep_delay - arr_delay > 30)
filter(flights, dep_time <= 600 | dep_time == 2400)
#2#
filter(flights, between(month, 7, 9))
#3#
filter(flights, is.na(dep_time))
#4#

#5.3.1 Exercises#
#1#
arrange(flights, desc(is.na(dep_time)), dep_time)
#2#
arrange(flights, desc(dep_delay))
#3#
arrange(flights, air_time)
#4#
arrange(flights, desc(distance))

#5.4.1 Exercises#
#1#
select(flights, "dep_time", "dep_delay", "arr_time", "arr_delay")

#2#
select(flights, year, month, day, year, year)

#3#
vars <- c("year", "month", "day", "dep_delay", "arr_delay")
select(flights, one_of(vars))

#4#
select(flights, contains("TIME"))

#5.5.2 Exercises#
#1#
1504 %/% 100
1504 %% 100
1504 %/% 100 * 60 + 1504 %% 100

flights_times <- mutate(flights,
                        dep_time_mins = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
                        sched_dep_time_mins = (sched_dep_time %/% 100 * 60 +
                                                 sched_dep_time %% 100) %% 1440
)

select(
  flights_times, dep_time, dep_time_mins, sched_dep_time,
  sched_dep_time_mins
)

#2#
#3#
#4#
#5#
#6#

#5.6.7 Exercises#
#1#
#2#
#3#
#4#
#5#
#6#

#5.7.1 Exercises#
#1#
#2#
#3#
#4#
#5#
#6#
#7#
#8#



#12.2.1 Exercises#

#12.3.3 Exercises#

#12.4.3 Exercises#

#12.5.1 Exercises#

#12.6.1 Exercises#

