dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")
library(rlist)

input <- function(inputfile) {
  pfix = prefix()
  if (length(pfix) != 0) {
     prefix <- paste(pfix, "/", sep="")
  }
  parameters <- read.table(inputfile, as.is=T);
  rownames(parameters) <- parameters[,1]
  my_data <<- read.csv((paste(pfix, toString(parameters["inputfile",2]), sep="")), header = T, check.names=FALSE)
  target_value <<- toString(parameters["value", 2]);
  column_number <<- as.integer(parameters["column", 2]);
}

run <- function() {
   my_data <<- my_data[which(my_data[column_number]==target_value),];
}

output <- function(outputfile) {
   write.table(my_data, file=outputfile, sep=",", append=FALSE, row.names=FALSE, col.names=TRUE)
}
