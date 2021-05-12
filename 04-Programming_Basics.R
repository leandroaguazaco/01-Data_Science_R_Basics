# Basic Conditionals ====

a <- 0

if (a != 0) {
  print(1/a)
} else {
  print("No reciprocal for 0")
}

library(dslabs)
data("murders")
head(murders)

murder_rate <- murders$total / murders$population * 10^5

ind <- which.min(murder_rate)
ind

# if - else 

if (murder_rate[ind] < 0.25) {
  print(murders$state[ind])
} else {
  print("Not state has murder rate that lower")
}

# ifelse 

a <- 0
ifelse(a != 0, 1/a, "No reciprocal for 0") # works in vector

a <- c(0, 1, 2, -4)
ifelse(a > 0, 1/a, NA)

data("na_example")
head(na_example)

sum(is.na(na_example))

no_NA <- ifelse(is.na(na_example), 0, na_example) # replace NA values
no_NA
sum(is.na(no_NA))

# any 
# Given a set of logical vectors, is at least one of the values true?

z <- c(T, F, T, F, T)
z

any(z)

x <- rep(FALSE, 3)

any(x)

# all 
# Given a set of logical vectors, are all of the values true?

e <- rep(T, 5)
e
all(e)

c <- c(rep(T, 4), F)
c
all(c)

# Functions ==== 

media <- function(x) {
  s <- sum(x)
  n <- length(x)
  avg <- s/n
  return(avg)
}

x <- 1:890
media(c(1:789)) 

identical(media(x), mean(x))

# For loops ====

sum_n <- function(n) {
  x <- 1:n
  sum(x)
}

sum_n(25)

v <- numeric()

for (i in 1:25) {
  v[i] <- sum_n(i)
}

plot(1:25, v)
