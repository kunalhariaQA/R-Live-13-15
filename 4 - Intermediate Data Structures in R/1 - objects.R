# Everything in R is an object.

# (basic) data types:
#   character "a"
#   complex   "1+4i"
#   numeric   "2" or "1.2" (real or decimal)
#   integer   "2L"
#   logical   "TRUE"

typeof("string")
typeof(2L)  # integer
typeof(2.0) # double
typeof(2)   # double
typeof("2")   # character


class(2) # high level - class of obj
typeof(2) # low level - data type

class(c(1, 2, 3))
typeof(c(1, 2, 3))

class(2L) # high level - class of obj
typeof(2L) # low level - data type


class(as.integer(2.6)) # high level - class of obj
typeof(as.integer(2.6)) # low level - data type
as.integer(2.6)

as.integer(2.6) == 2L




c(T, 2L)
class(c(T, 2L)) # all elements are coerced to integer

c(T, 2)
class(c(T, 2)) # all elements are coerced to numeric

c(T, 2L, 3.2)
class(c(T, 2L, 3.2))

x <- c(TRUE, FALSE, TRUE)
test <- c(1.2, x)
test
class(test)

y <- c("2", "three", ".2")

c(x, y, 1.2)
# coercion rule: 
# logical -> integer -> numeric -> complex -> character


as.integer(y)




T
class(T)
as.numeric(T)
as.character(T)
as.logical(T)

as.character("A")
as.logical("A")
as.numeric("A") 





2.3
class(2.3)
as.character(2.3)
as.numeric(2.3)
as.logical(2.3) 
as.logical(999) 
as.logical(0)





