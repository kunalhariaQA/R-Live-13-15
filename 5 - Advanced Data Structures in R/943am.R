# Factors in R

# special vectors that represent categorical data

# unordered: example: male, female

# ordered (ranked): example: low, medium, high

?factor

hope_answers <- factor(  c("yes", "no","yes", "no","yes", "no")  )

levels(hope_answers)

hope_answers <- factor(  
  
  c("yes", "no","yes", "no","yes", "no")  ,
  
  levels = c("yes", "no")
  
  )

hope_answers


# what if i experience a MAYBE


hope_answers <- factor(  
  
  c("yes", "no","yes", "no","yes", "no", "maybe")  ,
  
  levels = c("yes", "no")
  
)

hope_answers


hope_answers <- factor(  
  
  c(1, 0,1, 0,1,0,999)  ,
  
  levels = c(1, 0),
  
  labels = c("yes", "no")
  
)

class(hope_answers) # "factor"
typeof(hope_answers) # "integer"

# Data Frames

super <-
data.frame(
  # equal length vectors
  #              *named* columns
  name = c("Kal", "Jor", "Kara"),
  age  = c(314, 42, 24),
  loc  = factor(  c("KS", "KS", "US")  )
  
)


super <-
  data.frame(
    # equal length vectors
    #              *named* columns
    name = c("Kal", "Jor", NA),
    age  = c(314, 42, 24),
    loc  = factor(  c("KS", "KS", "US")  ), 
    
    stringsAsFactors = F
    
  )

class(super)  # higher-level features
typeof(super) # internal storage structure



super[1]
super$name




super.list <-
  list(

    name = c("Kal", "Jor", NA),
    age  = c(314, 42, 24),
    loc  = factor(  c("KS", "KS", "US")  )
    
  )
super.list
super

names(super)
names(super.list)


colnames(super)
colnames(super.list)

rownames(super)
rownames(super.list)


me <- data.frame(age=99, name="Kunal", loc="London")

rbind(super, me)

me <- data.frame(name="Kunal", age=99, loc="London")

rbind(super, me)


# the below will not work
# numbers of columns of arguments do not match
me <- data.frame(name="Kunal", age=99, loc="London", comp = "QA")
rbind(super, me)

me <- data.frame(name="Kunal", age=99, loc="London")
super <- rbind(super, me)

super



emoj <- c("happy", "sad", "happy", "angry")

obsv <- data.frame(
  # each column in a data frame vary in their type
  weight  = c(89, 79, 89.5, 75), 
  feeling = emoj
)

obsv

obsv <- rbind(obsv, rbind(c(weight=123.4, feeling="silly")))
# creates a 1-row matrix from a vector

obsv




super
cbind(super, c(10,20,30,40))
ratings <- c(10,20,30,40)
cbind(super, ratings)




obsv <- data.frame(
  weight  = 
    c(90.5, 70.1, 90.5, 101.2, 100), 
  feeling = 
    c("happy", "sad", "happy", "angry", "perfect")
)

obsv

### obsv[rows,cols]
obsv[ , 1 ]
obsv[ , 2 ]
obsv[ 1 ,  ]
obsv[ 1 , 2 ]
obsv[  , -1 ]


1:10
sample(1:10)
?sample
sample(1:10, size = 3)
nrow(obsv)
obsv[sample(1:nrow(obsv), size = 3), "weight" ]

super$age>50

super[  super$age>50 , ]





