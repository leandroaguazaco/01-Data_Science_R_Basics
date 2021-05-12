codes <- c(349, 435, 678)
codes[1] # Selecting first element in a vector

names(codes) <- c("uno", "dos", "tres") # Assign names to a vector's elements
codes

codes["uno"] # Selecting an element by name inside a vector
codes[c("uno", "tres")] # Selecting multiple elements by name

class(codes)
names(codes)

seq <- seq(1, 100, 0.01) # Creating a sequence
length(seq)
1:340
codes[1:2]

library(tidyverse)
library(dslabs)

data("murders")
head(murders)
sort(murders$state) # If a vector or column of a dataset is numeric, it will ordered by descending order, if not, alphabetically

index <- order(murders$total) # order() returns ordered indexes rows according an attribute
index
murders$abb[index]

max(murders$total)
which.max(murders$total) # Returns maximum value index
murders$state[which.min(murders$population)] 

rank(murders$total) # Returns the sample ranks of the values in a vector.

murders$state[which.max(murders$population)]

murders_rate <- murders$total / murders$population * 100000
murders_rate

states <- murders$state[order(murders_rate, decreasing = T)]
states

x <- c(2, 43, 27, 96, 18)

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4)
time <- c(10, 30, 40, 50)

my_df <- data.frame(name, distance, time)
my_df

my_df["time(hr)"] <- my_df$time/60 # Creates a new column or attribute
my_df[ , "speed"] <- my_df$distance / my_df$`time(hr)`
my_df$name[which.max(my_df$speed)]


