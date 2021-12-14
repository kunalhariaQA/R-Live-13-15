# apply()

# allow you to repetitively perform an action on multiple chunks of data

toys <- matrix(c(1, 2, 15, 120, 
                 4, 5, 20, 60,
                 7, 8, 25, 90), 3, 4, byrow = T)

rownames(toys) <- c("Kunal", "Bert", "Charles")
colnames(toys) <- c("Car", "Dolls", "Puzzles", "Robot")

toys[ 1 , ]
sum(toys[ 1 , ])
sum(toys[ 2 , ])
sum(toys[ 3 , ])

for (iter in 1:3) print(sum(toys[iter,]))

apply(X = toys, MARGIN = 1, FUN = sum)
apply(X = toys, MARGIN = 2, FUN = sum)

# how many datapoints are in each row 
apply(X = toys, MARGIN = 1, FUN = length)

# standard deviation of the rows
apply(X = toys, MARGIN = 1, FUN = sd)

# average of the columns
apply(X = toys, MARGIN = 2, FUN = mean)

# shuffle every column
apply(X = toys, MARGIN = 2, FUN = sample)

# udf
st.err <- function(x){
                      sd(x)/sqrt(length(x))
                      }

apply(X = toys, MARGIN = 2, FUN = st.err)

# udf
AVERAGE1n3 <- function(VECKY) mean(c(VECKY[1], VECKY[3]))
apply(toys, MARGIN = 2, AVERAGE1n3)
apply(toys, 2, function (row) mean(c(row[1], row[3])))





# loop through a vector?

vec <- c(1:10)

apply(vec, sum)

dim(vec)

?lapply

lapply(X = vec, FUN = sum)

outbreaks <- c("SwineFlu:2009", 
               "SARS:2003", 
               "Ebola:2016", 
               "NovelCoronavirus:2020", 
               "AvianFlu:2006")

lapply(X = outbreaks, FUN = nchar)

outbreaks.split <- strsplit(outbreaks, split = ":")
str(outbreaks.split)

outbreaks.lowercase <- lapply(X = outbreaks.split, FUN = tolower)
str(outbreaks.lowercase)


select_1st <- function(x) {
  x[1]
}

lapply(X = outbreaks.lowercase, FUN = select_1st)


# sapply
# user-friendly version and wrapper of lapply
# returns a simplified object (an array) if possible 
#     if the data is simplifiable, then a vector or matrix (or array)

lapply(X = vec, FUN = sum)
sapply(X = vec, FUN = sum)

lapply(X = outbreaks, FUN = nchar)
sapply(X = outbreaks, FUN = nchar)

sapply(c(3, 5, 7), seq)
# why a list?
# supports columns of differing lengths (and types)




# vapply(X, FUN, FUN.VALUE, ...)
# FUN.VALUE 
#     *specify* the type of data:
#         expecting (from the iterations)
#         restrict the output of the function
# more robust version of sapply()

vapply(X = vec, 
       FUN = sum,
       FUN.VALUE = numeric(1)
       )

threethings <- function(x) c( min = min(x), mean = mean(x), max = max(x) )
threethings(vec)

vapply(X = vec, 
       function(x) c( min = min(x), mean = mean(x), max = max(x) ),
       FUN.VALUE = numeric(1)
)

vapply(X = vec, 
       function(x) c( min = min(x), mean = mean(x), sum = sum(x)),
       FUN.VALUE = numeric(3)
)

x <- list(a = 1:10, 
          beta = exp(-3:3), 
          logic = c(TRUE,FALSE,FALSE,TRUE))

i39 <- sapply(3:9, seq) 

vapply(i39, fivenum,
       c(Min. = 0, 
         "1st Qu." = 0, 
         Median = 0, 
         "3rd Qu." = 0, 
         Max. = 0))







# when to use?
# 
# sapply()
# easiest one to use
# 
# lapply()
# where you don't require a vector
#
# vapply()
# you get to specify what you are expecting









