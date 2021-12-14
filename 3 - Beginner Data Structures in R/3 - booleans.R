# Booleans in R

# conditions => accurate => TRUE

age <- 25
age < 21 # underage
age > 21 # drinking age

TEMP <- age > 21
TRUE == T
TEMP == T

1 < 2
1 <= 2
3 > 4
3 >= 4


# inequality ("not equal")
3 != 4

is_open <- TRUE
is_happy <- F

is_open & is_happy
is_open | is_happy

!is_open

TRUE * 3 + FALSE


prices <- c(10, 20, 30, 40, 50)

prices[   c( T,  F,  T,  T,  F) ]

prices >30

prices[   prices >30 ] 




