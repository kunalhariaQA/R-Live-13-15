# matrices generalize vectors
# arrays generalize matrices

# A vector holds several scalars
# A matrix hold several vectors
# A 3D array holds several matrices
# A 4D array holds several 3D arrays

# 2x3 matrix   x 1
array(c(1,2,3,4,5,6), dim=c(2,3,1))

# 1x3 matrix   x 2
array(c(1,2,3,4,5,6), dim=c(1,3,2))

D3 <- array(c(1:12), dim=c(2,2,3))
dim(D3) # 2x2 matrix   x 3

D3[1,1,1]
D3[1, 1, 2] # the (1,1) element of the matrix D3[,,2]
D3[1, 1, 3] # the (1,1) element of the matrix D3[,,3]

D3
D3[2,c(2,1),2]


# 4D

x <- 2:25
dim(x) <- c(2,2,2,3)
class(x)
x
















