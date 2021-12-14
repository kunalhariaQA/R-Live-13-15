# Vectors in R

Victor <- c(1,2,3,4)
Victor[3]

film1.ratings <- c(80, 60, 40)
Kunal.ratings <- c(80, 90, 100, 10)
Jane.ratings <- c(60, 95, 99, 20)
Jane.ratings
Lenny.ratings <- c(40, 50, 97, 15)
Lenny.ratings

dim(Lenny.ratings)
?length
length(Lenny.ratings)

append(Kunal.ratings, c(100))
Kunal.ratings # has not been updated

Kunal.ratings <- append(Kunal.ratings, c(100))
# has been updated
Kunal.ratings

c(0.5, 0.6)       ## numeric
c(TRUE, FALSE)    ## logical
c(T, F)           ## logical
c("a", "b", "c")  ## character
c(1+0i, 2+4i)     ## complex

?c



# generate vector

2:10

?seq

# positional args
seq(2,10)
# named args
seq(from = 2, to = 10)

seq(from=10, to=50, by=5)

seq(from=10, to=50, by=10/2)

rep()
?rep

rep(2, times = 4)
rep(c(0,1), times = 4)
rep(c(0,1), times = 4, each = 2)










