scatterPlot <- function(firstPath, secondPath){
	firstFile <- read.csv(firstPath, header = TRUE, sep=",", quote="", dec=".", stringsAsFactors=FALSE)
	secondFile <- read.csv(secondPath, header = TRUE, sep=",", quote="", dec=".", stringsAsFactors=FALSE)
	dataFirstVar <- as.numeric(firstFile[,1])
	dataSecondVar <- as.numeric(secondFile[,1])
	if(length(dataFirstVar)==length(dataSecondVar)){
		plot(dataFirstVar, dataSecondVar, xlab="Hodnota 1.veliciny", ylab="Hodnota 2.veliciny", main="Scatter plot")
	}else{
		cat('Rozdílný počet hodnot.')
	}
}