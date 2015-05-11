drawQQ <- function(vec, distribution){
	if(distribution=="normal"){
		nMean <- mean(vec)
		lVec <- length(vec)
		nSd <- sqrt(((lVec-1)/lVec)*var(vec))
		y <- pnorm(vec, mean=nMean, sd=nSd)
	}else if(distribution=="uniform"){
		y<- punif(vec, min=min(vec), max=max(vec))
	}else if(distribution=="exponencial"){
		lambda <- (1/mean(vec))
		y<- pexp(vec, lambda)
	}

	qqplot(vec, y, plot.it = TRUE, xlab = "Zadaná data", ylab = "Zvolené teoretické rozdělení", main="Q-Q plot")
}