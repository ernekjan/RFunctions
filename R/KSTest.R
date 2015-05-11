KSTest <- function(vec, distribution, alpha){

	if(distribution=="normal"){
		nMean <- mean(vec)
		lVec <- length(vec)
		nSd <- sqrt(((lVec-1)/lVec)*var(vec))
		y<- pnorm(vec, mean=nMean, sd=nSd)
	}else if(distribution=="uniform"){
		y <- punif(vec, min=min(vec), max=max(vec))
	}else if(distribution=="exponencial"){
		lambda <- (1/mean(vec))
		y<-pexp(vec, lambda)
	}

	results=ks.test(vec, y, alternative="two.sided", exact=TRUE)
	
	pValue <- results$p.value

	if(pValue < alpha){
		solution <- FALSE
	}else{
		solution <- TRUE
	}

	if(distribution=="normal"){
		variance <- nSd*nSd
		ret <- c(solution, "normalni", nMean, variance, pValue)
	}else if(distribution=="uniform"){
		ret <- c(solution, "rovnomerne", min(vec), max(vec), pValue)
	}else if(distribution=="exponencial"){
		ret <- c(solution, "exponencialni", lambda, 0, pValue)
	}

	ret
}