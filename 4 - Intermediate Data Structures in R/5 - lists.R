Lists in R

x <- list(1:10)
class(x)

y <- 1:10
length(y)

length(x)

length(x[1]) # 10 ?
x[1] # this is the same as x ??

x[[1]] # member reference
length(x[[1]])
 class(x[[1]])


 
 
List_KH <- list(
  name = "Kunal Haria", 
  b_anything = 1:10, 
  random_name = matrix(data=1:4, 
                       nrow=2, ncol=2, 
                       byrow=TRUE)
 )
 
List_KH
 
class(List_KH)
length(List_KH)
 
List_KH[1]
class(List_KH[1])
length(List_KH[1])
 
List_KH[[ 1 ] ]
class(List_KH[[ 1 ] ])
nchar(List_KH[[1]]) # this is a character string

List_KH[2]

length(List_KH[2])

List_KH[[2]]
length(List_KH[[2]])






paste(List_KH[[1]], "QA123")


?str
str(List_KH)
# diagnostic function => internal structure

List_KH[[3]] <- 9
List_KH

List_KH[[3]] <- matrix(c("Grumpy", "Dopey", "Happy", 
                         "Bashful", "Sneezy", "Sleepy"), 
                       3,2)
List_KH

List_KH[[3]][1,2]

List_KH$random_name[1,2]

List_KH[["random_name"]][1,2]
