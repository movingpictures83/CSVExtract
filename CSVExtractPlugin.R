input <- function(inputfile) {
  parameters <- read.table(inputfile, as.is=T);
  rownames(parameters) <- parameters[,1]
  my_data <<- read.csv(toString(parameters["inputfile",2]), header = T)
  target_value <<- toString(parameters["value", 2]);
  column_number <<- as.integer(parameters["column", 2]);
}

run <- function() {
   my_data <<- my_data[which(my_data[column_number]==target_value),];
}

output <- function(outputfile) {
   write.table(my_data, file=outputfile, sep=",", append=FALSE, row.names=FALSE, col.names=TRUE)
}
