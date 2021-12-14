Matrices in R

?matrix

matrix (  c(1,2,3,4,5,6) , nrow = 2 , ncol = 3 )

matrix (  c(1,2,3,4,5,6) , nrow = 1 , ncol = 3 )

matrix (  c(1,2,3,4,5,6) , nrow = 3 , ncol = 3 )

dim(  c(1,2,3,4,5,6)  )

dim (matrix (  c(1,2,3,4,5,6) , nrow = 2 , ncol = 3 ) )

height <- 161:180
height <- c(161:180)
height

class(height)
typeof(height)

dim(height) <- c(1,20)
class(height)
typeof(height)

dim(height) <- c(4,5)
height
height[1,1]
height[4,5]
height[5,5]


low <- 161:170
high <- 171:180

cbind(low, high)
rbind(low, high)




matrix (  c(1,2,3,4,5,6) , nrow = 2 , ncol = 3 )
# columnwise by default

matrix (  c(1,2,3,4,5,6) , nrow = 2 , ncol = 3,
          byrow = T )

M <- matrix(
            c(0, 1), 2, 2
     )

M






M <- matrix(
  c(0, 1), 2, 2,
  dimnames=list(
    c("Row1", "Row2"), 
    c("col1", "col2")
  )
)

M


















