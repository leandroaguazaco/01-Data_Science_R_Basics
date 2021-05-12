library(tidyverse)
library(dslabs)

data("murders")
head(murders)

murders_rate <- murders$total / murders$population * 100000
west <- murders$region == "West"
safe <- murders_rate <= 1
index <- safe & west # Compare two boolean vectors

murders$state[index]

index <- match(c("New York", "Florida", "Texas"), murders$state) # Extract indexes that meet a condition  
murders_rate[index]

x <- letters[1:5]
y <- c("a", "d", "f")

y %in% x # Which elements in the left are on the right?

library(dplyr)

# mutate function 
murders %>% 
  mutate(murders_rate = total / population * 100000)

murders <- mutate(murders, rate = total/population*100000)

# filter function 
murders %>% 
  filter(rate < 0.71)

# select function 
new_table <- murders %>% 
  select(state, region, rate)
new_table

murders <- mutate(murders, population = population / 10^6)

# Graphics

# Scatterplot
ggplot(murders, aes(x = population, 
                    y = total)) +
  geom_point() + 
  labs(title = "Total Murders vs Population", 
       x = "Population (Millions)", 
       y = "Total Murders") + 
  theme_bw()

# Histogram
ggplot(murders, aes(rate)) +
  geom_histogram(bins = 30, 
                 binwidth = 0.4, 
                 fill = "gray") + 
  labs(title = "Histogram Rate Variable", 
       x = "Rate", 
       y = "Frequency") + 
  theme_bw()

# Boxplot
ggplot(murders, 
       aes(x = , 
           y = rate, 
           fill = region)) + 
  geom_boxplot() + 
  theme_bw()

boxplot(murders$rate)

data("heights")
head(heights)

avg <- mean(heights$height)
avg
ind <- heights$height > avg
ind
sum(ind)

nrow(heights %>% 
  filter(height > avg & sex == "Female"))

ind <- heights$sex == "Female"
ind
sum(ind)/nrow(heights) # Calculate proportions 

min(heights$height)
match(50, heights$height)
sort(heights$height)
order(heights$height)
rank(heights$height)
which.min(heights$height)

heights$sex[which.min(heights$height)]
heights$sex[order(heights$height)]

max(heights$height)

x <- 50:82
x

sum(!x %in% heights$height)

heights2 <- mutate(heights, ht_m = height * 2.54)
heights2$ht_m[18]
avg <- mean(heights2$ht_m)

female <- filter(heights2, sex == "Female")
female
avg <- mean(female$ht_m)
avg

nrow(filter(heights2, sex == "Female"))

data("olive")
head(olive)

ggplot(data = olive, 
       aes(x = palmitoleic, 
           y = palmitic)) +
  geom_point()

# Histogram
ggplot(data = olive, 
       aes(x = eicosenoic)) + 
  geom_histogram(bins = 10) + 
  theme_bw()

hist(olive$eicosenoic)

# Boxplot
ggplot(data = olive, 
       aes(y = palmitic, 
           fill = region)) + 
  geom_boxplot() + 
  theme_bw()
boxplot(palmitic ~ region, data = olive)


