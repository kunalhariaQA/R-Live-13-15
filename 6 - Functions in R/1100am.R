# 6 - Functions

?mean
help(mean)

args(mean)

mean(
  c(2,3,4) # x
)


chocs <- c(2, 3, 2, 3, 4, 5, 5)
mean(x = chocs) # argument by name
mean(chocs) # argument by position

sweets <- c(1, 1, 1, 1, 1, 2, 2)
mean(x = chocs + sweets)

chocs <- c(2, 3, 2, 3, 4, NA, NA)
mean(chocs)
sum(chocs)

mean(chocs, na.rm = TRUE)


# Creating functions in R


my_addition_function <- function(arg1, arg2) {
  
  # multiple lined function
  temp <- 2 +2 + arg1 + arg2
  temp *2
  # body of code
  # code body
  
}

my_addition_function(1,2)



add_one <- function(x) {
  
                        x + 1
                        
}

add_one <- function (x) x + 1
                      
add_one(99)
store_in_memory <- add_one(99)


pow_two <- function(x) {
  
  x^2
  # multiple lines
  6+5
  3*10
  
}

pow_two(4)

store_in_memory <- pow_two(4)








XpowY <- function(x, y) {
  
  result <- x^y
  
  print(paste(x, "raised to the power", y, "is", result))
  
}

XpowY(5,2)

store_in_memory <- XpowY(5,2)


XpowY(10, 2) # by position
XpowY(x = 10, y = 2)# by name

f2c <- function(temp.F) {
  
  temp.C <- (temp.F - 32) * 5 / 9
  
  temp.C # implicitly return LAST line
  
}

store_in_memory <- f2c(70)

f2c <- function(temp.F) {
  
  temp.C <- (temp.F - 32) * 5 / 9
  
  return(temp.C) # explicitly return this line
  # the return statement causes a function to stop 
  # executing and return a value to its caller immediately
  
  
  xyz <- 6
  
  print(xyz)
  
  
  temp.C * 0
  
  return(temp.F)
  
  print("this will not run")
  
}

f2c(70)

help(return)



# Functions of functions in R

sum( 9, mean(   c(1,2,3) ))


triple <- function (number) {
  
  return(number * 3)
  
}

triple(8)

timesTwoThirds <- function (x) x * 2/3

timesTwoThirds(24)

timesTwoThirds(    triple(8)    )

rnorm(timesTwoThirds(    triple(8)    ))



# functions do NOT require an input


throw_die <- function() {
                        number <- sample(1:6, size = 1)
                        number
}

throw_die()

number <- sample(1:6, size = 1)
number

throw_die(size = 3)








dnorm(y = 9)



# call - by - tag
dnorm(x = 1, mean = 0, sd = 1, log = FALSE)

# partial calling of arguments
dnorm(x = 1, me = 0, sd = 1, lo = FALSE)

# passing arguments by position
dnorm(1, 0, 1, FALSE)










