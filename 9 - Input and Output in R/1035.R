# Connecting to files in R

Kunal <- c("123", "456", "789", "happy", "sad")

connec <- file("Kunal_data.txt")

open(connec, "w")

?writeLines
writeLines(text = Kunal, # character vector
           con  = connec)

close(connec)
# cleans up any data associated with
#   the no longer required connection






connec_2 <- file("Kunal_data.txt")
open(connec_2, "r")
lines <- readLines(connec_2)
close(connec_2)
lines






connec_3 <- url("http://jsonplaceholder.typicode.com/users")
open(connec_3, "r")
lines <- readLines(connec_3)
close(connec_3)
lines

lines[5:6]








unlink("Kunal_data.txt")




# create table_KH.txt file

headings <- c("Name", "Age", "Wealth", "Job")
row1 <- c("Tom", "?", "500", "Author")
row2 <- c("Alice", "30", "150", "Architect")
row3 <- c("Bill", "30", "50", "Author")

lines <- c(
  paste(headings, collapse=","), 
  paste(row1, collapse=","), 
  paste(row2, collapse=","),
  paste(row3, collapse=",")
)

#             collapse => concatenate elements into a single string

connection <- file("table_KH.txt")
open(connection, "w")
writeLines(lines, connection)
close(connection)

# view contents of the file created
writeLines(lines)

people <-
  
read.table(
  
  file="table_KH.txt", 
  header=TRUE, 
  sep = ",",
  na.strings = "?",
  stringsAsFactors = F
)

class(people)


people <-
  
  read.csv(
    
    file="table_KH.txt", 
    na.strings = "?",
    stringsAsFactors = F
  )

class(people)
people


write.table(

  people,
  file = "people.txt",
  sep = "\t",
  na = "?"
)
  
write.table(
  
  people,
  file = "people.txt",
  sep = "\t",
  na = "?",
  row.names = F
)  


write.csv(
  
  people,
  file = "people.csv",
  na = "?", 
  # the string to use for missing values in the data.
  row.names = F
)  


# the question mark is not used by most other software
write.csv(
  people,
  file = "people.csv",
  row.names = F
)  


















