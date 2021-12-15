getwd()

setwd("D:/DATA/QA/2021/20211213 - qadmpfr/SharedOneDrive/R-LIVE-backups/R-LIVE-2021-12/9 - Input and Output in R")

?setwd

?file.path
file.path("C:", "Kunal", "users")

file.choose()
filepathfilename <- file.choose()
data <- read.csv(filepathfilename)

filepathfilename

basename(filepathfilename)
dirname(filepathfilename)
paste(dirname(filepathfilename), "data.txt", sep="/")


###### ----------------------------------

TEST <- c(1:10)

# writes an external representation of R objects
save(TEST, file = "temp.txt")

TEST <- "waiting"

load("temp.txt")

Kunal <- matrix(c(1:9),3,3)

save(TEST, Kunal, file = "temp.Rdata")

load("temp.Rdata")

save(TEST, Kunal, file = "temp.Rda")

load("temp.Rda")

.hid <- 999

ls()

ls(all.names = T)

rm(list = ls(all.names= T))



# create some data

(result <- matrix(seq(1:20), 5, 4))
(character_data <- "Very Important Result!")
.hid = 999

save(list = ls(all.names = T),
     file = "Workspace2021.Rdata")

# can do the next line manually
rm(list = ls(all.names= T))
# check the hidden variable has been removed
.hid

load("Workspace2021.Rdata")
.hid

day <- "Wed"

save.image()
# this is a shortcut to repeat the above code:
# save(list = ls(all.names = T),
#      file = "Workspace2021.Rdata"
#     )

###################################

data <- matrix(seq(1:20), 5, 4)

?writeClipboard

writeClipboard(as.character(data))

clip <- readClipboard()
clip
clip <- as.numeric(clip)
clip
clip <- matrix(as.numeric(clip), 5,4)
clip


