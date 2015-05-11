drawHist <- function(vec, widthOfBin, distribution){
	hist(vec, right=FALSE, col="yellow", xlab="Hodnota", ylab="Pravděpodobnost", main = paste("Histogram"), ylim=c(-0,0.11), breaks=seq(min(vec)-widthOfBin,max(vec)+widthOfBin, by=widthOfBin), prob=TRUE)
	if(distribution=="normal"){
		nMean <- mean(vec)
		lVec <- length(vec)
		nSd <- sqrt(((lVec-1)/lVec)*var(vec))
		lines(dnorm(vec, mean=nMean, sd=nSd), col="darkblue")
	}else if(distribution=="uniform"){
		lines(dunif(vec, min=min(vec), max=max(vec), log = FALSE), col="red")
	}else if(distribution=="exponencial"){
		lambda <- (1/mean(vec))
		lines(dexp(vec, lambda), col="darkgreen")
	}
}