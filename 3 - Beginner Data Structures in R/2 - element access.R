# Element Access in R

Victor <- c(10,20,30,40)
Victor[1]
Victor[2]

prices <- c(5, 6, 10, 4)
print(prices) # explicit

(prices <- c(5, 6, 10, 4)) # implicit

prices[3] # obtains the third element

# entry occuring at the last index
prices[4]

length(prices)

prices[length(prices)]

prices.len <- length(prices)
prices[prices.len]

# penultimate entry
prices[length(prices)-1]

prices[  1, 3   ]

c(1, 3)

prices[ c(1, 3)  ]

prices[ -1 ]

prices[ - c(1, 3)  ]


prices <- c(1, 2, 3, 4)
amount <- c(2, 2, 4, 4)

prices * amount   # element-wise multiplication
#  (element-by-element)

prices %*% amount

prices / amount   # element-wise  division


# 3.5	Vector Recycling in R

prices <- c(6, 5, 4, 3, 2, 1)
usd2gbp <- 1.2

usd2gbp * prices  # vectorised operation

prices   <- c(6, 5, 4, 3, 2, 1)
flipflop <- c(+1, -1)
prices * flipflop  

# intuition
length(prices)
length(flipflop)
length(prices)/length(flipflop)
rep(flipflop, length(prices)/length(flipflop))
prices * rep(flipflop, length(prices)/length(flipflop))





prices   <- c(6, 5, 4, 3, 2, 1)
flipflop <- c(+1, -1, +2)
prices * flipflop  


prices   <- c(6, 5, 4, 3, 2, 1)
flipflop <- c(+1, -1, +2, 999)
prices * flipflop  

# if the short vector 
# is not an integer multiple
# of the long vector




