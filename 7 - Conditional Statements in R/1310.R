# 7 - Conditional Statements in R

# Relational operators

# "==" -- Equality
# "!=" -- Inequality
# ">" -- Greater than
# "<" -- Less than
# ">=" -- Greater than or equal to
# "<=" -- Less than or equal to

3 == 3

5 != 4 # T
5 == 4 # F

"apple" < "banana"
"apple" < "apples"

TRUE > FALSE


# create data
my_result <- 89
other_199 <- c(66, 81, 77, 90, 95, 54, 78, 90, 80, 71, 96, 70, 81, 71,
               60, 91, 62, 54, 70, 96, 90, 82, 78, 100, 79, 84, 79, 73,
               66, 63, 97, 91, 82, 81, 52, 73, 89, 70, 69, 60, 63, 78, 
               77, 73, 64, 62, 61, 72, 64, 87, 54, 80, 82, 61, 70, 69, 
               61, 88, 90, 74, 80, 59, 75, 65, 83, 70, 83, 83, 81, 80, 
               88, 77, 84, 50, 73, 70, 74, 75, 71, 60, 62, 80, 78, 81, 
               60, 80, 99, 90, 90, 66, 61, 79, 71, 80, 69, 67, 80, 59, 
               72, 76, 74, 70, 74, 96, 73, 90, 92, 75, 77, 63, 94, 67, 
               56, 95, 85, 63, 80, 96, 72, 77, 79, 69, 68, 70, 73, 99, 
               64, 59, 63, 82, 76, 90, 80, 86, 77, 80, 84, 80, 99, 80, 
               68, 77, 51, 67, 86, 60, 61, 57, 62, 86, 86, 75, 75, 62, 
               60, 75, 71, 70, 70, 70, 75, 72, 79, 74, 72, 78, 87, 70, 
               77, 64, 77, 67, 88, 87, 80, 76, 73, 78, 89, 72, 86, 68, 
               84, 64, 73, 73, 64, 70, 92, 91, 65, 69, 99, 76, 94, 72,
               77, 80, 64)
my_class_200 <- c(my_result, other_199)
my_class_200

length(my_class_200)
is.list(my_class_200)
is.vector(my_class_200)
# is. <tab> to see the other functions

my_result > 70

my_class_200 > 70
sum(my_class_200 > 70) # the number of students passing
sum(my_class_200 > 70) / length(my_class_200)

# Logical operators

# "&" -- AND
# "|" -- OR
# "!" -- NOT

my_result > 75 & my_result <= 90

my_class_200 < 65 | my_class_200 > 85
sum(my_class_200 < 65 | my_class_200 > 85)

# A conditional statement 

# is a statement that R uses to decide:

#   which code has to be run 
#     when the true condition is met 

#or which code has NOT to be run 
#     when the true condition is not met.

# if(cond == T){
#               action
#               }

book_genre <- "programming"

if(book_genre == "programming"){
  print("the book is about programming")
}



book_genre <- "painting"

book_genre == "programming" # F

if(book_genre == "programming"){
  
  # this is not run, as the cond is FALSE
  print("the book is about programming")

  }

if(book_genre == "programming"){
  
  # this is not run, as the cond is FALSE
  print("the book is about programming")
  
} else {
  
  print("the first clause was false so we will run this")
  
}



if(book_genre == "painting"){
  
  # this is run, as the cond is T
  print("the book is about painting")
  
} else { # this is not run
  
  print("the first clause was T so we will NOT run this")
  
}


book_genre <- "food"
book_genre <- "painting"
book_genre <- "programming"

if(book_genre == "programming") {
                                    print("it was programming!")
                                  } else    if(book_genre == "painting") {
                                                                          print("it was painting")
                                                                          x <- 99*6
                                                                        } else {
                                                                                  print("who knows?")
                                                                                }






# Vectorised comparisons

expenses <- c(1, 2, 3, 7, 11, 102, 103)

expensense.threshold <- 10

expenses - expensense.threshold > 0

sum(expenses - expensense.threshold > 0)

any(expenses - expensense.threshold > 0)

all(expenses - expensense.threshold > 0)

if(   any(expenses - expensense.threshold > 0)  ) {
  
  print("SOME expense are high")
  
} else {
  print("there are NO high expenses")
}




# Vectorised comparisons to generate *many* results

# "if COND then MANY"

# ifelse(COND, ACTION if T, ACTION if F)

hope <- -3 

ifelse(hope < 0, 
       " 'hope' is a negative number", 
       " 'hope' is either positive or zero")

if(hope < 0) {
              " 'hope' is a negative number"
            } else {
                    " 'hope' is either positive or zero"}

hope <- c(2, 3, -99, NA, NA, +100, NA)  

if(hope < 0) {
  " 'hope' is a negative number"
} else {
  " 'hope' is either positive or zero"}

ifelse(hope < 0, 
       " 'hope' is a negative number", 
       " 'hope' is either positive or zero")


ifelse(hope < 0, 
       " -ve", 
       " >=0")



help(match)


subjects <- c("PR", "MT", "ST", "DS", "ML", "AI")
length(subjects)  


subjects.advanced <- c("MT", "ST", "ML", "AI")
length(subjects.advanced) 
match(subjects, subjects.advanced) 


?is.na

is.na(match(subjects, subjects.advanced))

ifelse(is.na(match(subjects, subjects.advanced)),
       subjects,
       "advanced")








