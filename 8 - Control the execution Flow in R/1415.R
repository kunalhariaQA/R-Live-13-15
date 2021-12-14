# Explicitly repeating operations

# for(iterator in set of values){
#                                 do a thing
#                                }


for( i in c(2,3) ){
  print(i)
}

for( i in 2:5 ){
  xyz <- i*2
  temp <- paste(xyz)
  print(temp)
}

# nesting
for(number_KH in 2:5){
  for(  alphabet in c('b', 'c', 'd', 'e')  ){
    print(paste(number_KH,alphabet))
  }
}

# where possible, the results object 
#   should be: initialized with appropriate dimensions
output_vector <- 0

for(number_KH in 2:5){
  for(  alphabet in c('b', 'c', 'd', 'e')  ){
    # instead of printing to screen
    temp_output <- paste(number_KH,alphabet)
    output_vector <- c(output_vector, temp_output)
  }
}

print(output_vector)



prices <- c(10, 230, 5)
sales  <- c(0.1, 0.15, 0.2)

sum(prices, sales)

discounts <- matrix(c(10, 20, 30, 
                      15, 30, 45, 
                      20, 40, 60), 3, 3)

sum(discounts)

sum(as.vector(discounts))


df <- data.frame( replicate( 10, rnorm(10) ) )
df
df_KH <- df

for (i in 1:10) {
  for (j in 1:10) {
    # algebraic operation: element by element
    df_KH[i,j] <- df_KH[i,j] + 10*cos(0.5*pi)
    # BAD loop: "growing" data # e.g. add a signal 
  }
}

# vectorised (constructs of the loop are "implicit")
df_KH <- df_KH + 10*cos(0.5*pi)





# EXECUTION TIME

df <- data.frame( replicate( 100, rnorm(100) ) )
df_KH <- df

system.time(
  for (i in 1:100) {
    for (j in 1:100) {
      df_KH[i,j] <- df_KH[i,j] + cos(0.5*pi)
    }
  }
)

df_KH <- df

system.time(
  df_KH <- df_KH + cos(0.5*pi)
)









# EXECUTION TIME

df <- data.frame( replicate( 500, rnorm(500) ) )
df_KH <- df

system.time(
  for (i in 1:500) {
    for (j in 1:500) {
      df_KH[i,j] <- df_KH[i,j] + cos(0.5*pi)
    }
  }
)

df_KH <- df # overwritting back to origin

system.time(
  df_KH <- df_KH + cos(0.5*pi)
)
