readFile <- function(path){
	data <- read.csv(path, header = TRUE, sep=",", quote="", dec=".", stringsAsFactors=FALSE)
	vec <- as.numeric(data[,1])
	vec
}