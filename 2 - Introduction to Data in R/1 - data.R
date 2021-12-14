# 2.1 Basic calculator operations in R

1     +     2
1+2
1 + 2

2 * 4 

2 / 4

# "^"
2^3 # exponentiation operator is the caret symbol

16^(1/2)

sqrt(16)

# 2.2 How to assign variables in R

# `<-` is the assignment operator

x <- 1
# Variable Assignment is asymetric
# LHS is the label <- RHS is the value


?log
help(log)
log(x = exp(3))


# case sensitive
rIsCaseSensitive <- 1234
riscasesensitive <- 6789


Kunal <- "kunal"
Kunal_tip <- 2
Kunal_food <- 7
Kunal.




# obj do i have in my environment

ls() # lists labels defined

.thisisHIDDEN <- 999 

ls() # lists labels defined

rm(.thisisHIDDEN)

.thisisHIDDEN 

rm(list = ls())   # Remove ALL objects


# transmitting

x <- 123
print("anything")
print(x)

View(x)


?cat
cat("TEST 1")
cat("Today", "is", "a", "happy day")

y <- 789456133
y

(y <- 789456133)





* What is a package?
  
collection of functions (and data sets) 
developed by the R community

install.packages("viridisLite")
library("viridisLite")











