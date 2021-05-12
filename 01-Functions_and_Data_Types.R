a <- 2 # declare object
b <- -1
c <- -4

ls() # To list the declared objects in current project environment
a
print(c) # Print an object or result

(-b + sqrt(b^2 - 4*a*c))/(2*a) # Quadratic function
(-b - sqrt(b^2 - 4*a*c))/(2*a)

help("sqrt") # Help documentation about a function, object or dataset
?sqrt

library(dslabs) # To Load a package
data("murders") # To Load dataset from packages
tail(murders) # last 6 rows 

class(murders) # class type
is.data.frame(murders)
murders$state
murders[ , "state"]
murders[ , 1]
murders[ , -c(2:5)]
murders[ , -(2:5)]
names(murders) # Headers 
colnames(murders) # == names(murders)

pop <- murders$population
length(pop) # To count how many rows has a dataset or vector
length(murders$population)
str(murders) # To examine structure
class(murders$region)

levels(murders$region)
factor()

log(x = 1024, 
    base = 4) # = 4^5

data("movielens")
head(movielens) # First 6 row 
str(movielens)
nlevels(movielens$genres)
movielens$genres <- factor(movielens$genres)
nlevels(movielens$genres)
table(movielens$genres)
