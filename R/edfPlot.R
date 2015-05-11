edfPlot <- function(vec, distribution){
	edf <- ecdf(vec)
	plot(edf,do.points = FALSE, main="Graf empirické distribuční funkce")
	if(distribution=="normal"){
		nMean <- mean(vec)
		lVec <- length(vec)
		nSd <- sqrt(((lVec-1)/lVec)*var(vec))
		lines(pnorm(vec, mean=nMean, sd=nSd), col="darkblue")
	}else if(distribution=="uniform"){
		lines(punif(vec, min=min(vec), max=max(vec), log = FALSE), col="red")
	}else if(distribution=="exponencial"){
		lambda <- (1/mean(vec))
		lines(pexp(vec, lambda), col="darkgreen")
	}
}